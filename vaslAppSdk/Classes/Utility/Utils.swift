//
//  Utils.swift
//  JikOPic
//
//  Created by Ali Shatergholi on 7/5/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import Foundation
import UIKit
import MobileCoreServices

class Utils {
    
    static func getScreenWidth() -> CGFloat {
        let screenSize = UIScreen.main.bounds
        return screenSize.width
    }
    
    static func getScreenHeight() -> CGFloat {
        let screenSize = UIScreen.main.bounds
        return screenSize.height
    }
    
    
    static func LogData(debug : Bool,className : String,message : String) {        
        if debug {
            print("debug ,class : \(className) ,message : \(message)")
        }else{
            print("error ,class : \(className) ,message : \(message)")
        }
    }
    
    static func mimeTypeForPath(path: String) -> String {
        let url = NSURL(fileURLWithPath: path)
        let pathExtension = url.pathExtension
        if let uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension! as NSString, nil)?.takeRetainedValue() {
            if let mimetype = UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType)?.takeRetainedValue() {
                return mimetype as String
            }
        }
        return "application/octet-stream"
    }
}
