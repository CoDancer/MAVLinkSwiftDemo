//
//  AttPosMocapCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Motion capture attitude and position
public struct AttPosMocap {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0)
	public let q: [Float]

	/// X position (NED)
	public let x: Float

	/// Y position (NED)
	public let y: Float

	/// Z position (NED)
	public let z: Float
}

extension AttPosMocap: Message {
    public static let id = UInt8(138)
    public static var typeName = "ATT_POS_MOCAP"
    public static var typeDescription = "Motion capture attitude and position"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("q", 8, "[Float]", 4, "Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0)"), ("x", 24, "Float", 0, "X position (NED)"), ("y", 28, "Float", 0, "Y position (NED)"), ("z", 32, "Float", 0, "Z position (NED)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		q = try data.array(at: 8, capacity: 4)
		x = try data.number(at: 24)
		y = try data.number(at: 28)
		z = try data.number(at: 32)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 36)
		try payload.set(timeUsec, at: 0)
		try payload.set(q, at: 8, capacity: 4)
		try payload.set(x, at: 24)
		try payload.set(y, at: 28)
		try payload.set(z, at: 32)
        return payload
    }
}
