//
//  LandingTargetCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The location of a landing target. See: https://mavlink.io/en/services/landing_target.html
public struct LandingTarget {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// The ID of the target if multiple targets are present
	public let targetNum: UInt8

	/// Coordinate frame used for following fields.
	public let frame: MAVFrame

	/// X-axis angular offset of the target from the center of the image
	public let angleX: Float

	/// Y-axis angular offset of the target from the center of the image
	public let angleY: Float

	/// Distance to the target from the vehicle
	public let distance: Float

	/// Size of target along x-axis
	public let sizeX: Float

	/// Size of target along y-axis
	public let sizeY: Float
}

extension LandingTarget: Message {
    public static let id = UInt8(149)
    public static var typeName = "LANDING_TARGET"
    public static var typeDescription = "The location of a landing target. See: https://mavlink.io/en/services/landing_target.html"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("targetNum", 28, "UInt8", 0, "The ID of the target if multiple targets are present"), ("frame", 29, "MAVFrame", 0, "Coordinate frame used for following fields."), ("angleX", 8, "Float", 0, "X-axis angular offset of the target from the center of the image"), ("angleY", 12, "Float", 0, "Y-axis angular offset of the target from the center of the image"), ("distance", 16, "Float", 0, "Distance to the target from the vehicle"), ("sizeX", 20, "Float", 0, "Size of target along x-axis"), ("sizeY", 24, "Float", 0, "Size of target along y-axis")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		angleX = try data.number(at: 8)
		angleY = try data.number(at: 12)
		distance = try data.number(at: 16)
		sizeX = try data.number(at: 20)
		sizeY = try data.number(at: 24)
		targetNum = try data.number(at: 28)
		frame = try data.enumeration(at: 29)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 30)
		try payload.set(timeUsec, at: 0)
		try payload.set(angleX, at: 8)
		try payload.set(angleY, at: 12)
		try payload.set(distance, at: 16)
		try payload.set(sizeX, at: 20)
		try payload.set(sizeY, at: 24)
		try payload.set(targetNum, at: 28)
		try payload.set(frame, at: 29)
        return payload
    }
}
