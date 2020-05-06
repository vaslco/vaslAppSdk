// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Health.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterDel {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Int32 = 0

  public var code: Int32 = 0

  public var msg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterRead {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var name: String = String()

  public var description_p: String = String()

  public var latitude: String = String()

  public var location: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location {
    get {return _location ?? Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location()}
    set {_location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return self._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {self._location = nil}

  public var loc: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc {
    get {return _loc ?? Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc()}
    set {_loc = newValue}
  }
  /// Returns true if `loc` has been explicitly set.
  public var hasLoc: Bool {return self._loc != nil}
  /// Clears the value of `loc`. Subsequent reads from it will return its default value.
  public mutating func clearLoc() {self._loc = nil}

  public var info: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info {
    get {return _info ?? Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info()}
    set {_info = newValue}
  }
  /// Returns true if `info` has been explicitly set.
  public var hasInfo: Bool {return self._info != nil}
  /// Clears the value of `info`. Subsequent reads from it will return its default value.
  public mutating func clearInfo() {self._info = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _location: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location? = nil
  fileprivate var _loc: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc? = nil
  fileprivate var _info: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info? = nil
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///    string id = 1;
  public var title: String = String()

  public var metaData: String = String()

  public var insertTime: Int64 = 0

  public var insertTimeText: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: String = String()

  public var coordinates: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates {
    get {return _coordinates ?? Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates()}
    set {_coordinates = newValue}
  }
  /// Returns true if `coordinates` has been explicitly set.
  public var hasCoordinates: Bool {return self._coordinates != nil}
  /// Clears the value of `coordinates`. Subsequent reads from it will return its default value.
  public mutating func clearCoordinates() {self._coordinates = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _coordinates: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates? = nil
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var longitude: Float = 0

  public var latitude: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var country: String = String()

  public var state: String = String()

  public var city: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.vasl.vaslapp.products.health.proto.holder"

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCenterAdd"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterDel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCenterDel"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterDel, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterDel) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCenterUpdate"
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

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.code != rhs.code {return false}
    if lhs.msg != rhs.msg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterRead: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCenterRead"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "description"),
    4: .same(proto: "latitude"),
    5: .same(proto: "location"),
    6: .same(proto: "loc"),
    7: .same(proto: "info"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularStringField(value: &self.description_p)
      case 4: try decoder.decodeSingularStringField(value: &self.latitude)
      case 5: try decoder.decodeSingularMessageField(value: &self._location)
      case 6: try decoder.decodeSingularMessageField(value: &self._loc)
      case 7: try decoder.decodeSingularMessageField(value: &self._info)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if !self.latitude.isEmpty {
      try visitor.visitSingularStringField(value: self.latitude, fieldNumber: 4)
    }
    if let v = self._location {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._loc {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._info {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterRead, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterRead) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.latitude != rhs.latitude {return false}
    if lhs._location != rhs._location {return false}
    if lhs._loc != rhs._loc {return false}
    if lhs._info != rhs._info {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Location"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "title"),
    3: .same(proto: "metaData"),
    4: .same(proto: "insertTime"),
    5: .same(proto: "insertTimeText"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeSingularStringField(value: &self.title)
      case 3: try decoder.decodeSingularStringField(value: &self.metaData)
      case 4: try decoder.decodeSingularInt64Field(value: &self.insertTime)
      case 5: try decoder.decodeSingularStringField(value: &self.insertTimeText)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 2)
    }
    if !self.metaData.isEmpty {
      try visitor.visitSingularStringField(value: self.metaData, fieldNumber: 3)
    }
    if self.insertTime != 0 {
      try visitor.visitSingularInt64Field(value: self.insertTime, fieldNumber: 4)
    }
    if !self.insertTimeText.isEmpty {
      try visitor.visitSingularStringField(value: self.insertTimeText, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Location) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.metaData != rhs.metaData {return false}
    if lhs.insertTime != rhs.insertTime {return false}
    if lhs.insertTimeText != rhs.insertTimeText {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Loc"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "coordinates"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.type)
      case 2: try decoder.decodeSingularMessageField(value: &self._coordinates)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if let v = self._coordinates {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Loc) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs._coordinates != rhs._coordinates {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Coordinates"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "longitude"),
    2: .same(proto: "latitude"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularFloatField(value: &self.longitude)
      case 2: try decoder.decodeSingularFloatField(value: &self.latitude)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.longitude != 0 {
      try visitor.visitSingularFloatField(value: self.longitude, fieldNumber: 1)
    }
    if self.latitude != 0 {
      try visitor.visitSingularFloatField(value: self.latitude, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Coordinates) -> Bool {
    if lhs.longitude != rhs.longitude {return false}
    if lhs.latitude != rhs.latitude {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Info"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "country"),
    2: .same(proto: "state"),
    3: .same(proto: "city"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.country)
      case 2: try decoder.decodeSingularStringField(value: &self.state)
      case 3: try decoder.decodeSingularStringField(value: &self.city)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.country.isEmpty {
      try visitor.visitSingularStringField(value: self.country, fieldNumber: 1)
    }
    if !self.state.isEmpty {
      try visitor.visitSingularStringField(value: self.state, fieldNumber: 2)
    }
    if !self.city.isEmpty {
      try visitor.visitSingularStringField(value: self.city, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info, rhs: Com_Vasl_Vaslapp_Products_Health_Proto_Holder_Info) -> Bool {
    if lhs.country != rhs.country {return false}
    if lhs.state != rhs.state {return false}
    if lhs.city != rhs.city {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
