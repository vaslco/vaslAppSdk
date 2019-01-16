//
//  NSMutableData.swift
//  VaslAppSdk
//
//  Created by Ali Shatergholi on 8/30/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import Foundation

extension NSMutableData {
    
    func appendString(string: String) {
        let data = string.data(using: String.Encoding.utf8, allowLossyConversion: true)
        append(data!)
    }
}
