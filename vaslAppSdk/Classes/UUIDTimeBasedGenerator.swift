//
//  UUIDTimeBasedGenerator.swift
//  vaslAppSdk
//
//  Created by Siamak on 7/28/19.
//

import Foundation

public class UUIDTimeBasedGenerator {
    
    
    var lastTime = Int64()
    var clockSequence :Int64 =  0
    
    //Mark: This function generate UUID version 1
    public func generateIdFromTimestamp(_ clientId : String , _ nonce : String , _ timeStamp : Int64) -> UUID{
        
        var time = Int64()
        DispatchQueue.global(qos: .default).sync {
            if timeStamp > lastTime {
                lastTime = timeStamp
                clockSequence = 0
            }else{
                clockSequence += clockSequence
            }
        }
        
        time = timeStamp
        
        // low time
        time = timeStamp << 32
    
        let midTimeShift : Int64 = 0xFFFF00000000
        //mid time
        time |= ((timeStamp & midTimeShift) >> 16)
        
        //high time
        time |= 0x1000 | ((timeStamp >> 48) & 0x0FFF)
        
        var clockSequenceHi = clockSequence
        clockSequenceHi <<= 48
        
        var hostIdentifier = Int64()
        
        let md5String = (nonce + clientId).md5
        
        if let idString = getHostIdByClientId(md5String) as Int64?{
            
            hostIdentifier = idString
            
        }
  
        let lsb = clockSequenceHi | hostIdentifier
        
        let uuid = UUID(numbers: (time.bigEndian, lsb.bigEndian))
        
        return uuid
  
    }
    
    //Mark : This function generates hostId with clientId
    public func getHostIdByClientId(_ clientId : String) -> Int64 {
        var macAddress = Int64()
        if !clientId.isEmpty{
           let clientIdBytes : [UInt8] = Array(clientId.utf8)
            if !clientIdBytes.isEmpty{
                
                for i in 0...clientIdBytes.count - 1 {
                    macAddress <<= 8
                    macAddress ^= Int64(clientIdBytes[i]) & 0xFF
                }
                
            }
        }
        
        
        return macAddress
        
    }
    
    
    
    
    
    
    
    
}

