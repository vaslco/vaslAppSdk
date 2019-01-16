//
//  String.swift
//  VaslAppSdk
//
//  Created by Ali Shatergholi on 7/9/17.
//  Copyright © 2017 Ali Shatergholi. All rights reserved.
//

import Foundation
import UIKit

extension String{
    
    public func mimeType() -> String {
        return (self as NSString).mimeType()
    }
    
    func URLEncodedString() -> String? {
        let escapedString = self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        return escapedString
    }
    
    func URLDecodedString() -> String? {
        return self.removingPercentEncoding
    }
    
    func getString(_ resource : String) -> String {
        return NSLocalizedString(resource, comment: resource)
    }
    
    func height(withConstrainedWidth width: CGFloat,_ size : CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        if let font = UIFont(name: PublicValue.standardFont, size: size) {
            let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
            return ceil(boundingBox.height)
        }else{
            let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: nil, context: nil)
            return ceil(boundingBox.height)
        }
    }
    
    func width(withConstraintedHeight height: CGFloat,_ size: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        if let font = UIFont(name: PublicValue.standardFont, size: size) {
            let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
            return ceil(boundingBox.width)
        } else {
            let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: nil, context: nil)
            return ceil(boundingBox.width)
        }
    }
    
}
