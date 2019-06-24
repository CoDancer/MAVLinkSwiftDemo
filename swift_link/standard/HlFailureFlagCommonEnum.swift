//
//  HlFailureFlagCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Flags to report failure cases over the high latency telemtry.
public enum HlFailureFlag: UInt16 {

	/// GPS failure.
	case gps = 1

	/// Differential pressure sensor failure.
	case differentialPressure = 2

	/// Absolute pressure sensor failure.
	case absolutePressure = 4

	/// Accelerometer sensor failure.
	case mav3dAccel = 8

	/// Gyroscope sensor failure.
	case mav3dGyro = 16

	/// Magnetometer sensor failure.
	case mav3dMag = 32

	/// Terrain subsystem failure.
	case terrain = 64

	/// Battery failure/critical low battery.
	case battery = 128

	/// RC receiver failure/no rc connection.
	case rcReceiver = 256

	/// Offboard link failure.
	case offboardLink = 512

	/// Engine failure.
	case engine = 1024

	/// Geofence violation.
	case geofence = 2048

	/// Estimator failure, for example measurement rejection or large variances.
	case estimator = 4096

	/// Mission failure.
	case mission = 8192
}

extension HlFailureFlag: Enumeration {
    public static var typeName = "HL_FAILURE_FLAG"
    public static var typeDescription = "Flags to report failure cases over the high latency telemtry."
    public static var allMembers = [gps, differentialPressure, absolutePressure, mav3dAccel, mav3dGyro, mav3dMag, terrain, battery, rcReceiver, offboardLink, engine, geofence, estimator, mission]
    public static var membersDescriptions = [("HL_FAILURE_FLAG_GPS", "GPS failure."), ("HL_FAILURE_FLAG_DIFFERENTIAL_PRESSURE", "Differential pressure sensor failure."), ("HL_FAILURE_FLAG_ABSOLUTE_PRESSURE", "Absolute pressure sensor failure."), ("HL_FAILURE_FLAG_3D_ACCEL", "Accelerometer sensor failure."), ("HL_FAILURE_FLAG_3D_GYRO", "Gyroscope sensor failure."), ("HL_FAILURE_FLAG_3D_MAG", "Magnetometer sensor failure."), ("HL_FAILURE_FLAG_TERRAIN", "Terrain subsystem failure."), ("HL_FAILURE_FLAG_BATTERY", "Battery failure/critical low battery."), ("HL_FAILURE_FLAG_RC_RECEIVER", "RC receiver failure/no rc connection."), ("HL_FAILURE_FLAG_OFFBOARD_LINK", "Offboard link failure."), ("HL_FAILURE_FLAG_ENGINE", "Engine failure."), ("HL_FAILURE_FLAG_GEOFENCE", "Geofence violation."), ("HL_FAILURE_FLAG_ESTIMATOR", "Estimator failure, for example measurement rejection or large variances."), ("HL_FAILURE_FLAG_MISSION", "Mission failure.")]
    public static var enumEnd = UInt(8193)
}
