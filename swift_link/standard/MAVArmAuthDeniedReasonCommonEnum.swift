//
//  MAVArmAuthDeniedReasonCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MAVArmAuthDeniedReason: Int {

	/// Not a specific reason
	case generic = 0

	/// Authorizer will send the error as string to GCS
	case none = 1

	/// At least one waypoint have a invalid value
	case invalidWaypoint = 2

	/// Timeout in the authorizer process(in case it depends on network)
	case timeout = 3

	/// Airspace of the mission in use by another vehicle, second result parameter can have the waypoint id that caused it to be denied.
	case airspaceInUse = 4

	/// Weather is not good to fly
	case badWeather = 5
}

extension MAVArmAuthDeniedReason: Enumeration {
    public static var typeName = "MAV_ARM_AUTH_DENIED_REASON"
    public static var typeDescription = ""
    public static var allMembers = [generic, none, invalidWaypoint, timeout, airspaceInUse, badWeather]
    public static var membersDescriptions = [("MAV_ARM_AUTH_DENIED_REASON_GENERIC", "Not a specific reason"), ("MAV_ARM_AUTH_DENIED_REASON_NONE", "Authorizer will send the error as string to GCS"), ("MAV_ARM_AUTH_DENIED_REASON_INVALID_WAYPOINT", "At least one waypoint have a invalid value"), ("MAV_ARM_AUTH_DENIED_REASON_TIMEOUT", "Timeout in the authorizer process(in case it depends on network)"), ("MAV_ARM_AUTH_DENIED_REASON_AIRSPACE_IN_USE", "Airspace of the mission in use by another vehicle, second result parameter can have the waypoint id that caused it to be denied."), ("MAV_ARM_AUTH_DENIED_REASON_BAD_WEATHER", "Weather is not good to fly")]
    public static var enumEnd = UInt(6)
}
