//
//  MAVDistanceSensorCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Enumeration of distance sensor types
public enum MAVDistanceSensor: UInt8 {

	/// Laser rangefinder, e.g. LightWare SF02/F or PulsedLight units
	case laser = 0

	/// Ultrasound rangefinder, e.g. MaxBotix units
	case ultrasound = 1

	/// Infrared rangefinder, e.g. Sharp units
	case infrared = 2

	/// Radar type, e.g. uLanding units
	case radar = 3

	/// Broken or unknown type, e.g. analog units
	case unknown = 4
}

extension MAVDistanceSensor: Enumeration {
    public static var typeName = "MAV_DISTANCE_SENSOR"
    public static var typeDescription = "Enumeration of distance sensor types"
    public static var allMembers = [laser, ultrasound, infrared, radar, unknown]
    public static var membersDescriptions = [("MAV_DISTANCE_SENSOR_LASER", "Laser rangefinder, e.g. LightWare SF02/F or PulsedLight units"), ("MAV_DISTANCE_SENSOR_ULTRASOUND", "Ultrasound rangefinder, e.g. MaxBotix units"), ("MAV_DISTANCE_SENSOR_INFRARED", "Infrared rangefinder, e.g. Sharp units"), ("MAV_DISTANCE_SENSOR_RADAR", "Radar type, e.g. uLanding units"), ("MAV_DISTANCE_SENSOR_UNKNOWN", "Broken or unknown type, e.g. analog units")]
    public static var enumEnd = UInt(5)
}
