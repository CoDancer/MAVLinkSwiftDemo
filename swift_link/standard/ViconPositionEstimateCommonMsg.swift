//
//  ViconPositionEstimateCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Global position estimate from a Vicon motion system source.
public struct ViconPositionEstimate {

	/// Timestamp (UNIX time or time since system boot)
	public let usec: UInt64

	/// Global X position
	public let x: Float

	/// Global Y position
	public let y: Float

	/// Global Z position
	public let z: Float

	/// Roll angle
	public let roll: Float

	/// Pitch angle
	public let pitch: Float

	/// Yaw angle
	public let yaw: Float
}

extension ViconPositionEstimate: Message {
    public static let id = UInt8(104)
    public static var typeName = "VICON_POSITION_ESTIMATE"
    public static var typeDescription = "Global position estimate from a Vicon motion system source."
    public static var fieldDefinitions: [FieldDefinition] = [("usec", 0, "UInt64", 0, "Timestamp (UNIX time or time since system boot)"), ("x", 8, "Float", 0, "Global X position"), ("y", 12, "Float", 0, "Global Y position"), ("z", 16, "Float", 0, "Global Z position"), ("roll", 20, "Float", 0, "Roll angle"), ("pitch", 24, "Float", 0, "Pitch angle"), ("yaw", 28, "Float", 0, "Yaw angle")]

    public init(data: Data) throws {
		usec = try data.number(at: 0)
		x = try data.number(at: 8)
		y = try data.number(at: 12)
		z = try data.number(at: 16)
		roll = try data.number(at: 20)
		pitch = try data.number(at: 24)
		yaw = try data.number(at: 28)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 32)
		try payload.set(usec, at: 0)
		try payload.set(x, at: 8)
		try payload.set(y, at: 12)
		try payload.set(z, at: 16)
		try payload.set(roll, at: 20)
		try payload.set(pitch, at: 24)
		try payload.set(yaw, at: 28)
        return payload
    }
}
