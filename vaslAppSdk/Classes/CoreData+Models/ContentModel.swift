//
//  ContentModel.swift
//  Vmbaas
//
//  Created by ali on 8/20/18.
//  Copyright © 2018 Vaslapp. All rights reserved.
//

import Foundation


class ContentModel {
    
    public enum ContentRowType : String {
        case
        UNDEFINE    = "",
        TEXT        = "text",
        IMAGE       = "image",
        VIDEO       = "video",
        AUDIO       = "audio",
        LINK        = "link",
        CUSTOM1     = "cuatom1",
        CUSTOM2     = "cuatom2",
        CUSTOM3     = "cuatom3",
        CUSTOM4     = "cuatom4",
        CUSTOM5     = "cuatom5"
    }
    
    var contentRow       : ContentRowType = .UNDEFINE
    var field1           = String()
    var field2           = String()
    var field3           = String()
    var field4           = String()
    var field5           = String()
    
    func toJson() -> String{
        let json = [
            "contentRow" : contentRow.rawValue,
            "field1" : field1,
            "field2" : field2,
            "field3" : field3,
            "field4" : field4,
            "field5" : field5
        ] as [String : String]
        
        let jsonData = try! JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
        return NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue)! as String
    }
    
}
