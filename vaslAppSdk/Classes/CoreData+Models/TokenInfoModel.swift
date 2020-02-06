//
//  TokenInfoModel.swift
//  Navaz
//
//  Created by Ali shatergholi on 11/22/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class TokenInfoModel {
    
    let             key_file                = "token.txt"
    
    fileprivate let key_accessToken         = "access_token"
    fileprivate let key_refreshToken        = "refresh_token"
    fileprivate let key_tokenType           = "token_type"
    fileprivate let key_expire              = "expires_in"
    fileprivate let key_insertTime          = "insertTime"
    fileprivate let key_error               = "error"
    
    var accessToken         = String()
    var refreshToken        = String()
    var tokenType           = String()
    var expire              = Int64()
    var insertTime          = Date()
    var error               = Int64()
    
    init() {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = dir.appendingPathComponent(key_file)
            //reading
            do {
                let data = try String(contentsOf: fileURL, encoding: .utf8).data(using: .utf8)                
                if let data = data {
                    let response = try! JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                    parseJsonResult(response)
                }
            }
            catch {/* error handling here */}
        }
    }
    
    func parseJsonResult(_ dictionary : NSDictionary)  {
        if let item = dictionary[key_accessToken] as? String {
            self.accessToken = item
        }
        if let item = dictionary[key_refreshToken] as? String {
            self.refreshToken = item
        }
        if let item = dictionary[key_tokenType] as? String {
            self.tokenType = item
        }
        if let item = dictionary[key_expire] as? Int64 {
            self.expire = item
        }
        if let item = dictionary[key_insertTime] as? Date {
            self.insertTime = item
        }
        if let item = dictionary[key_error] as? Int64 {
            self.error = item
        }        
    }
    
    func insertToken(_ tokenDictionary : NSDictionary) -> Bool {
        do{
            parseJsonResult(tokenDictionary)
            let jsonData = try JSONSerialization.data(withJSONObject: tokenDictionary, options: .prettyPrinted) as NSData
            let token  = NSString(data: jsonData as Data, encoding: String.Encoding.utf8.rawValue)
            if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let fileURL = dir.appendingPathComponent(key_file)
                do {
                    try token?.write(to: fileURL, atomically: false, encoding: String.Encoding.utf8.rawValue)
                    return true
                }
                catch {print("error handling here")}
            }
            return false
        }catch{
            return false
        }
    }
    
    fileprivate func getTimemilisecond()->String {
        let date = Date()
        return String("\(date.timeIntervalSince1970)")
    }
    
    func getRefreshToken() -> Bool {
        var callRefresh = false
        let date = Date()        
        let time = insertTime.addingTimeInterval(TimeInterval(expire))
        if date > time && expire > 0 {
            callRefresh = true
        }
        return callRefresh
    }
    
    func updateToken(_ expireIn : Int64,accessToken : String,refreshToken : String) {
        expire               = expireIn
        self.accessToken     = accessToken
        self.refreshToken    = refreshToken
    }
    
    func resetToken()  {
        accessToken         = ""
        refreshToken        = ""
        tokenType           = ""
        expire              = 0        
        insertTime          = Date()
        error               = 0
        do {
            let url  = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent(key_file)
            try FileManager.default.removeItem(at: url!)
        }
        catch let error as NSError {
            print("Ooops! Something went wrong: \(error)")
        }
    }
}
