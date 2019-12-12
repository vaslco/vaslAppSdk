// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ReferralGlobal.proto
//
// For information on using the generated types, please see the documentation:
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

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ReferralCodeGet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var referralCode: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var link: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var registerCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCampaign {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_UpdateCampaign {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_DeleteCampaign {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CampaignDetail {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var campaignName: String = String()

  public var viewScore: Int32 = 0

  public var regiserScore: Int32 = 0

  public var registerCodeScore: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var page: Int32 = 0

  public var totalitems: Int64 = 0

  public var totalpages: Int64 = 0

  public var data: [Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CampaignDetail] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.vasl.vaslapp.modules.referral.global.proto.holder"

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ReferralCodeGet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReferralCodeGet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "referralCode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      case 4: try decoder.decodeSingularInt32Field(value: &self.referralCode)
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
    if self.referralCode != 0 {
      try visitor.visitSingularInt32Field(value: self.referralCode, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ReferralCodeGet, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ReferralCodeGet) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.referralCode != rhs.referralCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateLink"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "link"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      case 4: try decoder.decodeSingularStringField(value: &self.link)
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
    if !self.link.isEmpty {
      try visitor.visitSingularStringField(value: self.link, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.link != rhs.link {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateCode"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "registerCode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      case 4: try decoder.decodeSingularStringField(value: &self.registerCode)
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
    if !self.registerCode.isEmpty {
      try visitor.visitSingularStringField(value: self.registerCode, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.registerCode != rhs.registerCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InviteView"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InviteRegister"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RegisterCode"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCampaign: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateCampaign"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCampaign, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCampaign) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_UpdateCampaign: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateCampaign"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_UpdateCampaign, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_UpdateCampaign) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_DeleteCampaign: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteCampaign"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_DeleteCampaign, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_DeleteCampaign) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CampaignDetail: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CampaignDetail"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "campaignName"),
    3: .same(proto: "viewScore"),
    4: .same(proto: "regiserScore"),
    5: .same(proto: "registerCodeScore"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.campaignName)
      case 3: try decoder.decodeSingularInt32Field(value: &self.viewScore)
      case 4: try decoder.decodeSingularInt32Field(value: &self.regiserScore)
      case 5: try decoder.decodeSingularInt32Field(value: &self.registerCodeScore)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.campaignName.isEmpty {
      try visitor.visitSingularStringField(value: self.campaignName, fieldNumber: 2)
    }
    if self.viewScore != 0 {
      try visitor.visitSingularInt32Field(value: self.viewScore, fieldNumber: 3)
    }
    if self.regiserScore != 0 {
      try visitor.visitSingularInt32Field(value: self.regiserScore, fieldNumber: 4)
    }
    if self.registerCodeScore != 0 {
      try visitor.visitSingularInt32Field(value: self.registerCodeScore, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CampaignDetail, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CampaignDetail) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.campaignName != rhs.campaignName {return false}
    if lhs.viewScore != rhs.viewScore {return false}
    if lhs.regiserScore != rhs.regiserScore {return false}
    if lhs.registerCodeScore != rhs.registerCodeScore {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListCampaignPanel"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "page"),
    5: .same(proto: "totalitems"),
    6: .same(proto: "totalpages"),
    7: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.status)
      case 2: try decoder.decodeSingularInt32Field(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.msg)
      case 4: try decoder.decodeSingularInt32Field(value: &self.page)
      case 5: try decoder.decodeSingularInt64Field(value: &self.totalitems)
      case 6: try decoder.decodeSingularInt64Field(value: &self.totalpages)
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
    if self.page != 0 {
      try visitor.visitSingularInt32Field(value: self.page, fieldNumber: 4)
    }
    if self.totalitems != 0 {
      try visitor.visitSingularInt64Field(value: self.totalitems, fieldNumber: 5)
    }
    if self.totalpages != 0 {
      try visitor.visitSingularInt64Field(value: self.totalpages, fieldNumber: 6)
    }
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel, rhs: Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.page != rhs.page {return false}
    if lhs.totalitems != rhs.totalitems {return false}
    if lhs.totalpages != rhs.totalpages {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
