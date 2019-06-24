//
//  GPSInjectDataCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Data for injecting into the onboard GPS (used for DGPS)
public struct GPSInjectData {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Data length
	public let len: UInt8

	/// Raw data (110 is enough for 12 satellites of RTCMv2)
	public let data: [UInt8]
}

extension GPSInjectData: Message {
    public static let id = UInt8(123)
    public static var typeName = "GPS_INJECT_DATA"
    public static var typeDescription = "Data for injecting into the onboard GPS (used for DGPS)"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("len", 2, "UInt8", 0, "Data length"), ("data", 3, "[UInt8]", 110, "Raw data (110 is enough for 12 satellites of RTCMv2)")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		len = try data.number(at: 2)
		self.data = try data.array(at: 3, capacity: 110)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 113)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(len, at: 2)
		try payload.set(data, at: 3, capacity: 110)
        return payload
    }
}
