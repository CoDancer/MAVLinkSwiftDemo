//
//  GPS2RawCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Second GPS data.
public struct GPS2Raw {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// GPS fix type.
	public let fixType: GPSFixType

	/// Latitude (WGS84)
	public let lat: Int32

	/// Longitude (WGS84)
	public let lon: Int32

	/// Altitude (MSL). Positive for up.
	public let alt: Int32

	/// GPS HDOP horizontal dilution of position. If unknown, set to: UINT16_MAX
	public let eph: UInt16

	/// GPS VDOP vertical dilution of position. If unknown, set to: UINT16_MAX
	public let epv: UInt16

	/// GPS ground speed. If unknown, set to: UINT16_MAX
	public let vel: UInt16

	/// Course over ground (NOT heading, but direction of movement): 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
	public let cog: UInt16

	/// Number of satellites visible. If unknown, set to 255
	public let satellitesVisible: UInt8

	/// Number of DGPS satellites
	public let dgpsNumch: UInt8

	/// Age of DGPS info
	public let dgpsAge: UInt32
}

extension GPS2Raw: Message {
    public static let id = UInt8(124)
    public static var typeName = "GPS2_RAW"
    public static var typeDescription = "Second GPS data."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("fixType", 32, "GPSFixType", 0, "GPS fix type."), ("lat", 8, "Int32", 0, "Latitude (WGS84)"), ("lon", 12, "Int32", 0, "Longitude (WGS84)"), ("alt", 16, "Int32", 0, "Altitude (MSL). Positive for up."), ("eph", 24, "UInt16", 0, "GPS HDOP horizontal dilution of position. If unknown, set to: UINT16_MAX"), ("epv", 26, "UInt16", 0, "GPS VDOP vertical dilution of position. If unknown, set to: UINT16_MAX"), ("vel", 28, "UInt16", 0, "GPS ground speed. If unknown, set to: UINT16_MAX"), ("cog", 30, "UInt16", 0, "Course over ground (NOT heading, but direction of movement): 0.0..359.99 degrees. If unknown, set to: UINT16_MAX"), ("satellitesVisible", 33, "UInt8", 0, "Number of satellites visible. If unknown, set to 255"), ("dgpsNumch", 34, "UInt8", 0, "Number of DGPS satellites"), ("dgpsAge", 20, "UInt32", 0, "Age of DGPS info")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		lat = try data.number(at: 8)
		lon = try data.number(at: 12)
		alt = try data.number(at: 16)
		dgpsAge = try data.number(at: 20)
		eph = try data.number(at: 24)
		epv = try data.number(at: 26)
		vel = try data.number(at: 28)
		cog = try data.number(at: 30)
		fixType = try data.enumeration(at: 32)
		satellitesVisible = try data.number(at: 33)
		dgpsNumch = try data.number(at: 34)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 35)
		try payload.set(timeUsec, at: 0)
		try payload.set(lat, at: 8)
		try payload.set(lon, at: 12)
		try payload.set(alt, at: 16)
		try payload.set(dgpsAge, at: 20)
		try payload.set(eph, at: 24)
		try payload.set(epv, at: 26)
		try payload.set(vel, at: 28)
		try payload.set(cog, at: 30)
		try payload.set(fixType, at: 32)
		try payload.set(satellitesVisible, at: 33)
		try payload.set(dgpsNumch, at: 34)
        return payload
    }
}
