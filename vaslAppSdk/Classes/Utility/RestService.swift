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
    
    typealias CompletionMultipartHandler = (_ result : NSDictionary , _ error : String?) -> Void
    
   
    
    
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
            params.updateValue("application/json"                                  , forKey: "accept")
            break
        case .JSON:
            params.updateValue("application/json"                  , forKey:  "content-type")
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
    fileprivate static func addNounceHeader(_ type : contentType) -> Dictionary<String,String> {
        var params = Dictionary<String,String>()
        let generator = NonceGenerator()
        var signature = String()
        var cNonce = String()
        var cTime = Int64()
        var requestId = String()
        if let sig = generator.generateSignature() as String? {
            signature = sig
            cNonce = generator.cNonce
            cTime = generator.cTime
            requestId = generator.requestId
      
            
        }
        switch type {
        case .Ouath:
            let credentialData = "\(clientId):\(clientSecret)".data(using: String.Encoding.utf8)!
            let base64Credentials = credentialData.base64EncodedString(options: [])
            
            params.updateValue("Basic \(base64Credentials)"                         , forKey: "Authorization")
            params.updateValue("application/json"                                   , forKey: "Accept")
            break
        case .MultiPart:
            params.updateValue("multipart/form-data; boundary=".appending(boundary), forKey: "content-type")
            params.updateValue("application/json"                                  , forKey: "accept")
            break
        case .JSON:
            params.updateValue("application/json"                  , forKey:  "content-type")
            params.updateValue("application/json"                                   , forKey:  "accept")
            break
        default:
            params.updateValue("application/x-www-form-urlencoded"                  , forKey:  "content-type")
            params.updateValue("application/octet-stream"                           , forKey:  "accept")
            params.updateValue(signature                                            , forKey: "signature")
            params.updateValue(clientId                                             , forKey: "clientId")
            params.updateValue(cNonce                                                 , forKey: "cNonce")
            params.updateValue(String(cTime)                                           , forKey: "cTime")
            params.updateValue(requestId                                           , forKey: "requestId")
            
            
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
    
    public static func post(url: String,_ parameters : Dictionary<String,Any>, completion: @escaping CompletionProtoHandler,_ force : Bool,_ type : contentType = .protocolBuffer){
        if !isInternetAvailable() {
            completion(nil,"error internet connection")
        }
        getaccessToken(force) { (success, token) in
            if success! {
                if let urls = URL(string: url) {
                    
                    var headers = Dictionary<String,String>()
                    
                    
                    if url.contains("subscriber/operators/register") {
                        
                        headers = addNounceHeader(type)
                        
                    }else{
                        
                        headers = addHeader(type)
                        
                    }
                    let request = Alamofire.request(urls, method: .post, parameters: parameters, headers: headers)
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
    
    public static func postMultiPart(url: String,_ parameters : Dictionary<String,Any>, completion: @escaping CompletionProtoHandler,_ force : Bool,_ type : contentType = .MultiPart){
    
        if !isInternetAvailable() {
            completion(nil,"error internet connection")
        }
        getaccessToken(force) { (success, token) in
            if success! {
                if let url = URL(string: url){
                    let newdic : Dictionary<String,Any>!
                    newdic = parameters
                    let start = CACurrentMediaTime()
                    Alamofire.upload(multipartFormData: { multipartFormData in
            
                        for (key,value) in newdic{
                            
                            switch value{
                                
                            case is Array<Dictionary<String,Any>>:
                                
                                let Datas : Array<Dictionary<String,String>> = value as! Array<Dictionary<String, String>>
                                if Datas.count > 0 {
                                    for dict in Datas {
                                        var i = 0
                                        print(dict.count)
                                        while(i < dict.count){
                                            for (keys,value) in dict {
                                                multipartFormData.append((keys.data(using: .utf8))!, withName: "\(key)[\(i)].key", mimeType: "text/plain")
                                                multipartFormData.append((value.data(using: .utf8))!, withName: "\(key)[\(i)].value", mimeType: "text/plain")
                                                i += 1
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }else{
                                    
                                    print("empty data field")
                                }
                                break
                                
                            case is NSData:
                                let data : NSData? = value as? NSData
                                
                                if data?.length != 0 {
                                    let dataType = Swime.mimeType(data: data! as Data)!
                                    
                                    switch dataType.type {
                                    case .jpg:
                                        multipartFormData.append(data! as Data, withName: "\(key)", fileName: "\(key)", mimeType: dataType.mime)
                                        break
                                    
                                    case .png:
                                        multipartFormData.append(data! as Data, withName: "\(key)", fileName: "\(key)", mimeType: dataType.mime)
                                        break
                                    case .mp4:
                                        multipartFormData.append(data! as Data, withName: "\(key)", fileName: "\(key).\(dataType.ext)", mimeType: dataType.mime)
                                        break
                                        
                                    case .mov:
                                        multipartFormData.append(data! as Data, withName: "\(key)", fileName: "\(key).\(dataType.ext)", mimeType: dataType.mime)
                                        break
                                        
                                    default:
                                        break
                                        
                                    }
                                }else{

                                   
                                }
                              
                         

                                break
                                
                            default:
                                  multipartFormData.append("\(value)".data(using: .utf8)!, withName: key)
                            }

                        }
                      
                    },
                                     usingThreshold: UInt64.init(),
                                     to: url,
                                     method: .post,
                                     headers: addHeader(type),
                                     encodingCompletion: { encodingResult in
                                        let end = CACurrentMediaTime()
                                        let elapsedTime : TimeInterval = end - start
                                        switch encodingResult {
                                        case .success(let upload, _, _):
                                            upload.responseJSON { response in
                                                guard (response.data != nil) , response.error == nil else {
                                                    // check for fundamental networking error
                                                    if let error = response.error {
                                                        Utils.LogData(debug: true, className: "RestWebService", message: String(describing: error))
                                                        
                                                        completion(nil,error.description)
                                                    }
                                                    return
                                                }
                                             
                                                if response.response?.statusCode != 200 {
                                                    Utils.LogData(debug: true, className: "RestWebService", message:"status code should be 200 but is \(String(describing: response.response?.statusCode))")
                                                    completion(nil,"error server connection")
                                                    return
                                                }
                                                if response.response?.statusCode == 200 {
                                                    if let data = response.data {
                                                        Utils.LogData(debug: true, className: "RestWebService", message: "Url : \(url) time : \(String(format: "%.1f", elapsedTime)) - size \(calcDataSize(receivedata: data))")
                                                     
                                                    }
                                                    let dict : NSDictionary = response.result.value as! NSDictionary
                                                    do{
                                                        let datas = try JSONSerialization.data(withJSONObject: dict, options: [])
                                                        completion(datas,"success")
                                                        
                                                    }catch{
                                                        
                                                    }
                                                
                                                    return
                                                }
                                             
                                             
                                            }
                                        case .failure(let encodingError):
                                           Utils.LogData(debug: true, className: "RestWebService", message: encodingError.description)
                                          // completion(nil,encodingError.description)
                                        }
                                        
                                        
                    })
                    
                    

                }
                
            }
        }
        

    }
    
    public static func postJson(url: String,_ parameters : [String:Any] , completion: @escaping CompletionProtoHandler,_ force : Bool,_ type : contentType = .JSON){
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
public enum FileType {
    case amr
    case ar
    case avi
    case bmp
    case bz2
    case cab
    case cr2
    case crx
    case deb
    case dmg
    case eot
    case epub
    case exe
    case flac
    case flif
    case flv
    case gif
    case gz
    case ico
    case jpg
    case jxr
    case lz
    case m4a
    case m4v
    case mid
    case mkv
    case mov
    case mp3
    case mp4
    case mpg
    case msi
    case mxf
    case nes
    case ogg
    case opus
    case otf
    case pdf
    case png
    case ps
    case psd
    case rar
    case rpm
    case rtf
    case sevenZ // 7z, Swift does not let us define enum that starts with a digit
    case sqlite
    case swf
    case tar
    case tif
    case ttf
    case wav
    case webm
    case webp
    case wmv
    case woff
    case woff2
    case xpi
    case xz
    case z
    case zip
}

public struct Mimes {
    /// Mime type string representation. For example "application/pdf"
    public let mime: String
    
    /// Mime type extension. For example "pdf"
    public let ext: String
    
    /// Mime type shorthand representation. For example `.pdf`
    public let type: FileType
    
    /// Number of bytes required for `MimeType` to be able to check if the
    /// given bytes match with its mime type magic number specifications.
    fileprivate let bytesCount: Int
    
    /// A function to check if the bytes match the `MimeType` specifications.
    fileprivate let matches: ([UInt8], Swime) -> Bool
    
    ///  Check if the given bytes matches with `MimeType`
    ///  it will check for the `bytes.count` first before delegating the
    ///  checker function to `matches` property
    ///
    ///  - parameter bytes: Bytes represented with `[UInt8]`
    ///  - parameter swime: Swime instance
    ///
    ///  - returns: Bool
    public func matches(bytes: [UInt8], swime: Swime) -> Bool {
        return bytes.count >= bytesCount && matches(bytes, swime)
    }
    
    /// List of all supported `MimeType`s
    public static let all: [Mimes] = [
        Mimes(
            mime: "image/jpeg",
            ext: "jpg",
            type: .jpg,
            bytesCount: 3,
            matches: { bytes, _ in
                return bytes[0...2] == [0xFF, 0xD8, 0xFF]
        }
        ),
        Mimes(
            mime: "image/png",
            ext: "png",
            type: .png,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x89, 0x50, 0x4E, 0x47]
        }
        ),
        Mimes(
            mime: "image/gif",
            ext: "gif",
            type: .gif,
            bytesCount: 3,
            matches: { bytes, _ in
                return bytes[0...2] == [0x47, 0x49, 0x46]
        }
        ),
        Mimes(
            mime: "image/webp",
            ext: "webp",
            type: .webp,
            bytesCount: 12,
            matches: { bytes, _ in
                return bytes[8...11] == [0x57, 0x45, 0x42, 0x50]
        }
        ),
        Mimes(
            mime: "image/flif",
            ext: "flif",
            type: .flif,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x46, 0x4C, 0x49, 0x46]
        }
        ),
        Mimes(
            mime: "image/x-canon-cr2",
            ext: "cr2",
            type: .cr2,
            bytesCount: 10,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x49, 0x49, 0x2A, 0x00] || bytes[0...3] == [0x4D, 0x4D, 0x00, 0x2A]) &&
                    (bytes[8...9] == [0x43, 0x52])
        }
        ),
        Mimes(
            mime: "image/tiff",
            ext: "tif",
            type: .tif,
            bytesCount: 4,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x49, 0x49, 0x2A, 0x00]) ||
                    (bytes[0...3] == [0x4D, 0x4D, 0x00, 0x2A])
        }
        ),
        Mimes(
            mime: "image/bmp",
            ext: "bmp",
            type: .bmp,
            bytesCount: 2,
            matches: { bytes, _ in
                return bytes[0...1] == [0x42, 0x4D]
        }
        ),
        Mimes(
            mime: "image/vnd.ms-photo",
            ext: "jxr",
            type: .jxr,
            bytesCount: 3,
            matches: { bytes, _ in
                return bytes[0...2] == [0x49, 0x49, 0xBC]
        }
        ),
        Mimes(
            mime: "image/vnd.adobe.photoshop",
            ext: "psd",
            type: .psd,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x38, 0x42, 0x50, 0x53]
        }
        ),
        Mimes(
            mime: "application/epub+zip",
            ext: "epub",
            type: .epub,
            bytesCount: 58,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x50, 0x4B, 0x03, 0x04]) &&
                    (bytes[30...57] == [
                        0x6D, 0x69, 0x6D, 0x65, 0x74, 0x79, 0x70, 0x65, 0x61, 0x70, 0x70, 0x6C,
                        0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x65, 0x70, 0x75, 0x62,
                        0x2B, 0x7A, 0x69, 0x70
                        ])
        }
        ),
        
        // Needs to be before `zip` check
        // assumes signed .xpi from addons.mozilla.org
        Mimes(
            mime: "application/x-xpinstall",
            ext: "xpi",
            type: .xpi,
            bytesCount: 50,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x50, 0x4B, 0x03, 0x04]) &&
                    (bytes[30...49] == [
                        0x4D, 0x45, 0x54, 0x41, 0x2D, 0x49, 0x4E, 0x46, 0x2F, 0x6D, 0x6F, 0x7A,
                        0x69, 0x6C, 0x6C, 0x61, 0x2E, 0x72, 0x73, 0x61
                        ])
        }
        ),
        Mimes(
            mime: "application/zip",
            ext: "zip",
            type: .zip,
            bytesCount: 50,
            matches: { bytes, _ in
                return (bytes[0...1] == [0x50, 0x4B]) &&
                    (bytes[2] == 0x3 || bytes[2] == 0x5 || bytes[2] == 0x7) &&
                    (bytes[3] == 0x4 || bytes[3] == 0x6 || bytes[3] == 0x8)
        }
        ),
        Mimes(
            mime: "application/x-tar",
            ext: "tar",
            type: .tar,
            bytesCount: 262,
            matches: { bytes, _ in
                return bytes[257...261] == [0x75, 0x73, 0x74, 0x61, 0x72]
        }
        ),
        Mimes(
            mime: "application/x-rar-compressed",
            ext: "rar",
            type: .rar,
            bytesCount: 7,
            matches: { bytes, _ in
                return (bytes[0...5] == [0x52, 0x61, 0x72, 0x21, 0x1A, 0x07]) &&
                    (bytes[6] == 0x0 || bytes[6] == 0x1)
        }
        ),
        Mimes(
            mime: "application/gzip",
            ext: "gz",
            type: .gz,
            bytesCount: 3,
            matches: { bytes, _ in
                return bytes[0...2] == [0x1F, 0x8B, 0x08]
        }
        ),
        Mimes(
            mime: "application/x-bzip2",
            ext: "bz2",
            type: .bz2,
            bytesCount: 3,
            matches: { bytes, _ in
                return bytes[0...2] == [0x42, 0x5A, 0x68]
        }
        ),
        Mimes(
            mime: "application/x-7z-compressed",
            ext: "7z",
            type: .sevenZ,
            bytesCount: 6,
            matches: { bytes, _ in
                return bytes[0...5] == [0x37, 0x7A, 0xBC, 0xAF, 0x27, 0x1C]
        }
        ),
        Mimes(
            mime: "application/x-apple-diskimage",
            ext: "dmg",
            type: .dmg,
            bytesCount: 2,
            matches: { bytes, _ in
                return bytes[0...1] == [0x78, 0x01]
        }
        ),
        Mimes(
            mime: "video/mp4",
            ext: "mp4",
            type: .mp4,
            bytesCount: 28,
            matches: { bytes, _ in
                return (bytes[0...2] == [0x00, 0x00, 0x00] && (bytes[3] == 0x18 || bytes[3] == 0x20) && bytes[4...7] == [0x66, 0x74, 0x79, 0x70]) ||
                    (bytes[0...3] == [0x33, 0x67, 0x70, 0x35]) ||
                    (bytes[0...11] == [0x00, 0x00, 0x00, 0x1C, 0x66, 0x74, 0x79, 0x70, 0x6D, 0x70, 0x34, 0x32] &&
                        bytes[16...27] == [0x6D, 0x70, 0x34, 0x31, 0x6D, 0x70, 0x34, 0x32, 0x69, 0x73, 0x6F, 0x6D]) ||
                    (bytes[0...11] == [0x00, 0x00, 0x00, 0x1C, 0x66, 0x74, 0x79, 0x70, 0x69, 0x73, 0x6F, 0x6D]) ||
                    (bytes[0...11] == [0x00, 0x00, 0x00, 0x1C, 0x66, 0x74, 0x79, 0x70, 0x6D, 0x70, 0x34, 0x32, 0x00, 0x00, 0x00, 0x00])
        }
        ),
        Mimes(
            mime: "video/x-m4v",
            ext: "m4v",
            type: .m4v,
            bytesCount: 11,
            matches: { bytes, _ in
                return bytes[0...10] == [0x00, 0x00, 0x00, 0x1C, 0x66, 0x74, 0x79, 0x70, 0x4D, 0x34, 0x56]
        }
        ),
        Mimes(
            mime: "audio/midi",
            ext: "mid",
            type: .mid,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x4D, 0x54, 0x68, 0x64]
        }
        ),
        Mimes(
            mime: "video/x-matroska",
            ext: "mkv",
            type: .mkv,
            bytesCount: 4,
            matches: { bytes, swime in
                guard bytes[0...3] == [0x1A, 0x45, 0xDF, 0xA3] else {
                    return false
                }
                
                let _bytes = Array(swime.readBytes(count: 4100)[4 ..< 4100])
                var idPos = -1
                
                for i in 0 ..< (_bytes.count - 1) {
                    if _bytes[i] == 0x42 && _bytes[i + 1] == 0x82 {
                        idPos = i
                        break;
                    }
                }
                
                guard idPos > -1 else {
                    return false
                }
                
                let docTypePos = idPos + 3
                let findDocType: (String) -> Bool = { type in
                    for i in 0 ..< type.count {
                        let index = type.index(type.startIndex, offsetBy: i)
                        let scalars = String(type[index]).unicodeScalars
                        
                        if _bytes[docTypePos + i] != UInt8(scalars[scalars.startIndex].value) {
                            return false
                        }
                    }
                    
                    return true
                }
                
                return findDocType("matroska")
        }
        ),
        Mimes(
            mime: "video/webm",
            ext: "webm",
            type: .webm,
            bytesCount: 4,
            matches: { bytes, swime in
                guard bytes[0...3] == [0x1A, 0x45, 0xDF, 0xA3] else {
                    return false
                }
                
                let _bytes = Array(swime.readBytes(count: 4100)[4 ..< 4100])
                var idPos = -1
                
                for i in 0 ..< (_bytes.count - 1) {
                    if _bytes[i] == 0x42 && _bytes[i + 1] == 0x82 {
                        idPos = i
                        break;
                    }
                }
                
                guard idPos > -1 else {
                    return false
                }
                
                let docTypePos = idPos + 3
                let findDocType: (String) -> Bool = { type in
                    for i in 0 ..< type.count {
                        let index = type.index(type.startIndex, offsetBy: i)
                        let scalars = String(type[index]).unicodeScalars
                        
                        if _bytes[docTypePos + i] != UInt8(scalars[scalars.startIndex].value) {
                            return false
                        }
                    }
                    
                    return true
                }
                
                return findDocType("webm")
        }
        ),
        Mimes(
            mime: "video/quicktime",
            ext: "mov",
            type: .mov,
            bytesCount: 8,
            matches: { bytes, _ in
                return bytes[0...7] == [0x00, 0x00, 0x00, 0x14, 0x66, 0x74, 0x79, 0x70]
        }
        ),
        Mimes(
            mime: "video/x-msvideo",
            ext: "avi",
            type: .avi,
            bytesCount: 11,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x52, 0x49, 0x46, 0x46]) &&
                    (bytes[8...10] == [0x41, 0x56, 0x49])
        }
        ),
        Mimes(
            mime: "video/x-ms-wmv",
            ext: "wmv",
            type: .wmv,
            bytesCount: 10,
            matches: { bytes, _ in
                return bytes[0...9] == [0x30, 0x26, 0xB2, 0x75, 0x8E, 0x66, 0xCF, 0x11, 0xA6, 0xD9]
        }
        ),
        Mimes(
            mime: "video/mpeg",
            ext: "mpg",
            type: .mpg,
            bytesCount: 4,
            matches: { bytes, _ in
                guard bytes[0...2] == [0x00, 0x00, 0x01]  else {
                    return false
                }
                
                let hexCode = String(format: "%2X", bytes[3])
                
                return hexCode.first != nil && hexCode.first! == "B"
        }
        ),
        Mimes(
            mime: "audio/mpeg",
            ext: "mp3",
            type: .mp3,
            bytesCount: 3,
            matches: { bytes, _ in
                return (bytes[0...2] == [0x49, 0x44, 0x33]) ||
                    (bytes[0...1] == [0xFF, 0xFB])
        }
        ),
        Mimes(
            mime: "audio/m4a",
            ext: "m4a",
            type: .m4a,
            bytesCount: 11,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x4D, 0x34, 0x41, 0x20]) ||
                    (bytes[4...10] == [0x66, 0x74, 0x79, 0x70, 0x4D, 0x34, 0x41])
        }
        ),
        
        // Needs to be before `ogg` check
        Mimes(
            mime: "audio/opus",
            ext: "opus",
            type: .opus,
            bytesCount: 36,
            matches: { bytes, _ in
                return bytes[28...35] == [0x4F, 0x70, 0x75, 0x73, 0x48, 0x65, 0x61, 0x64]
        }
        ),
        Mimes(
            mime: "audio/ogg",
            ext: "ogg",
            type: .ogg,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x4F, 0x67, 0x67, 0x53]
        }
        ),
        Mimes(
            mime: "audio/x-flac",
            ext: "flac",
            type: .flac,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x66, 0x4C, 0x61, 0x43]
        }
        ),
        Mimes(
            mime: "audio/x-wav",
            ext: "wav",
            type: .wav,
            bytesCount: 12,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x52, 0x49, 0x46, 0x46]) &&
                    (bytes[8...11] == [0x57, 0x41, 0x56, 0x45])
        }
        ),
        Mimes(
            mime: "audio/amr",
            ext: "amr",
            type: .amr,
            bytesCount: 6,
            matches: { bytes, _ in
                return bytes[0...5] == [0x23, 0x21, 0x41, 0x4D, 0x52, 0x0A]
        }
        ),
        Mimes(
            mime: "application/pdf",
            ext: "pdf",
            type: .pdf,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x25, 0x50, 0x44, 0x46]
        }
        ),
        Mimes(
            mime: "application/x-msdownload",
            ext: "exe",
            type: .exe,
            bytesCount: 2,
            matches: { bytes, _ in
                return bytes[0...1] == [0x4D, 0x5A]
        }
        ),
        Mimes(
            mime: "application/x-shockwave-flash",
            ext: "swf",
            type: .swf,
            bytesCount: 3,
            matches: { bytes, _ in
                return (bytes[0] == 0x43 || bytes[0] == 0x46) && (bytes[1...2] == [0x57, 0x53])
        }
        ),
        Mimes(
            mime: "application/rtf",
            ext: "rtf",
            type: .rtf,
            bytesCount: 5,
            matches: { bytes, _ in
                return bytes[0...4] == [0x7B, 0x5C, 0x72, 0x74, 0x66]
        }
        ),
        Mimes(
            mime: "application/font-woff",
            ext: "woff",
            type: .woff,
            bytesCount: 8,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x77, 0x4F, 0x46, 0x46]) &&
                    ((bytes[4...7] == [0x00, 0x01, 0x00, 0x00]) || (bytes[4...7] == [0x4F, 0x54, 0x54, 0x4F]))
        }
        ),
        Mimes(
            mime: "application/font-woff",
            ext: "woff2",
            type: .woff2,
            bytesCount: 8,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x77, 0x4F, 0x46,  0x32]) &&
                    ((bytes[4...7] == [0x00, 0x01, 0x00, 0x00]) || (bytes[4...7] == [0x4F, 0x54, 0x54, 0x4F]))
        }
        ),
        Mimes(
            mime: "application/octet-stream",
            ext: "eot",
            type: .eot,
            bytesCount: 11,
            matches: { bytes, _ in
                return (bytes[34...35] == [0x4C, 0x50]) &&
                    ((bytes[8...10] == [0x00, 0x00, 0x01]) || (bytes[8...10] == [0x01, 0x00, 0x02]) || (bytes[8...10] == [0x02, 0x00, 0x02]))
        }
        ),
        Mimes(
            mime: "application/font-sfnt",
            ext: "ttf",
            type: .ttf,
            bytesCount: 5,
            matches: { bytes, _ in
                return bytes[0...4] == [0x00, 0x01, 0x00, 0x00, 0x00]
        }
        ),
        Mimes(
            mime: "application/font-sfnt",
            ext: "otf",
            type: .otf,
            bytesCount: 5,
            matches: { bytes, _ in
                return bytes[0...4] == [0x4F, 0x54, 0x54, 0x4F, 0x00]
        }
        ),
        Mimes(
            mime: "image/x-icon",
            ext: "ico",
            type: .ico,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x00, 0x00, 0x01, 0x00]
        }
        ),
        Mimes(
            mime: "video/x-flv",
            ext: "flv",
            type: .flv,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x46, 0x4C, 0x56, 0x01]
        }
        ),
        Mimes(
            mime: "application/postscript",
            ext: "ps",
            type: .ps,
            bytesCount: 2,
            matches: { bytes, _ in
                return bytes[0...1] == [0x25, 0x21]
        }
        ),
        Mimes(
            mime: "application/x-xz",
            ext: "xz",
            type: .xz,
            bytesCount: 6,
            matches: { bytes, _ in
                return bytes[0...5] == [0xFD, 0x37, 0x7A, 0x58, 0x5A, 0x00]
        }
        ),
        Mimes(
            mime: "application/x-sqlite3",
            ext: "sqlite",
            type: .sqlite,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x53, 0x51, 0x4C, 0x69]
        }
        ),
        Mimes(
            mime: "application/x-nintendo-nes-rom",
            ext: "nes",
            type: .nes,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x4E, 0x45, 0x53, 0x1A]
        }
        ),
        Mimes(
            mime: "application/x-google-chrome-extension",
            ext: "crx",
            type: .crx,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x43, 0x72, 0x32, 0x34]
        }
        ),
        Mimes(
            mime: "application/vnd.ms-cab-compressed",
            ext: "cab",
            type: .cab,
            bytesCount: 4,
            matches: { bytes, _ in
                return (bytes[0...3] == [0x4D, 0x53, 0x43, 0x46]) || (bytes[0...3] == [0x49, 0x53, 0x63, 0x28])
        }
        ),
        
        // Needs to be before `ar` check
        Mimes(
            mime: "application/x-deb",
            ext: "deb",
            type: .deb,
            bytesCount: 21,
            matches: { bytes, _ in
                return bytes[0...20] == [
                    0x21, 0x3C, 0x61, 0x72, 0x63, 0x68, 0x3E, 0x0A, 0x64, 0x65, 0x62, 0x69,
                    0x61, 0x6E, 0x2D, 0x62, 0x69, 0x6E, 0x61, 0x72, 0x79
                ]
        }
        ),
        Mimes(
            mime: "application/x-unix-archive",
            ext: "ar",
            type: .ar,
            bytesCount: 7,
            matches: { bytes, _ in
                return bytes[0...6] == [0x21, 0x3C, 0x61, 0x72, 0x63, 0x68, 0x3E]
        }
        ),
        Mimes(
            mime: "application/x-rpm",
            ext: "rpm",
            type: .rpm,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0xED, 0xAB, 0xEE, 0xDB]
        }
        ),
        Mimes(
            mime: "application/x-compress",
            ext: "Z",
            type: .z,
            bytesCount: 2,
            matches: { bytes, _ in
                return (bytes[0...1] == [0x1F, 0xA0]) || (bytes[0...1] == [0x1F, 0x9D])
        }
        ),
        Mimes(
            mime: "application/x-lzip",
            ext: "lz",
            type: .lz,
            bytesCount: 4,
            matches: { bytes, _ in
                return bytes[0...3] == [0x4C, 0x5A, 0x49, 0x50]
        }
        ),
        Mimes(
            mime: "application/x-msi",
            ext: "msi",
            type: .msi,
            bytesCount: 8,
            matches: { bytes, _ in
                return bytes[0...7] == [0xD0, 0xCF, 0x11, 0xE0, 0xA1, 0xB1, 0x1A, 0xE1]
        }
        ),
        Mimes(
            mime: "application/mxf",
            ext: "mxf",
            type: .mxf,
            bytesCount: 14,
            matches: { bytes, _ in
                return bytes[0...13] == [0x06, 0x0E, 0x2B, 0x34, 0x02, 0x05, 0x01, 0x01, 0x0D, 0x01, 0x02, 0x01, 0x01, 0x02 ]
        }
        )
    ]
}

public struct Swime {
    /// File data
    let data: Data
    
    ///  A static method to get the `MimeType` that matches the given file data
    ///
    ///  - returns: Optional<MimeType>
    static public func mimeType(data: Data) -> Mimes? {
        return mimeType(swime: Swime(data: data))
    }
    
    ///  A static method to get the `MimeType` that matches the given bytes
    ///
    ///  - returns: Optional<MimeType>
    static public func mimeType(bytes: [UInt8]) -> Mimes? {
        return mimeType(swime: Swime(bytes: bytes))
    }
    
    ///  Get the `MimeType` that matches the given `Swime` instance
    ///
    ///  - returns: Optional<MimeType>
    static public func mimeType(swime: Swime) -> Mimes? {
        let bytes = swime.readBytes(count: min(swime.data.count, 262))
        
        for mime in Mimes.all {
            if mime.matches(bytes: bytes, swime: swime) {
                return mime
            }
        }
        
        return nil
    }
    
    public init(data: Data) {
        self.data = data
    }
    
    public init(bytes: [UInt8]) {
        self.init(data: Data(bytes: bytes))
    }
    
    ///  Read bytes from file data
    ///
    ///  - parameter count: Number of bytes to be read
    ///
    ///  - returns: Bytes represented with `[UInt8]`
    internal func readBytes(count: Int) -> [UInt8] {
        var bytes = [UInt8](repeating: 0, count: count)
        
        data.copyBytes(to: &bytes, count: count)
        
        return bytes
    }
}



