//
//  AttitudeQuaternionCovCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0).
public struct AttitudeQuaternionCov {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation)
	public let q: [Float]

	/// Roll angular speed
	public let rollspeed: Float

	/// Pitch angular speed
	public let pitchspeed: Float

	/// Yaw angular speed
	public let yawspeed: Float

	/// Row-major representation of a 3x3 attitude covariance matrix (states: roll, pitch, yaw; first three entries are the first ROW, next three entries are the second row, etc.). If unknown, assign NaN value to first element in the array.
	public let covariance: [Float]
}

extension AttitudeQuaternionCov: Message {
    public static let id = UInt8(61)
    public static var typeName = "ATTITUDE_QUATERNION_COV"
    public static var typeDescription = "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0)."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("q", 8, "[Float]", 4, "Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation)"), ("rollspeed", 24, "Float", 0, "Roll angular speed"), ("pitchspeed", 28, "Float", 0, "Pitch angular speed"), ("yawspeed", 32, "Float", 0, "Yaw angular speed"), ("covariance", 36, "[Float]", 9, "Row-major representation of a 3x3 attitude covariance matrix (states: roll, pitch, yaw; first three entries are the first ROW, next three entries are the second row, etc.). If unknown, assign NaN value to first element in the array.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		q = try data.array(at: 8, capacity: 4)
		rollspeed = try data.number(at: 24)
		pitchspeed = try data.number(at: 28)
		yawspeed = try data.number(at: 32)
		covariance = try data.array(at: 36, capacity: 9)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 72)
		try payload.set(timeUsec, at: 0)
		try payload.set(q, at: 8, capacity: 4)
		try payload.set(rollspeed, at: 24)
		try payload.set(pitchspeed, at: 28)
		try payload.set(yawspeed, at: 32)
		try payload.set(covariance, at: 36, capacity: 9)
        return payload
    }
}
