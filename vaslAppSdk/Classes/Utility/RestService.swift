//
//  RestWebService.swift
//  JikOPic
//
//  Created by Ali Shatergholi on 7/2/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import UIKit
import SystemConfiguration
import Foundation
import Alamofire

struct RestService {
    
    typealias CompletionProtoHandler    = (_ result : Data?,_ error : String?) -> Void
    
    typealias CompletiontokenHandler = (_ force : Bool?,_ token : TokenInfoModel?) -> Void
    
    private static let ouathUrl                  = baseUrl + "/oauth/token"
    
    public static var baseUrl                    = ""
    public static var appid                      = ""
    public static var clientId                   = ""
    public static var clientSecret               = ""
    public static var username                   = ""
    public static var password                   = ""
    
    fileprivate static let boundary = "----WebKitFormBoundary7MA4YWxkTrZu0gW"
    
    fileprivate static func getAppIdString() -> String {
        return appid
    }
    
    enum contentType {
        case Ouath,protocolBuffer,JSON,MultiPart
    }
    
    fileprivate static func addHeader(_ type : contentType) -> Dictionary<String,String> {
        var params = Dictionary<String,String>()
        switch type {
        case .Ouath:
            let credentialData = "\(clientId):\(clientSecret)".data(using: String.Encoding.utf8)!
            let base64Credentials = credentialData.base64EncodedString(options: [])
            
            params.updateValue("Basic \(base64Credentials)"                         , forKey: "Authorization")
            params.updateValue("application/json"                                   , forKey: "Accept")
            break
        case .MultiPart:
            params.updateValue("multipart/form-data; boundary=".appending(boundary), forKey: "content-type")
            params.updateValue("multipart/form-data; boundary=".appending(boundary), forKey: "accept")
            break
        case .JSON:
            params.updateValue("application/json"                                   , forKey:  "content-type")
            params.updateValue("application/json"                                   , forKey:  "accept")
            break
        default:
            params.updateValue("application/x-www-form-urlencoded"                  , forKey:  "content-type")
            params.updateValue("application/octet-stream"                           , forKey:  "accept")
            break
        }
        if type != .Ouath {
            let token = TokenInfoModel.init()
            params.updateValue("Bearer " + token.accessToken                  , forKey:  "Authorization")
        }
        params.updateValue("fa"                                           , forKey:  "accept-language")
        params.updateValue("no-cache"                                     , forKey:  "cache-control")
        params.updateValue("ios"                                          , forKey:  "os")
        params.updateValue(getAppIdString()                               , forKey:  "appid")
        return params
    }
    
    fileprivate static func addBody(_ parameters : Dictionary<String,String>) -> String {
        var body = ""
        if (parameters.count == 0) {
            return ""
        }
        for (key, value) in parameters {
            
            
            
            
            if let encodedKey = key.URLEncodedString() {
                if let encodedValue = value.URLEncodedString() {
                    if !body.isEmpty {
                        body.append("&")
                    }
                    body.append("\(encodedKey)=\(encodedValue)")
                }
            }
        }
        return body
    }
    
    fileprivate static func addBodyBoundary(parameters: Dictionary<String,String>,_ file : NSData,_ filepath : String) -> NSData {
        let body = NSMutableData()
        if (parameters.count > 0) {
            for (key, value) in parameters {
                if let encodedKey = key.URLEncodedString() {
                    if let encodedValue = value.URLEncodedString() {
                        body.appendString(string: "--\(boundary)\r\n")
                        body.appendString(string: "Content-Disposition: form-data; name=\"\(encodedKey)\"\r\n\r\n")
                        body.appendString(string: "\(encodedValue)\r\n")
                    }
                }
            }
        }
        body.appendString(string: "--\(boundary)\r\n")
        body.appendString(string: "Content-Disposition: form-data; name=\"file\"; filename=\"file\"\r\n")
        body.appendString(string: "Content-Type: \(filepath.mimeType())\r\n\r\n")
        body.append(file as Data)
        body.appendString(string: "\r\n")
        body.appendString(string: "--\(boundary)--\r\n")
        return body
    }
    
    public static func get(url: String, completion: @escaping CompletionProtoHandler,_ forceToken : Bool,_ type : contentType = .protocolBuffer) {
        if !isInternetAvailable() {
            completion(nil,"error internet connection")
        }
        getaccessToken(forceToken) { (success, token) in
            if success! {
                if let url = URL(string: url) {
                    let request = Alamofire.request(url, method: .get , parameters: nil, headers: addHeader(type))
                    if let request = request as DataRequest? {
                        let start = CACurrentMediaTime()
                        request.response(completionHandler: { (webResult) in
                            let end = CACurrentMediaTime()
                            let elapsedTime : TimeInterval = end - start
                            let response                   = webResult.response
                            guard (webResult.data != nil) , webResult.error == nil else {
                                // check for fundamental networking error
                                if let error = webResult.error {
                                    Utils.LogData(debug: true, className: "RestWebService", message: String(describing: error))
                                    completion(nil,error.description)
                                }
                                return
                            }
                            if let httpStatus = response, httpStatus.statusCode != 200 {
                                Utils.LogData(debug: true, className: "RestWebService", message: "statusCode should be 200, but is \(httpStatus.statusCode)")
                                completion(nil,"error server connection")
                                return
                            }
                            if let data = webResult.data {
                                Utils.LogData(debug: true, className: "RestWebService", message: "Url : \(url) time : \(String(format: "%.1f", elapsedTime)) - size \(calcDataSize(receivedata: data))")
                                completion(data,nil)
                            }
                        })
                    }
                }
            }
        }
    }
    
    public static func post(url: String,_ parameters : Dictionary<String,String>, completion: @escaping CompletionProtoHandler,_ force : Bool,_ type : contentType = .protocolBuffer){
        if !isInternetAvailable() {
            completion(nil,"error internet connection")
        }
        getaccessToken(force) { (success, token) in
            if success! {
                if let url = URL(string: url) {
                    let request = Alamofire.request(url, method: .post, parameters: parameters, headers: addHeader(type))
                    if let request = request as DataRequest? {
                        let start = CACurrentMediaTime()
                        request.response(completionHandler: { (webResult) in
                            let end = CACurrentMediaTime()
                            let elapsedTime : TimeInterval = end - start
                            let response                   = webResult.response
                            guard (webResult.data != nil) , webResult.error == nil else {
                                // check for fundamental networking error
                                if let error = webResult.error {
                                    Utils.LogData(debug: true, className: "RestWebService", message: String(describing: error))
                                    
                                    
                                    completion(nil,error.description)
                                }
                                return
                            }
                            if let httpStatus = response, httpStatus.statusCode != 200 {
                                Utils.LogData(debug: true, className: "RestWebService", message: "statusCode should be 200, but is \(httpStatus.statusCode)")
                                completion(nil,"error server connection")
                                return
                            }
                            if let data = webResult.data {
                                Utils.LogData(debug: true, className: "RestWebService", message: "Url : \(url) time : \(String(format: "%.1f", elapsedTime)) - size \(calcDataSize(receivedata: data))")
                                completion(data,nil)
                            }
                        })
                    }
                } else {
                    completion(nil,"error server connection")
                }
            }
        }
    }
    
    fileprivate static func isInternetAvailable() -> Bool {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        var flags = SCNetworkReachabilityFlags()
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
            return false
        }
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        return (isReachable && !needsConnection)
    }
    
    fileprivate static func calcDataSize(receivedata : Data) -> String {
        let bcf = ByteCountFormatter()
        bcf.allowedUnits = [.useKB] // optional: restricts the units to MB only
        bcf.countStyle = .file
        return "\(receivedata.count) bytes : \(bcf.string(fromByteCount: Int64(receivedata.count)))"
    }
    
    private static func getaccessToken(_ force : Bool , completion: @escaping CompletiontokenHandler) {
        let token = TokenInfoModel.init()
        if let url = URL(string: ouathUrl) {
            print("url \(url)")
            if (!token.accessToken.isEmpty && !force) {
                completion(true,token)
            } else {
                var parameters = Dictionary<String,String>()
                parameters.updateValue(username                                 , forKey: "username")
                parameters.updateValue(password                                 , forKey: "password")
                parameters.updateValue("password"                               , forKey: "grant_type")
                print(parameters)
                let request = Alamofire.request(url, method: .post, parameters: parameters, headers: addHeader(.Ouath))
                if let request = request as DataRequest? {
                    request.response(completionHandler: { (webResult) in
                        let response                   = webResult.response
                        guard (webResult.data != nil) , webResult.error == nil else {
                            if let error = webResult.error {
                                Utils.LogData(debug: true, className: "RestWebService", message: String(describing: error))
                            }
                            completion(false,nil)
                            return
                        }
                        if let httpStatus = response, httpStatus.statusCode != 200 {
                            Utils.LogData(debug: true, className: "RestWebService", message: "statusCode should be 200, but is \(httpStatus.statusCode)" + " Error : ".appending(webResult.error?.description ?? "not define"))
                            completion(false,nil)
                            return
                        }
                        if let data = webResult.data {
                            do {
                                let responseDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                                let token = TokenInfoModel.init()
                                token.resetToken()
                                if token.insertToken(responseDictionary) {
                                    completion(true,token)
                                }
                            }catch{
                                Utils.LogData(debug: false, className: "RestWebService", message: "exception during serialization json")
                                completion(false,nil)
                            }
                        }
                    })
                }
            }
        }
    }
}
extension String {
    func URLEncodedString() -> String? {
        let escapedString = self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        return escapedString
    }
    func URLDecodedString() -> String? {
        return self.removingPercentEncoding
    }
}

extension Error {
    var code: Int { return (self as NSError).code }
    var domain: String { return (self as NSError).domain }
    var description: String { return (self as NSError).description }
}

extension NSMutableData {
    func appendString(string: String) {
        let data = string.data(using: String.Encoding.utf8, allowLossyConversion: true)
        append(data!)
    }
}
