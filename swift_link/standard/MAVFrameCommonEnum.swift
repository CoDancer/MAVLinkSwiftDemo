//
//  MAVFrameCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MAVFrame: UInt8 {

	/// Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).
	case global = 0

	/// Local coordinate frame, Z-down (x: north, y: east, z: down).
	case localNed = 1

	/// NOT a coordinate frame, indicates a mission command.
	case mission = 2

	/// Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
	case globalRelativeAlt = 3

	/// Local coordinate frame, Z-up (x: east, y: north, z: up).
	case localEnu = 4

	/// Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).
	case globalInt = 5

	/// Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
	case globalRelativeAltInt = 6

	/// Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
	case localOffsetNed = 7

	/// Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
	case bodyNed = 8

	/// Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
	case bodyOffsetNed = 9

	/// Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
	case globalTerrainAlt = 10

	/// Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
	case globalTerrainAltInt = 11

	/// Body fixed frame of reference, Z-down (x: forward, y: right, z: down).
	case bodyFrd = 12

	/// Body fixed frame of reference, Z-up (x: forward, y: left, z: up).
	case bodyFlu = 13

	/// Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down).
	case mocapNed = 14

	/// Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up).
	case mocapEnu = 15

	/// Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down).
	case visionNed = 16

	/// Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up).
	case visionEnu = 17

	/// Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down).
	case estimNed = 18

	/// Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).
	case estimEnu = 19
}

extension MAVFrame: Enumeration {
    public static var typeName = "MAV_FRAME"
    public static var typeDescription = ""
    public static var allMembers = [global, localNed, mission, globalRelativeAlt, localEnu, globalInt, globalRelativeAltInt, localOffsetNed, bodyNed, bodyOffsetNed, globalTerrainAlt, globalTerrainAltInt, bodyFrd, bodyFlu, mocapNed, mocapEnu, visionNed, visionEnu, estimNed, estimEnu]
    public static var membersDescriptions = [("MAV_FRAME_GLOBAL", "Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)."), ("MAV_FRAME_LOCAL_NED", "Local coordinate frame, Z-down (x: north, y: east, z: down)."), ("MAV_FRAME_MISSION", "NOT a coordinate frame, indicates a mission command."), ("MAV_FRAME_GLOBAL_RELATIVE_ALT", "Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location."), ("MAV_FRAME_LOCAL_ENU", "Local coordinate frame, Z-up (x: east, y: north, z: up)."), ("MAV_FRAME_GLOBAL_INT", "Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)."), ("MAV_FRAME_GLOBAL_RELATIVE_ALT_INT", "Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location."), ("MAV_FRAME_LOCAL_OFFSET_NED", "Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position."), ("MAV_FRAME_BODY_NED", "Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right."), ("MAV_FRAME_BODY_OFFSET_NED", "Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east."), ("MAV_FRAME_GLOBAL_TERRAIN_ALT", "Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model."), ("MAV_FRAME_GLOBAL_TERRAIN_ALT_INT", "Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model."), ("MAV_FRAME_BODY_FRD", "Body fixed frame of reference, Z-down (x: forward, y: right, z: down)."), ("MAV_FRAME_BODY_FLU", "Body fixed frame of reference, Z-up (x: forward, y: left, z: up)."), ("MAV_FRAME_MOCAP_NED", "Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down)."), ("MAV_FRAME_MOCAP_ENU", "Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up)."), ("MAV_FRAME_VISION_NED", "Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down)."), ("MAV_FRAME_VISION_ENU", "Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up)."), ("MAV_FRAME_ESTIM_NED", "Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down)."), ("MAV_FRAME_ESTIM_ENU", "Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).")]
    public static var enumEnd = UInt(20)
}
