//
//  NonceGenerator.swift
//  Alamofire
//
//  Created by Siamak on 7/28/19.
//

import Foundation
import CommonCrypto

public class NonceGenerator {
    
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
    
    //Mark : requestId as String
    public var requestId = String()
    
    //Mark : clientId as string (an unique device id)
    public var clientId = String()
    
    //Mark : signature as String
    public var signature = String()

    //Mark : Default nounce
    //FPLFJ0pCx6
    
    
    //Mark : Init
    public init(_ nounce : String ) {
        //Mark : define values for variables
        upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        lower = upper.lowercased()
        digits = "0123456789"
        alphanum = upper + lower + digits
        nonce = nounce
        if let str = generateRandomString(10) as String? {
            cNonce = str
        }
        cTime = Date().currentTimeStamp()
        generateClientId()
      
    }
    
    //Mark: This function generates random string with custom length
        func generateRandomString(_ length : Int) -> String {
            return String((0..<length).map{ _ in alphanum.randomElement()! })
        }
    
    //Mark: This function generates an unique device Id
    func generateClientId(){
        let uniqueId = NSUUID.init().uuidString
        let newId = uniqueId.replacingOccurrences(of: "-", with: "")
        self.clientId = newId
        debugPrint(clientId)
    }
    
    
    //Mark: This function generates signature
   public func generateSignature() -> String{
        
    let uuid = UUIDTimeBasedGenerator()
    
    if nonce.isEmpty{
        signature = ""
        requestId = ""
        cTime = 0
        cNonce = ""
    }else{
        if let uuidGen = uuid.generateIdFromTimestamp(clientId, cNonce, cTime) as UUID? {
            requestId = uuidGen.uuidString.replacingOccurrences(of: "-", with: "")
            let combinationString = cNonce + "|" + nonce + "|" + clientId + "|" + requestId
            signature = combinationString.md5
        }
    }
  
        return signature
        
    }
 
    
}

//Mark: This function validate our nounce generation progress
public func validate(_ nonce :String , _ clientId : String , _ cNonce : String , cTime : Int , _ requestId : String , _ signature: String){
    
    if clientId.count <= 8 || clientId.count >= 64 {
        debugPrint("Invalid ClientId")
    }
    if cNonce.count != 10 {
        debugPrint("Invalid cNonce")
        let cNonceCheck = cNonce.replacingOccurrences(of: "[^A-Za-z0-9]", with: "")
        if !cNonceCheck.elementsEqual(cNonce){
            debugPrint("Invalid cNonce")
        }
    }
        if cTime == 0 {
            debugPrint("Invalid cTime")
            let time = cTime
            let now = Date().currentTimeStamp()
            let timeDiff = Int64(abs(now - Int64(time)))
            if timeDiff > 10 * 60 * 1000 {
                debugPrint("Invalid cTime")
            }
        }
        if requestId.count != 32 {
            debugPrint("Invalid requestId")
        }else{
            
            if !requestId.isEmpty{
                debugPrint("Invalid requestId(Inavlid Length)")
                let range1 = requestId.index(requestId.startIndex, offsetBy: 8)
                let str1 = requestId[..<range1]
                let range2 = requestId.index(range1, offsetBy: 4)
                let str2 = requestId[range1...range2]
                let range3 = requestId.index(range2, offsetBy: 4)
                let str3 = requestId[range2...range3]
                let range4 = requestId.index(range3, offsetBy: 4)
                let str4 = requestId[range3...range4]
                var req = String()
                
                req.append(String(str1))
                req.append("-")
                req.append(String(str2))
                req.append("-")
                req.append(String(str3))
                req.append("-")
                req.append(String(str4))
                let uuid = UUID(uuidString: req)
                if (uuid?.uuidString.isEmpty)!{
                    print("Invalid requestId(format invalid)")
                }
                print("Invalid requestId(format invalid)")
            }
            
    }
    }
    


extension Date {
    func currentTimeStamp() -> Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
}


