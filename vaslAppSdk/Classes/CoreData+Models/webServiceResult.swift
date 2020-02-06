//
//  webServiceResult.swift
//  JikOPic
//
//  Created by Ali Shatergholi on 7/9/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import Foundation

public class webServiceResult {
    
    fileprivate let key_status          = "status"
    fileprivate let key_code            = "code"
    fileprivate let key_msg             = "msg"
    fileprivate let key_data            = "data"
    fileprivate let key_dataObject      = "dataObj"
    fileprivate let key_totalpages      = "totalpages"
    fileprivate let key_totalitems      = "totalitems"

    var status              = Int64()
    var code                = Int64()
    var totalpages          = Int64()
    var totalitems          = Int64()
    var message             = String()
    var data                = NSArray()
    var dataObj             = NSDictionary()
    var dictionary          = NSDictionary()
    
    init() {        
    }
    
    func parseJsonResult(_ dictionary : NSDictionary)  {
        self.dictionary = dictionary
        if let item = dictionary[key_status] as? Int64 {
            status          = item
        }
        if let item = dictionary[key_code] as? Int64 {
            code            = item
        }
        if let item = dictionary[key_msg] as? String {
            message         = item
        }
        if let items = dictionary[key_data] as? NSArray {
            data = items            
        }
        if let items = dictionary[key_data] as? NSDictionary {
            dataObj = items
        }
        if let items = dictionary[key_data] as? Int64 {
            totalpages = items
        }
        if let items = dictionary[key_data] as? Int64 {
            totalitems = items
        }
    }
    
    public func getStatus() -> Int64 {
        return status
    }
    public func getCode() -> Int64 {
        return code
    }
    public func getMessage() -> String {
        return message
    }
    public func getData() -> NSArray {
        return data
    }
    public func getObject() -> NSDictionary {
        return dataObj
    }
    public func getDictionary() -> NSDictionary {
        return dictionary
    }
}
