//
//  HighLatencyCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Message appropriate for high latency connections like Iridium
public struct HighLatency {

	/// Bitmap of enabled system modes.
	public let baseMode: MAVModeFlag

	/// A bitfield for use for autopilot-specific flags.
	public let customMode: UInt32

	/// The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown.
	public let landedState: MAVLandedState

	/// roll
	public let roll: Int16

	/// pitch
	public let pitch: Int16

	/// heading
	public let heading: UInt16

	/// throttle (percentage)
	public let throttle: Int8

	/// heading setpoint
	public let headingSp: Int16

	/// Latitude
	public let latitude: Int32

	/// Longitude
	public let longitude: Int32

	/// Altitude above mean sea level
	public let altitudeAmsl: Int16

	/// Altitude setpoint relative to the home position
	public let altitudeSp: Int16

	/// airspeed
	public let airspeed: UInt8

	/// airspeed setpoint
	public let airspeedSp: UInt8

	/// groundspeed
	public let groundspeed: UInt8

	/// climb rate
	public let climbRate: Int8

	/// Number of satellites visible. If unknown, set to 255
	public let gpsNsat: UInt8

	/// GPS Fix type.
	public let gpsFixType: GPSFixType

	/// Remaining battery (percentage)
	public let batteryRemaining: UInt8

	/// Autopilot temperature (degrees C)
	public let temperature: Int8

	/// Air temperature (degrees C) from airspeed sensor
	public let temperatureAir: Int8

	/// failsafe (each bit represents a failsafe where 0=ok, 1=failsafe active (bit0:RC, bit1:batt, bit2:GPS, bit3:GCS, bit4:fence)
	public let failsafe: UInt8

	/// current waypoint number
	public let wpNum: UInt8

	/// distance to target
	public let wpDistance: UInt16
}

extension HighLatency: Message {
    public static let id = UInt8(234)
    public static var typeName = "HIGH_LATENCY"
    public static var typeDescription = "Message appropriate for high latency connections like Iridium"
    public static var fieldDefinitions: [FieldDefinition] = [("baseMode", 26, "MAVModeFlag", 0, "Bitmap of enabled system modes."), ("customMode", 0, "UInt32", 0, "A bitfield for use for autopilot-specific flags."), ("landedState", 27, "MAVLandedState", 0, "The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown."), ("roll", 12, "Int16", 0, "roll"), ("pitch", 14, "Int16", 0, "pitch"), ("heading", 16, "UInt16", 0, "heading"), ("throttle", 28, "Int8", 0, "throttle (percentage)"), ("headingSp", 18, "Int16", 0, "heading setpoint"), ("latitude", 4, "Int32", 0, "Latitude"), ("longitude", 8, "Int32", 0, "Longitude"), ("altitudeAmsl", 20, "Int16", 0, "Altitude above mean sea level"), ("altitudeSp", 22, "Int16", 0, "Altitude setpoint relative to the home position"), ("airspeed", 29, "UInt8", 0, "airspeed"), ("airspeedSp", 30, "UInt8", 0, "airspeed setpoint"), ("groundspeed", 31, "UInt8", 0, "groundspeed"), ("climbRate", 32, "Int8", 0, "climb rate"), ("gpsNsat", 33, "UInt8", 0, "Number of satellites visible. If unknown, set to 255"), ("gpsFixType", 34, "GPSFixType", 0, "GPS Fix type."), ("batteryRemaining", 35, "UInt8", 0, "Remaining battery (percentage)"), ("temperature", 36, "Int8", 0, "Autopilot temperature (degrees C)"), ("temperatureAir", 37, "Int8", 0, "Air temperature (degrees C) from airspeed sensor"), ("failsafe", 38, "UInt8", 0, "failsafe (each bit represents a failsafe where 0=ok, 1=failsafe active (bit0:RC, bit1:batt, bit2:GPS, bit3:GCS, bit4:fence)"), ("wpNum", 39, "UInt8", 0, "current waypoint number"), ("wpDistance", 24, "UInt16", 0, "distance to target")]

    public init(data: Data) throws {
		customMode = try data.number(at: 0)
		latitude = try data.number(at: 4)
		longitude = try data.number(at: 8)
		roll = try data.number(at: 12)
		pitch = try data.number(at: 14)
		heading = try data.number(at: 16)
		headingSp = try data.number(at: 18)
		altitudeAmsl = try data.number(at: 20)
		altitudeSp = try data.number(at: 22)
		wpDistance = try data.number(at: 24)
		baseMode = try data.enumeration(at: 26)
		landedState = try data.enumeration(at: 27)
		throttle = try data.number(at: 28)
		airspeed = try data.number(at: 29)
		airspeedSp = try data.number(at: 30)
		groundspeed = try data.number(at: 31)
		climbRate = try data.number(at: 32)
		gpsNsat = try data.number(at: 33)
		gpsFixType = try data.enumeration(at: 34)
		batteryRemaining = try data.number(at: 35)
		temperature = try data.number(at: 36)
		temperatureAir = try data.number(at: 37)
		failsafe = try data.number(at: 38)
		wpNum = try data.number(at: 39)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 40)
		try payload.set(customMode, at: 0)
		try payload.set(latitude, at: 4)
		try payload.set(longitude, at: 8)
		try payload.set(roll, at: 12)
		try payload.set(pitch, at: 14)
		try payload.set(heading, at: 16)
		try payload.set(headingSp, at: 18)
		try payload.set(altitudeAmsl, at: 20)
		try payload.set(altitudeSp, at: 22)
		try payload.set(wpDistance, at: 24)
		try payload.set(baseMode, at: 26)
		try payload.set(landedState, at: 27)
		try payload.set(throttle, at: 28)
		try payload.set(airspeed, at: 29)
		try payload.set(airspeedSp, at: 30)
		try payload.set(groundspeed, at: 31)
		try payload.set(climbRate, at: 32)
		try payload.set(gpsNsat, at: 33)
		try payload.set(gpsFixType, at: 34)
		try payload.set(batteryRemaining, at: 35)
		try payload.set(temperature, at: 36)
		try payload.set(temperatureAir, at: 37)
		try payload.set(failsafe, at: 38)
		try payload.set(wpNum, at: 39)
        return payload
    }
}
