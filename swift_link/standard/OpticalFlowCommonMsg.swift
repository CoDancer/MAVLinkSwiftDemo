//
//  OpticalFlowCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Optical flow from a flow sensor (e.g. optical mouse sensor)
public struct OpticalFlow {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Sensor ID
	public let sensorId: UInt8

	/// Flow in x-sensor direction
	public let flowX: Int16

	/// Flow in y-sensor direction
	public let flowY: Int16

	/// Flow in x-sensor direction, angular-speed compensated
	public let flowCompMX: Float

	/// Flow in y-sensor direction, angular-speed compensated
	public let flowCompMY: Float

	/// Optical flow quality / confidence. 0: bad, 255: maximum quality
	public let quality: UInt8

	/// Ground distance. Positive value: distance known. Negative value: Unknown distance
	public let groundDistance: Float
}

extension OpticalFlow: Message {
    public static let id = UInt8(100)
    public static var typeName = "OPTICAL_FLOW"
    public static var typeDescription = "Optical flow from a flow sensor (e.g. optical mouse sensor)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("sensorId", 24, "UInt8", 0, "Sensor ID"), ("flowX", 20, "Int16", 0, "Flow in x-sensor direction"), ("flowY", 22, "Int16", 0, "Flow in y-sensor direction"), ("flowCompMX", 8, "Float", 0, "Flow in x-sensor direction, angular-speed compensated"), ("flowCompMY", 12, "Float", 0, "Flow in y-sensor direction, angular-speed compensated"), ("quality", 25, "UInt8", 0, "Optical flow quality / confidence. 0: bad, 255: maximum quality"), ("groundDistance", 16, "Float", 0, "Ground distance. Positive value: distance known. Negative value: Unknown distance")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		flowCompMX = try data.number(at: 8)
		flowCompMY = try data.number(at: 12)
		groundDistance = try data.number(at: 16)
		flowX = try data.number(at: 20)
		flowY = try data.number(at: 22)
		sensorId = try data.number(at: 24)
		quality = try data.number(at: 25)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 26)
		try payload.set(timeUsec, at: 0)
		try payload.set(flowCompMX, at: 8)
		try payload.set(flowCompMY, at: 12)
		try payload.set(groundDistance, at: 16)
		try payload.set(flowX, at: 20)
		try payload.set(flowY, at: 22)
		try payload.set(sensorId, at: 24)
		try payload.set(quality, at: 25)
        return payload
    }
}
