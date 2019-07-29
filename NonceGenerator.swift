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
    
    
    
    public init(_ nounce : String) {
        upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        lower = upper.lowercased()
        digits = "0123456789"
        alphanum = upper + lower + digits
        nonce = nounce
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
    if nonce.isEmpty{
        signature = ""
        requestId = ""
        cTime = 0
        cNonce = ""
        validate(nonce, clientId, cNonce, cTime: Int(cTime), requestId, signature)
    }else{
        if let uuidGen = uuid.generateIdFromTimestamp(clientId, cNonce, cTime) as UUID? {
            requestId = uuidGen.uuidString.replacingOccurrences(of: "-", with: "")
            let combinationString = cNonce + "|" + nonce + "|" + clientId + "|" + requestId
            signature = combinationString.md5
            validate(nonce, clientId, cNonce, cTime: Int(cTime), requestId, signature)
        }
    }
    
        
        return signature
        
    }
 
    
}

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
            if !requestId.isEmpty{
                debugPrint("Invalid requestId(Inavlid Length)")
                let range1 = requestId.index(requestId.startIndex, offsetBy: 8)
                let range2 = requestId.index(range1, offsetBy: 4)
                let range3 = requestId.index(range2, offsetBy: 4)
                let range4 = requestId.index(range3, offsetBy: 4)
                let substring1 = requestId[range1]
                let substring2 = requestId[range2]
                let substring3 = requestId[range3]
                let substring4 = requestId[range4]
                var req = String()
                req.append(substring1)
                req.append("-")
                req.append(substring2)
                req.append("-")
                req.append(substring3)
                req.append("-")
                req.append(substring4)
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

//public static void validate(String nonce, String clientId, String cNonce, String cTime, String requestId, String signature) {
//
//    if (parseString(clientId).length() <= 8 || parseString(clientId).length() >= 64)
//    System.out.println("Invalid ClientId");
//    if (parseString(cNonce).length() != 10)
//    System.out.println("Invalid cNonce");
//    String cNonceCheck = cNonce.replaceAll("[^A-Za-z0-9]", "");
//    if (!cNonceCheck.equals(cNonce))
//    System.out.println("Invalid cNonce");
//    if (General.isEmpty(cTime))
//    System.out.println("Invalid cTime");
//    long time = General.parseLong(cTime);
//    long now = new Date().getTime();
//    long timeDiff = Math.abs(now - time);
//    if (timeDiff > 10 * 60 * 1000)
//    System.out.println("Invalid cTime");
//    if (parseString(requestId).length() != 32)
//    System.out.println("Invalid requestId(Length Invalid)");
//    String reqId = requestId.substring(0, 8) + "-" + requestId.substring(8, 12) + "-" + requestId.substring(12, 16) + "-" + requestId.substring(16, 20) + "-" + requestId.substring(20);
//    UUID uuid = null;
//    try {
//        uuid = UUID.fromString(reqId);
//    } catch (Exception e) {
//        e.printStackTrace();
//    }
//    if (uuid == null)
//    System.out.println("Invalid requestId(Format Invalid)");
//    if (uuid.version() != 1)
//    System.out.println("Invalid requestId(Type Invalid [Not UUID V1(timeBased))]");
//    long UUIDTimestamp = uuid.timestamp();
//    if (UUIDTimestamp != time)
//    System.out.println("Invalid requestId(time not matched]");
//    long node = uuid.node();
//    int clockSequence = uuid.clockSequence();
//    //        String nodeIdHex = Integer.toHexString(clockSequence)+Long.toHexString(node);
//    String nodeIdHex = Long.toHexString(node);
//    String nodeId = null;
//    byte[] bytes = new byte[0];
//    try {
//        bytes = Hex.decodeHex(nodeIdHex.toCharArray());
//        nodeId = new String(bytes, "UTF-8");
//    } catch (Exception e) {
//        e.printStackTrace();
//    }
//    if (General.isEmpty(nodeId))
//    System.out.println("Invalid requestId(node[nodeId] can not be parsed)");
//
//    String clientIdCNonce = General.md5(cNonce + clientId);
//    if (!clientIdCNonce.endsWith(nodeId))
//    System.out.println("Invalid requestId(node[hostId] not matched)");
//
//    String sign = General.md5(cNonce + "|" + nonce + "|" + clientId + "|" + requestId);
//
//    if (General.isEmpty(signature))
//    System.out.println("Invalid signature");
//
//    if (!sign.equals(signature))
//    System.out.println("Invalid signature");
//
//}

