//
//  DistanceSensorCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Distance sensor information for an onboard rangefinder.
public struct DistanceSensor {

	/// Timestamp (time since system boot).
	public let timeBootMs: UInt32

	/// Minimum distance the sensor can measure
	public let minDistance: UInt16

	/// Maximum distance the sensor can measure
	public let maxDistance: UInt16

	/// Current distance reading
	public let currentDistance: UInt16

	/// Type of distance sensor.
	public let type: MAVDistanceSensor

	/// Onboard ID of the sensor
	public let id: UInt8

	/// Direction the sensor faces. downward-facing: ROTATION_PITCH_270, upward-facing: ROTATION_PITCH_90, backward-facing: ROTATION_PITCH_180, forward-facing: ROTATION_NONE, left-facing: ROTATION_YAW_90, right-facing: ROTATION_YAW_270
	public let orientation: MAVSensorOrientation

	/// Measurement variance. Max standard deviation is 6cm. 255 if unknown.
	public let covariance: UInt8
}

extension DistanceSensor: Message {
    public static let id = UInt8(132)
    public static var typeName = "DISTANCE_SENSOR"
    public static var typeDescription = "Distance sensor information for an onboard rangefinder."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (time since system boot)."), ("minDistance", 4, "UInt16", 0, "Minimum distance the sensor can measure"), ("maxDistance", 6, "UInt16", 0, "Maximum distance the sensor can measure"), ("currentDistance", 8, "UInt16", 0, "Current distance reading"), ("type", 10, "MAVDistanceSensor", 0, "Type of distance sensor."), ("id", 11, "UInt8", 0, "Onboard ID of the sensor"), ("orientation", 12, "MAVSensorOrientation", 0, "Direction the sensor faces. downward-facing: ROTATION_PITCH_270, upward-facing: ROTATION_PITCH_90, backward-facing: ROTATION_PITCH_180, forward-facing: ROTATION_NONE, left-facing: ROTATION_YAW_90, right-facing: ROTATION_YAW_270"), ("covariance", 13, "UInt8", 0, "Measurement variance. Max standard deviation is 6cm. 255 if unknown.")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		minDistance = try data.number(at: 4)
		maxDistance = try data.number(at: 6)
		currentDistance = try data.number(at: 8)
		type = try data.enumeration(at: 10)
		id = try data.number(at: 11)
		orientation = try data.enumeration(at: 12)
		covariance = try data.number(at: 13)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(timeBootMs, at: 0)
		try payload.set(minDistance, at: 4)
		try payload.set(maxDistance, at: 6)
		try payload.set(currentDistance, at: 8)
		try payload.set(type, at: 10)
		try payload.set(id, at: 11)
		try payload.set(orientation, at: 12)
		try payload.set(covariance, at: 13)
        return payload
    }
}
