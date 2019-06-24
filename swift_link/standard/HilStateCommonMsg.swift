//
//  HilStateCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Sent from simulation to autopilot. This packet is useful for high throughput applications such as hardware in the loop simulations.
public struct HilState {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Roll angle
	public let roll: Float

	/// Pitch angle
	public let pitch: Float

	/// Yaw angle
	public let yaw: Float

	/// Body frame roll / phi angular speed
	public let rollspeed: Float

	/// Body frame pitch / theta angular speed
	public let pitchspeed: Float

	/// Body frame yaw / psi angular speed
	public let yawspeed: Float

	/// Latitude
	public let lat: Int32

	/// Longitude
	public let lon: Int32

	/// Altitude
	public let alt: Int32

	/// Ground X Speed (Latitude)
	public let vx: Int16

	/// Ground Y Speed (Longitude)
	public let vy: Int16

	/// Ground Z Speed (Altitude)
	public let vz: Int16

	/// X acceleration
	public let xacc: Int16

	/// Y acceleration
	public let yacc: Int16

	/// Z acceleration
	public let zacc: Int16
}

extension HilState: Message {
    public static let id = UInt8(90)
    public static var typeName = "HIL_STATE"
    public static var typeDescription = "Sent from simulation to autopilot. This packet is useful for high throughput applications such as hardware in the loop simulations."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("roll", 8, "Float", 0, "Roll angle"), ("pitch", 12, "Float", 0, "Pitch angle"), ("yaw", 16, "Float", 0, "Yaw angle"), ("rollspeed", 20, "Float", 0, "Body frame roll / phi angular speed"), ("pitchspeed", 24, "Float", 0, "Body frame pitch / theta angular speed"), ("yawspeed", 28, "Float", 0, "Body frame yaw / psi angular speed"), ("lat", 32, "Int32", 0, "Latitude"), ("lon", 36, "Int32", 0, "Longitude"), ("alt", 40, "Int32", 0, "Altitude"), ("vx", 44, "Int16", 0, "Ground X Speed (Latitude)"), ("vy", 46, "Int16", 0, "Ground Y Speed (Longitude)"), ("vz", 48, "Int16", 0, "Ground Z Speed (Altitude)"), ("xacc", 50, "Int16", 0, "X acceleration"), ("yacc", 52, "Int16", 0, "Y acceleration"), ("zacc", 54, "Int16", 0, "Z acceleration")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		roll = try data.number(at: 8)
		pitch = try data.number(at: 12)
		yaw = try data.number(at: 16)
		rollspeed = try data.number(at: 20)
		pitchspeed = try data.number(at: 24)
		yawspeed = try data.number(at: 28)
		lat = try data.number(at: 32)
		lon = try data.number(at: 36)
		alt = try data.number(at: 40)
		vx = try data.number(at: 44)
		vy = try data.number(at: 46)
		vz = try data.number(at: 48)
		xacc = try data.number(at: 50)
		yacc = try data.number(at: 52)
		zacc = try data.number(at: 54)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 56)
		try payload.set(timeUsec, at: 0)
		try payload.set(roll, at: 8)
		try payload.set(pitch, at: 12)
		try payload.set(yaw, at: 16)
		try payload.set(rollspeed, at: 20)
		try payload.set(pitchspeed, at: 24)
		try payload.set(yawspeed, at: 28)
		try payload.set(lat, at: 32)
		try payload.set(lon, at: 36)
		try payload.set(alt, at: 40)
		try payload.set(vx, at: 44)
		try payload.set(vy, at: 46)
		try payload.set(vz, at: 48)
		try payload.set(xacc, at: 50)
		try payload.set(yacc, at: 52)
		try payload.set(zacc, at: 54)
        return payload
    }
}
