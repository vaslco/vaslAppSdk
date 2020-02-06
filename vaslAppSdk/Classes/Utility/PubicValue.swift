//
//  PubicValue.swift
//  JikOPic
//
//  Created by Ali Shatergholi on 7/2/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import UIKit


struct PublicValue {    
    
    static let sessionId                    = "sessionId"
    static let key                          = "key"
    static let username                     = "username"
    static let activationKey                = "activationKey"
    static let password                     = "password"
    static let email                        = "email"
    static let mobile                       = "mobile"
    static let registrationType             = "registrationType"
    static let sort                         = "sort"
    static let order                        = "order"
    static let page                         = "page"
    static let id                           = "id"
    static let subscriberType               = "subscriberType"
        
    static let status_success : Int64         = 1
    static let status_success_login : Int64   = 600
    static let status_session_closed : Int64  = 703
    static let page_count_item                = 21
    static let indicatorTag                   = 1002
    
    static func getUrlBase() -> String {
        #if DEBUG
            return RestService.baseUrl
        #else
            return RestService.baseUrl
        #endif
    }
}

