//
//  UUID.swift
//  vaslAppSdk
//
//  Created by Siamak on 7/28/19.
//

import Foundation
extension UUID {
    init(numbers: (Int64, Int64)) {
        var firstNumber = numbers.0
        var secondNumber = numbers.1
        let firstData = Data(bytes: &firstNumber, count: MemoryLayout<Int64>.size)
        let secondData = Data(bytes: &secondNumber, count: MemoryLayout<Int64>.size)
        
        let bytes = [UInt8](firstData) + [UInt8](secondData)
        
        let tuple: uuid_t = (bytes[0], bytes[1], bytes[2], bytes[3],
                             bytes[4], bytes[5], bytes[6], bytes[7],
                             bytes[8], bytes[9], bytes[10], bytes[11],
                             bytes[12], bytes[13], bytes[14], bytes[15])
        
        self.init(uuid: tuple)
    }
    
    var intTupleValue: (Int64, Int64) {
        let tuple = self.uuid
        
        let firstBytes: [UInt8] = [tuple.0, tuple.1, tuple.2, tuple.3,
                                   tuple.4, tuple.5, tuple.6, tuple.7]
        
        let secondBytes: [UInt8] = [tuple.8, tuple.9, tuple.10, tuple.11,
                                    tuple.12, tuple.13, tuple.14, tuple.15]
        
        let firstData = Data(firstBytes)//Data(bytes: firstBytes)
        
        let secondData = Data(secondBytes)
        
        let first = firstData.withUnsafeBytes { $0.pointee } as Int64
        let second = secondData.withUnsafeBytes { $0.pointee } as Int64
        
        return (first, second)
    }
}
