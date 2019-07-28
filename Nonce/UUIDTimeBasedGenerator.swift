//
//  UUIDTimeBasedGenerator.swift
//  vaslAppSdk
//
//  Created by Siamak on 7/28/19.
//

import Foundation
import vaslAppSdk



public class UUIDTimeBasedGenerator {
    
    
    var lock = NSObject()
    var lastTime = Int64()
    var clockSequence :Int64 =  0
    
    
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
    
        
        //mid time
        time |= ((timeStamp & 0xFFFF00000000) >> 16)
        
        //high time
        time |= 0x1000 | ((timeStamp >> 48) & 0x0FFF)
        
        var clockSequenceHi = clockSequence
        clockSequenceHi <<= 48
        
        let hostIdentifier = Int64()
        
        let md5String = (nonce + clientId).md5
        
        if hostIdentifier == getHostIdByClientId(md5String) {
            
            print("success")
            
        }
        
        let lsb = clockSequenceHi | hostIdentifier
        
        let uuid = UUID(numbers: (time, lsb))
        
        
        return uuid
        
    
        
        
        
    }
    
    
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

//package com.vasl.examples.requestid;/*
// * Copyright 2002-2011 the original author or authors.
// *
// * Licensed under the Apache License, Version 2.0 (the "License");
// * you may not use this file except in compliance with the License.
// * You may obtain a copy of the License at
// *
// *      http://www.apache.org/licenses/LICENSE-2.0
// *
// * Unless required by applicable law or agreed to in writing, software
// * distributed under the License is distributed on an "AS IS" BASIS,
// * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// * See the License for the specific language governing permissions and
// * limitations under the License.
// */
//
//import java.net.InetAddress;
//import java.net.NetworkInterface;
//import java.util.Random;
//import java.util.UUID;
//
///**
// * Will generate time-based UUID (version 1 UUID).
// * Requires JDK 1.6+
// *
// * @author Oleg Zhurakousky
// */
//public class TimeBasedUUIDGenerator {
//
//    public static final Object lock = new Object();
//
//    private static long lastTime;
//    private static long clockSequence = 0;
//    //    private static final long hostIdentifierDefault = getHostId();
//    //    private static final long hostIdentifier = getHostIdByClientId("test");
//
//    /**
//     * Will generate unique time based UUID where the next UUID is
//     * always greater then the previous.
//     */
//    public final static UUID generateId() {
//    return generateIdFromTimestamp(null,null,System.currentTimeMillis());
//    }
//
//    public final static UUID generateId(String clinetId) {
//    return generateIdFromTimestamp(clinetId,null,System.currentTimeMillis());
//    }
//
//    public final static UUID generateId(String clinetId,String nounce) {
//    return generateIdFromTimestamp(clinetId,nounce,System.currentTimeMillis());
//    }
//
//    public final static UUID generateId(String clinetId,String nounce,long time) {
//    return generateIdFromTimestamp(clinetId,nounce,time);
//    }
//
//    public final static UUID generateIdFromTimestamp(String clinetId,String nounce,long currentTimeMillis){
//    long time;
//
//    synchronized (lock) {
//    if (currentTimeMillis > lastTime) {
//    lastTime = currentTimeMillis;
//    clockSequence = 0;
//    } else  {
//    ++clockSequence;
//    }
//    }
//
//    time = currentTimeMillis;
//
//    // low Time
//    time = currentTimeMillis << 32;
//
//    // mid Time
//    time |= ((currentTimeMillis & 0xFFFF00000000L) >> 16);
//
//    // hi Time
//    time |= 0x1000 | ((currentTimeMillis >> 48) & 0x0FFF);
//
//    long clockSequenceHi = clockSequence;
//
//    clockSequenceHi <<=48;
//
//    long hostIdentifier;
//    if (clinetId==null)
//    hostIdentifier=getHostId();
//    else if (nounce==null)
//    hostIdentifier=getHostIdByClientId(clinetId);
//    else{
//    clinetId= General.md5(nounce+clinetId);
//    hostIdentifier=getHostIdByClientId(clinetId);
//
//    }
//    // for standard  clockSequenceHi && UUID Varient
//    //        hostIdentifier = hostIdentifier & 0x0000FFFFFFFFFFFFl;
//    long lsb = clockSequenceHi | hostIdentifier;
//
//    return new UUID(time, lsb);
//    }
//
//    private static final long getHostIdByClientId(String clientId){
//    long  macAddressAsLong = 0;
//    try {
//    Random random = new Random();
//    if (clientId != null) {
//    byte[] clientIdBytes = clientId.getBytes();
//    //Converts array of unsigned bytes to an long
//    if (clientIdBytes != null) {
//    for (int i = 0; i < clientIdBytes.length; i++) {
//    macAddressAsLong <<= 8;
//    macAddressAsLong ^= (long)clientIdBytes[i] & 0xFF;
//    }
//    }
//    }
//    } catch (Exception e) {
//    e.printStackTrace();
//    }
//    return macAddressAsLong;
//    }
//
//    private static final long getHostId(){
//    long  macAddressAsLong = 0;
//    try {
//    Random random = new Random();
//    InetAddress address = InetAddress.getLocalHost();
//    NetworkInterface ni = NetworkInterface.getByInetAddress(address);
//    if (ni != null) {
//    byte[] mac = ni.getHardwareAddress();
//    random.nextBytes(mac); // we don't really want to reveal the actual MAC address
//    //Converts array of unsigned bytes to an long
//    if (mac != null) {
//    for (int i = 0; i < mac.length; i++) {
//    macAddressAsLong <<= 8;
//    macAddressAsLong ^= (long)mac[i] & 0xFF;
//    }
//    }
//    }
//    } catch (Exception e) {
//    e.printStackTrace();
//    }
//    return macAddressAsLong;
//    }
//
//
//}
