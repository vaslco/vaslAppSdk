// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: MobileConnect.proto
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

public struct Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var accessToken: String = String()

  public var tokenType: String = String()

  public var expiresIn: String = String()

  public var idToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  public var code: Int32 {
    get {return _storage._code}
    set {_uniqueStorage()._code = newValue}
  }

  public var msg: String {
    get {return _storage._msg}
    set {_uniqueStorage()._msg = newValue}
  }

  public var data: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData {
    get {return _storage._data ?? Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData()}
    set {_uniqueStorage()._data = newValue}
  }
  /// Returns true if `data` has been explicitly set.
  public var hasData: Bool {return _storage._data != nil}
  /// Clears the value of `data`. Subsequent reads from it will return its default value.
  public mutating func clearData() {_uniqueStorage()._data = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.vasl.vaslapp.modules.subscriber.global.proto.holder"

extension Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientCreate"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate, rhs: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthTokenData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "accessToken"),
    2: .standard(proto: "token_type"),
    3: .standard(proto: "expires_in"),
    4: .standard(proto: "id_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accessToken)
      case 2: try decoder.decodeSingularStringField(value: &self.tokenType)
      case 3: try decoder.decodeSingularStringField(value: &self.expiresIn)
      case 4: try decoder.decodeSingularStringField(value: &self.idToken)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accessToken.isEmpty {
      try visitor.visitSingularStringField(value: self.accessToken, fieldNumber: 1)
    }
    if !self.tokenType.isEmpty {
      try visitor.visitSingularStringField(value: self.tokenType, fieldNumber: 2)
    }
    if !self.expiresIn.isEmpty {
      try visitor.visitSingularStringField(value: self.expiresIn, fieldNumber: 3)
    }
    if !self.idToken.isEmpty {
      try visitor.visitSingularStringField(value: self.idToken, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData, rhs: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData) -> Bool {
    if lhs.accessToken != rhs.accessToken {return false}
    if lhs.tokenType != rhs.tokenType {return false}
    if lhs.expiresIn != rhs.expiresIn {return false}
    if lhs.idToken != rhs.idToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthToken"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "code"),
    3: .same(proto: "msg"),
    4: .same(proto: "data"),
  ]

  fileprivate class _StorageClass {
    var _status: Int32 = 0
    var _code: Int32 = 0
    var _msg: String = String()
    var _data: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthTokenData? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _status = source._status
      _code = source._code
      _msg = source._msg
      _data = source._data
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._status)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._code)
        case 3: try decoder.decodeSingularStringField(value: &_storage._msg)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._data)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._status != 0 {
        try visitor.visitSingularInt32Field(value: _storage._status, fieldNumber: 1)
      }
      if _storage._code != 0 {
        try visitor.visitSingularInt32Field(value: _storage._code, fieldNumber: 2)
      }
      if !_storage._msg.isEmpty {
        try visitor.visitSingularStringField(value: _storage._msg, fieldNumber: 3)
      }
      if let v = _storage._data {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken, rhs: Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._status != rhs_storage._status {return false}
        if _storage._code != rhs_storage._code {return false}
        if _storage._msg != rhs_storage._msg {return false}
        if _storage._data != rhs_storage._data {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
