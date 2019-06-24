//
//  LocalPositionNEDCovCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)
public struct LocalPositionNEDCov {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Class id of the estimator this estimate originated from.
	public let estimatorType: MAVEstimatorType

	/// X Position
	public let x: Float

	/// Y Position
	public let y: Float

	/// Z Position
	public let z: Float

	/// X Speed
	public let vx: Float

	/// Y Speed
	public let vy: Float

	/// Z Speed
	public let vz: Float

	/// X Acceleration
	public let ax: Float

	/// Y Acceleration
	public let ay: Float

	/// Z Acceleration
	public let az: Float

	/// Row-major representation of position, velocity and acceleration 9x9 cross-covariance matrix upper right triangle (states: x, y, z, vx, vy, vz, ax, ay, az; first nine entries are the first ROW, next eight entries are the second row, etc.). If unknown, assign NaN value to first element in the array.
	public let covariance: [Float]
}

extension LocalPositionNEDCov: Message {
    public static let id = UInt8(64)
    public static var typeName = "LOCAL_POSITION_NED_COV"
    public static var typeDescription = "The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("estimatorType", 224, "MAVEstimatorType", 0, "Class id of the estimator this estimate originated from."), ("x", 8, "Float", 0, "X Position"), ("y", 12, "Float", 0, "Y Position"), ("z", 16, "Float", 0, "Z Position"), ("vx", 20, "Float", 0, "X Speed"), ("vy", 24, "Float", 0, "Y Speed"), ("vz", 28, "Float", 0, "Z Speed"), ("ax", 32, "Float", 0, "X Acceleration"), ("ay", 36, "Float", 0, "Y Acceleration"), ("az", 40, "Float", 0, "Z Acceleration"), ("covariance", 44, "[Float]", 45, "Row-major representation of position, velocity and acceleration 9x9 cross-covariance matrix upper right triangle (states: x, y, z, vx, vy, vz, ax, ay, az; first nine entries are the first ROW, next eight entries are the second row, etc.). If unknown, assign NaN value to first element in the array.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		x = try data.number(at: 8)
		y = try data.number(at: 12)
		z = try data.number(at: 16)
		vx = try data.number(at: 20)
		vy = try data.number(at: 24)
		vz = try data.number(at: 28)
		ax = try data.number(at: 32)
		ay = try data.number(at: 36)
		az = try data.number(at: 40)
		covariance = try data.array(at: 44, capacity: 45)
		estimatorType = try data.enumeration(at: 224)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 225)
		try payload.set(timeUsec, at: 0)
		try payload.set(x, at: 8)
		try payload.set(y, at: 12)
		try payload.set(z, at: 16)
		try payload.set(vx, at: 20)
		try payload.set(vy, at: 24)
		try payload.set(vz, at: 28)
		try payload.set(ax, at: 32)
		try payload.set(ay, at: 36)
		try payload.set(az, at: 40)
		try payload.set(covariance, at: 44, capacity: 45)
		try payload.set(estimatorType, at: 224)
        return payload
    }
}
