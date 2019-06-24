//
//  GlobalPositionIntCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient.
public struct GlobalPositionInt {

	/// Timestamp (time since system boot).
	public let timeBootMs: UInt32

	/// Latitude, expressed
	public let lat: Int32

	/// Longitude, expressed
	public let lon: Int32

	/// Altitude (MSL). Note that virtually all GPS modules provide both WGS84 and MSL.
	public let alt: Int32

	/// Altitude above ground
	public let relativeAlt: Int32

	/// Ground X Speed (Latitude, positive north)
	public let vx: Int16

	/// Ground Y Speed (Longitude, positive east)
	public let vy: Int16

	/// Ground Z Speed (Altitude, positive down)
	public let vz: Int16

	/// Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
	public let hdg: UInt16
}

extension GlobalPositionInt: Message {
    public static let id = UInt8(33)
    public static var typeName = "GLOBAL_POSITION_INT"
    public static var typeDescription = "The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (time since system boot)."), ("lat", 4, "Int32", 0, "Latitude, expressed"), ("lon", 8, "Int32", 0, "Longitude, expressed"), ("alt", 12, "Int32", 0, "Altitude (MSL). Note that virtually all GPS modules provide both WGS84 and MSL."), ("relativeAlt", 16, "Int32", 0, "Altitude above ground"), ("vx", 20, "Int16", 0, "Ground X Speed (Latitude, positive north)"), ("vy", 22, "Int16", 0, "Ground Y Speed (Longitude, positive east)"), ("vz", 24, "Int16", 0, "Ground Z Speed (Altitude, positive down)"), ("hdg", 26, "UInt16", 0, "Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		lat = try data.number(at: 4)
		lon = try data.number(at: 8)
		alt = try data.number(at: 12)
		relativeAlt = try data.number(at: 16)
		vx = try data.number(at: 20)
		vy = try data.number(at: 22)
		vz = try data.number(at: 24)
		hdg = try data.number(at: 26)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(timeBootMs, at: 0)
		try payload.set(lat, at: 4)
		try payload.set(lon, at: 8)
		try payload.set(alt, at: 12)
		try payload.set(relativeAlt, at: 16)
		try payload.set(vx, at: 20)
		try payload.set(vy, at: 22)
		try payload.set(vz, at: 24)
		try payload.set(hdg, at: 26)
        return payload
    }
}
