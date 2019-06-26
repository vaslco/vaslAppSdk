// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Mgs.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_BulkSMS {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var to: String = String()

  public var from: String = String()

  public var message: String = String()

  public var operatorID: String = String()

  public var insertTime: String = String()

  public var senderApp: String = String()

  public var response: String = String()

  public var recieverID: String = String()

  public var senderID: String = String()

  public var callType: String = String()

  public var function: String = String()

  public var sendTime: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_AggregatorSMS {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var to: String = String()

  public var from: String = String()

  public var message: String = String()

  public var aggregatorName: String = String()

  public var insertTime: String = String()

  public var senderApp: String = String()

  public var response: String = String()

  public var recieverID: String = String()

  public var senderID: String = String()

  public var sendTime: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListBulkSMS {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var totalPage: Int64 = 0

  public var page: Int32 = 0

  public var itemInPage: Int64 = 0

  public var data: [Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_BulkSMS] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListAggregatorSMS {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var totalPage: Int64 = 0

  public var page: Int32 = 0

  public var itemInPage: Int64 = 0

  public var data: [Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_AggregatorSMS] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.vasl.vaslapp.modules.mgs.global.proto.holder"

extension Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".General"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != 0 {
      try visitor.visitSingularInt32Field(value: self.status, fieldNumber: 1)
    }
    if self.code != 0 {
      try visitor.visitSingularInt32Field(value: self.code, fieldNumber: 2)
    }
    if !self.msg.isEmpty {
      try visitor.visitSingularStringField(value: self.msg, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General, rhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_BulkSMS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BulkSMS"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "to"),
    3: .same(proto: "from"),
    4: .same(proto: "message"),
    5: .same(proto: "operatorId"),
    6: .same(proto: "insertTime"),
    7: .same(proto: "senderApp"),
    8: .same(proto: "response"),
    9: .same(proto: "recieverId"),
    10: .same(proto: "senderId"),
    11: .same(proto: "callType"),
    12: .same(proto: "function"),
    13: .same(proto: "sendTime"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.to)
      case 3: try decoder.decodeSingularStringField(value: &self.from)
      case 4: try decoder.decodeSingularStringField(value: &self.message)
      case 5: try decoder.decodeSingularStringField(value: &self.operatorID)
      case 6: try decoder.decodeSingularStringField(value: &self.insertTime)
      case 7: try decoder.decodeSingularStringField(value: &self.senderApp)
      case 8: try decoder.decodeSingularStringField(value: &self.response)
      case 9: try decoder.decodeSingularStringField(value: &self.recieverID)
      case 10: try decoder.decodeSingularStringField(value: &self.senderID)
      case 11: try decoder.decodeSingularStringField(value: &self.callType)
      case 12: try decoder.decodeSingularStringField(value: &self.function)
      case 13: try decoder.decodeSingularStringField(value: &self.sendTime)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 2)
    }
    if !self.from.isEmpty {
      try visitor.visitSingularStringField(value: self.from, fieldNumber: 3)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 4)
    }
    if !self.operatorID.isEmpty {
      try visitor.visitSingularStringField(value: self.operatorID, fieldNumber: 5)
    }
    if !self.insertTime.isEmpty {
      try visitor.visitSingularStringField(value: self.insertTime, fieldNumber: 6)
    }
    if !self.senderApp.isEmpty {
      try visitor.visitSingularStringField(value: self.senderApp, fieldNumber: 7)
    }
    if !self.response.isEmpty {
      try visitor.visitSingularStringField(value: self.response, fieldNumber: 8)
    }
    if !self.recieverID.isEmpty {
      try visitor.visitSingularStringField(value: self.recieverID, fieldNumber: 9)
    }
    if !self.senderID.isEmpty {
      try visitor.visitSingularStringField(value: self.senderID, fieldNumber: 10)
    }
    if !self.callType.isEmpty {
      try visitor.visitSingularStringField(value: self.callType, fieldNumber: 11)
    }
    if !self.function.isEmpty {
      try visitor.visitSingularStringField(value: self.function, fieldNumber: 12)
    }
    if !self.sendTime.isEmpty {
      try visitor.visitSingularStringField(value: self.sendTime, fieldNumber: 13)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_BulkSMS, rhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_BulkSMS) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.to != rhs.to {return false}
    if lhs.from != rhs.from {return false}
    if lhs.message != rhs.message {return false}
    if lhs.operatorID != rhs.operatorID {return false}
    if lhs.insertTime != rhs.insertTime {return false}
    if lhs.senderApp != rhs.senderApp {return false}
    if lhs.response != rhs.response {return false}
    if lhs.recieverID != rhs.recieverID {return false}
    if lhs.senderID != rhs.senderID {return false}
    if lhs.callType != rhs.callType {return false}
    if lhs.function != rhs.function {return false}
    if lhs.sendTime != rhs.sendTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_AggregatorSMS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AggregatorSMS"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "to"),
    3: .same(proto: "from"),
    4: .same(proto: "message"),
    5: .same(proto: "aggregatorName"),
    6: .same(proto: "insertTime"),
    7: .same(proto: "senderApp"),
    8: .same(proto: "response"),
    9: .same(proto: "recieverId"),
    10: .same(proto: "senderId"),
    11: .same(proto: "sendTime"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.to)
      case 3: try decoder.decodeSingularStringField(value: &self.from)
      case 4: try decoder.decodeSingularStringField(value: &self.message)
      case 5: try decoder.decodeSingularStringField(value: &self.aggregatorName)
      case 6: try decoder.decodeSingularStringField(value: &self.insertTime)
      case 7: try decoder.decodeSingularStringField(value: &self.senderApp)
      case 8: try decoder.decodeSingularStringField(value: &self.response)
      case 9: try decoder.decodeSingularStringField(value: &self.recieverID)
      case 10: try decoder.decodeSingularStringField(value: &self.senderID)
      case 11: try decoder.decodeSingularStringField(value: &self.sendTime)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 2)
    }
    if !self.from.isEmpty {
      try visitor.visitSingularStringField(value: self.from, fieldNumber: 3)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 4)
    }
    if !self.aggregatorName.isEmpty {
      try visitor.visitSingularStringField(value: self.aggregatorName, fieldNumber: 5)
    }
    if !self.insertTime.isEmpty {
      try visitor.visitSingularStringField(value: self.insertTime, fieldNumber: 6)
    }
    if !self.senderApp.isEmpty {
      try visitor.visitSingularStringField(value: self.senderApp, fieldNumber: 7)
    }
    if !self.response.isEmpty {
      try visitor.visitSingularStringField(value: self.response, fieldNumber: 8)
    }
    if !self.recieverID.isEmpty {
      try visitor.visitSingularStringField(value: self.recieverID, fieldNumber: 9)
    }
    if !self.senderID.isEmpty {
      try visitor.visitSingularStringField(value: self.senderID, fieldNumber: 10)
    }
    if !self.sendTime.isEmpty {
      try visitor.visitSingularStringField(value: self.sendTime, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_AggregatorSMS, rhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_AggregatorSMS) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.to != rhs.to {return false}
    if lhs.from != rhs.from {return false}
    if lhs.message != rhs.message {return false}
    if lhs.aggregatorName != rhs.aggregatorName {return false}
    if lhs.insertTime != rhs.insertTime {return false}
    if lhs.senderApp != rhs.senderApp {return false}
    if lhs.response != rhs.response {return false}
    if lhs.recieverID != rhs.recieverID {return false}
    if lhs.senderID != rhs.senderID {return false}
    if lhs.sendTime != rhs.sendTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListBulkSMS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListBulkSMS"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "totalPage"),
    5: .same(proto: "page"),
    6: .same(proto: "itemInPage"),
    7: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      case 4: try decoder.decodeSingularInt64Field(value: &self.totalPage)
      case 5: try decoder.decodeSingularInt32Field(value: &self.page)
      case 6: try decoder.decodeSingularInt64Field(value: &self.itemInPage)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.data)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != 0 {
      try visitor.visitSingularInt32Field(value: self.status, fieldNumber: 1)
    }
    if self.code != 0 {
      try visitor.visitSingularInt32Field(value: self.code, fieldNumber: 2)
    }
    if !self.msg.isEmpty {
      try visitor.visitSingularStringField(value: self.msg, fieldNumber: 3)
    }
    if self.totalPage != 0 {
      try visitor.visitSingularInt64Field(value: self.totalPage, fieldNumber: 4)
    }
    if self.page != 0 {
      try visitor.visitSingularInt32Field(value: self.page, fieldNumber: 5)
    }
    if self.itemInPage != 0 {
      try visitor.visitSingularInt64Field(value: self.itemInPage, fieldNumber: 6)
    }
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListBulkSMS, rhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListBulkSMS) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.totalPage != rhs.totalPage {return false}
    if lhs.page != rhs.page {return false}
    if lhs.itemInPage != rhs.itemInPage {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListAggregatorSMS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListAggregatorSMS"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "totalPage"),
    5: .same(proto: "page"),
    6: .same(proto: "itemInPage"),
    7: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      case 4: try decoder.decodeSingularInt64Field(value: &self.totalPage)
      case 5: try decoder.decodeSingularInt32Field(value: &self.page)
      case 6: try decoder.decodeSingularInt64Field(value: &self.itemInPage)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.data)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != 0 {
      try visitor.visitSingularInt32Field(value: self.status, fieldNumber: 1)
    }
    if self.code != 0 {
      try visitor.visitSingularInt32Field(value: self.code, fieldNumber: 2)
    }
    if !self.msg.isEmpty {
      try visitor.visitSingularStringField(value: self.msg, fieldNumber: 3)
    }
    if self.totalPage != 0 {
      try visitor.visitSingularInt64Field(value: self.totalPage, fieldNumber: 4)
    }
    if self.page != 0 {
      try visitor.visitSingularInt32Field(value: self.page, fieldNumber: 5)
    }
    if self.itemInPage != 0 {
      try visitor.visitSingularInt64Field(value: self.itemInPage, fieldNumber: 6)
    }
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListAggregatorSMS, rhs: Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_ListAggregatorSMS) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.totalPage != rhs.totalPage {return false}
    if lhs.page != rhs.page {return false}
    if lhs.itemInPage != rhs.itemInPage {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
