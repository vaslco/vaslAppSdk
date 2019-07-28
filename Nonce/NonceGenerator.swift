//
//  NonceGenerator.swift
//  Alamofire
//
//  Created by Siamak on 7/28/19.
//

import Foundation
import CommonCrypto

public class NonceGenerator  {
    //Mark : Upper case english alphabet
    public var upper = String()
    
    //Mark: LowerCased english alphabet
    public var lower = String ()
    
    //Mark : Digits from zero to nine
    public var digits = String ()
    
    //Mark : a combination string between
    public var alphanum = String()
    
    //Mark : a static string witch is same between server and client
    public var nonce = String()
    
    //Mark : a random generated string with 10 character length
    public var cNonce = String()
    
    //Mark: timestamp as miliseconds
    public var cTime = Int64()
    
    //Mark : UUID
    public var requestId = String()
    
    public var clientId = String()
    
    public var signature = String()
    
    
    
    
 
    
    
    
        //FPLFJ0pCx6
    
    
    
    public init() {
        upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        lower = upper.lowercased()
        digits = "0123456789"
        alphanum = upper + lower + digits
        nonce = "FPLFJ0pCx6"
        if let str = generateRandomString(10) as String? {
            cNonce = str
        }
        cTime = Date().currentTimeStamp()
        clientId = RestService.clientId
        
        
    }
    
        func generateRandomString(_ length : Int) -> String {
            
            return String((0..<length).map{ _ in alphanum.randomElement()! })
            
        }
    
    
    func generateRequestId (_ nonce : String , _ clientId : String) -> String {
        let combinedString = nonce + clientId
        let finalString = combinedString.md5
        return finalString
    }
    
   public func generateSignature() -> String{
        
        let uuid = UUIDTimeBasedGenerator()
        if let uuidGen = uuid.generateIdFromTimestamp(clientId, cNonce, cTime) as UUID? {
            requestId = uuidGen.uuidString.replacingOccurrences(of: "-", with: "")
            let combinationString = cNonce + "|" + nonce + "|" + clientId + "|" + requestId
            signature = combinationString.md5
        }
        
        return signature
        
    }
    
    
    
        
        
        
        
        
        
        
        
        
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

extension Date {
    func currentTimeStamp() -> Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
}

