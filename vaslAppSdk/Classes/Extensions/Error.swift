//
//  Error.swift
//  VaslAppSdk
//
//  Created by Ali Shatergholi on 7/9/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import Foundation

extension Error {
    var code: Int { return (self as NSError).code }
    var domain: String { return (self as NSError).domain }
    var description: String { return (self as NSError).description }
    
    
}
