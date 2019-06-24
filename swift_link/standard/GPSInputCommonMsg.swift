//
//  GPSInputCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// GPS sensor input message. This is a raw sensor value sent by the GPS. This is NOT the global position estimate of the system.
public struct GPSInput {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// ID of the GPS for multiple GPS inputs
	public let gpsId: UInt8

	/// Bitmap indicating which GPS input flags fields to ignore. All other fields must be provided.
	public let ignoreFlags: GPSInputIgnoreFlags

	/// GPS time (from start of GPS week)
	public let timeWeekMs: UInt32

	/// GPS week number
	public let timeWeek: UInt16

	/// 0-1: no fix, 2: 2D fix, 3: 3D fix. 4: 3D with DGPS. 5: 3D with RTK
	public let fixType: UInt8

	/// Latitude (WGS84)
	public let lat: Int32

	/// Longitude (WGS84)
	public let lon: Int32

	/// Altitude (MSL). Positive for up.
	public let alt: Float

	/// GPS HDOP horizontal dilution of position
	public let hdop: Float

	/// GPS VDOP vertical dilution of position
	public let vdop: Float

	/// GPS velocity in NORTH direction in earth-fixed NED frame
	public let vn: Float

	/// GPS velocity in EAST direction in earth-fixed NED frame
	public let ve: Float

	/// GPS velocity in DOWN direction in earth-fixed NED frame
	public let vd: Float

	/// GPS speed accuracy
	public let speedAccuracy: Float

	/// GPS horizontal accuracy
	public let horizAccuracy: Float

	/// GPS vertical accuracy
	public let vertAccuracy: Float

	/// Number of satellites visible.
	public let satellitesVisible: UInt8
}

extension GPSInput: Message {
    public static let id = UInt8(232)
    public static var typeName = "GPS_INPUT"
    public static var typeDescription = "GPS sensor input message. This is a raw sensor value sent by the GPS. This is NOT the global position estimate of the system."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("gpsId", 60, "UInt8", 0, "ID of the GPS for multiple GPS inputs"), ("ignoreFlags", 56, "GPSInputIgnoreFlags", 0, "Bitmap indicating which GPS input flags fields to ignore. All other fields must be provided."), ("timeWeekMs", 8, "UInt32", 0, "GPS time (from start of GPS week)"), ("timeWeek", 58, "UInt16", 0, "GPS week number"), ("fixType", 61, "UInt8", 0, "0-1: no fix, 2: 2D fix, 3: 3D fix. 4: 3D with DGPS. 5: 3D with RTK"), ("lat", 12, "Int32", 0, "Latitude (WGS84)"), ("lon", 16, "Int32", 0, "Longitude (WGS84)"), ("alt", 20, "Float", 0, "Altitude (MSL). Positive for up."), ("hdop", 24, "Float", 0, "GPS HDOP horizontal dilution of position"), ("vdop", 28, "Float", 0, "GPS VDOP vertical dilution of position"), ("vn", 32, "Float", 0, "GPS velocity in NORTH direction in earth-fixed NED frame"), ("ve", 36, "Float", 0, "GPS velocity in EAST direction in earth-fixed NED frame"), ("vd", 40, "Float", 0, "GPS velocity in DOWN direction in earth-fixed NED frame"), ("speedAccuracy", 44, "Float", 0, "GPS speed accuracy"), ("horizAccuracy", 48, "Float", 0, "GPS horizontal accuracy"), ("vertAccuracy", 52, "Float", 0, "GPS vertical accuracy"), ("satellitesVisible", 62, "UInt8", 0, "Number of satellites visible.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		timeWeekMs = try data.number(at: 8)
		lat = try data.number(at: 12)
		lon = try data.number(at: 16)
		alt = try data.number(at: 20)
		hdop = try data.number(at: 24)
		vdop = try data.number(at: 28)
		vn = try data.number(at: 32)
		ve = try data.number(at: 36)
		vd = try data.number(at: 40)
		speedAccuracy = try data.number(at: 44)
		horizAccuracy = try data.number(at: 48)
		vertAccuracy = try data.number(at: 52)
		ignoreFlags = try data.enumeration(at: 56)
		timeWeek = try data.number(at: 58)
		gpsId = try data.number(at: 60)
		fixType = try data.number(at: 61)
		satellitesVisible = try data.number(at: 62)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 63)
		try payload.set(timeUsec, at: 0)
		try payload.set(timeWeekMs, at: 8)
		try payload.set(lat, at: 12)
		try payload.set(lon, at: 16)
		try payload.set(alt, at: 20)
		try payload.set(hdop, at: 24)
		try payload.set(vdop, at: 28)
		try payload.set(vn, at: 32)
		try payload.set(ve, at: 36)
		try payload.set(vd, at: 40)
		try payload.set(speedAccuracy, at: 44)
		try payload.set(horizAccuracy, at: 48)
		try payload.set(vertAccuracy, at: 52)
		try payload.set(ignoreFlags, at: 56)
		try payload.set(timeWeek, at: 58)
		try payload.set(gpsId, at: 60)
		try payload.set(fixType, at: 61)
		try payload.set(satellitesVisible, at: 62)
        return payload
    }
}
