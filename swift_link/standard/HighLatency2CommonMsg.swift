//
//  HighLatency2CommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Message appropriate for high latency connections like Iridium (version 2)
public struct HighLatency2 {

	/// Timestamp (milliseconds since boot or Unix epoch)
	public let timestamp: UInt32

	/// Type of the MAV (quadrotor, helicopter, etc.)
	public let type: MAVType

	/// Autopilot type / class.
	public let autopilot: MAVAutopilot

	/// A bitfield for use for autopilot-specific flags (2 byte version).
	public let customMode: UInt16

	/// Latitude
	public let latitude: Int32

	/// Longitude
	public let longitude: Int32

	/// Altitude above mean sea level
	public let altitude: Int16

	/// Altitude setpoint
	public let targetAltitude: Int16

	/// Heading
	public let heading: UInt8

	/// Heading setpoint
	public let targetHeading: UInt8

	/// Distance to target waypoint or position
	public let targetDistance: UInt16

	/// Throttle
	public let throttle: UInt8

	/// Airspeed
	public let airspeed: UInt8

	/// Airspeed setpoint
	public let airspeedSp: UInt8

	/// Groundspeed
	public let groundspeed: UInt8

	/// Windspeed
	public let windspeed: UInt8

	/// Wind heading
	public let windHeading: UInt8

	/// Maximum error horizontal position since last message
	public let eph: UInt8

	/// Maximum error vertical position since last message
	public let epv: UInt8

	/// Air temperature from airspeed sensor
	public let temperatureAir: Int8

	/// Maximum climb rate magnitude since last message
	public let climbRate: Int8

	/// Battery (percentage, -1 for DNU)
	public let battery: Int8

	/// Current waypoint number
	public let wpNum: UInt16

	/// Bitmap of failure flags.
	public let failureFlags: HlFailureFlag

	/// Field for custom payload.
	public let custom0: Int8

	/// Field for custom payload.
	public let custom1: Int8

	/// Field for custom payload.
	public let custom2: Int8
}

extension HighLatency2: Message {
    public static let id = UInt8(235)
    public static var typeName = "HIGH_LATENCY2"
    public static var typeDescription = "Message appropriate for high latency connections like Iridium (version 2)"
    public static var fieldDefinitions: [FieldDefinition] = [("timestamp", 0, "UInt32", 0, "Timestamp (milliseconds since boot or Unix epoch)"), ("type", 24, "MAVType", 0, "Type of the MAV (quadrotor, helicopter, etc.)"), ("autopilot", 25, "MAVAutopilot", 0, "Autopilot type / class."), ("customMode", 12, "UInt16", 0, "A bitfield for use for autopilot-specific flags (2 byte version)."), ("latitude", 4, "Int32", 0, "Latitude"), ("longitude", 8, "Int32", 0, "Longitude"), ("altitude", 14, "Int16", 0, "Altitude above mean sea level"), ("targetAltitude", 16, "Int16", 0, "Altitude setpoint"), ("heading", 26, "UInt8", 0, "Heading"), ("targetHeading", 27, "UInt8", 0, "Heading setpoint"), ("targetDistance", 18, "UInt16", 0, "Distance to target waypoint or position"), ("throttle", 28, "UInt8", 0, "Throttle"), ("airspeed", 29, "UInt8", 0, "Airspeed"), ("airspeedSp", 30, "UInt8", 0, "Airspeed setpoint"), ("groundspeed", 31, "UInt8", 0, "Groundspeed"), ("windspeed", 32, "UInt8", 0, "Windspeed"), ("windHeading", 33, "UInt8", 0, "Wind heading"), ("eph", 34, "UInt8", 0, "Maximum error horizontal position since last message"), ("epv", 35, "UInt8", 0, "Maximum error vertical position since last message"), ("temperatureAir", 36, "Int8", 0, "Air temperature from airspeed sensor"), ("climbRate", 37, "Int8", 0, "Maximum climb rate magnitude since last message"), ("battery", 38, "Int8", 0, "Battery (percentage, -1 for DNU)"), ("wpNum", 20, "UInt16", 0, "Current waypoint number"), ("failureFlags", 22, "HlFailureFlag", 0, "Bitmap of failure flags."), ("custom0", 39, "Int8", 0, "Field for custom payload."), ("custom1", 40, "Int8", 0, "Field for custom payload."), ("custom2", 41, "Int8", 0, "Field for custom payload.")]

    public init(data: Data) throws {
		timestamp = try data.number(at: 0)
		latitude = try data.number(at: 4)
		longitude = try data.number(at: 8)
		customMode = try data.number(at: 12)
		altitude = try data.number(at: 14)
		targetAltitude = try data.number(at: 16)
		targetDistance = try data.number(at: 18)
		wpNum = try data.number(at: 20)
		failureFlags = try data.enumeration(at: 22)
		type = try data.enumeration(at: 24)
		autopilot = try data.enumeration(at: 25)
		heading = try data.number(at: 26)
		targetHeading = try data.number(at: 27)
		throttle = try data.number(at: 28)
		airspeed = try data.number(at: 29)
		airspeedSp = try data.number(at: 30)
		groundspeed = try data.number(at: 31)
		windspeed = try data.number(at: 32)
		windHeading = try data.number(at: 33)
		eph = try data.number(at: 34)
		epv = try data.number(at: 35)
		temperatureAir = try data.number(at: 36)
		climbRate = try data.number(at: 37)
		battery = try data.number(at: 38)
		custom0 = try data.number(at: 39)
		custom1 = try data.number(at: 40)
		custom2 = try data.number(at: 41)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 42)
		try payload.set(timestamp, at: 0)
		try payload.set(latitude, at: 4)
		try payload.set(longitude, at: 8)
		try payload.set(customMode, at: 12)
		try payload.set(altitude, at: 14)
		try payload.set(targetAltitude, at: 16)
		try payload.set(targetDistance, at: 18)
		try payload.set(wpNum, at: 20)
		try payload.set(failureFlags, at: 22)
		try payload.set(type, at: 24)
		try payload.set(autopilot, at: 25)
		try payload.set(heading, at: 26)
		try payload.set(targetHeading, at: 27)
		try payload.set(throttle, at: 28)
		try payload.set(airspeed, at: 29)
		try payload.set(airspeedSp, at: 30)
		try payload.set(groundspeed, at: 31)
		try payload.set(windspeed, at: 32)
		try payload.set(windHeading, at: 33)
		try payload.set(eph, at: 34)
		try payload.set(epv, at: 35)
		try payload.set(temperatureAir, at: 36)
		try payload.set(climbRate, at: 37)
		try payload.set(battery, at: 38)
		try payload.set(custom0, at: 39)
		try payload.set(custom1, at: 40)
		try payload.set(custom2, at: 41)
        return payload
    }
}
