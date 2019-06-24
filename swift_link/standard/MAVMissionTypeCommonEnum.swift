//
//  MAVMissionTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Type of mission items being requested/sent in mission protocol.
public enum MAVMissionType: UInt8 {

	/// Items are mission commands for main mission.
	case mission = 0

	/// Specifies GeoFence area(s). Items are MAV_CMD_NAV_FENCE_ GeoFence items.
	case fence = 1

	/// Specifies the rally points for the vehicle. Rally points are alternative RTL points. Items are MAV_CMD_NAV_RALLY_POINT rally point items.
	case rally = 2

	/// Only used in MISSION_CLEAR_ALL to clear all mission types.
	case all = 255
}

extension MAVMissionType: Enumeration {
    public static var typeName = "MAV_MISSION_TYPE"
    public static var typeDescription = "Type of mission items being requested/sent in mission protocol."
    public static var allMembers = [mission, fence, rally, all]
    public static var membersDescriptions = [("MAV_MISSION_TYPE_MISSION", "Items are mission commands for main mission."), ("MAV_MISSION_TYPE_FENCE", "Specifies GeoFence area(s). Items are MAV_CMD_NAV_FENCE_ GeoFence items."), ("MAV_MISSION_TYPE_RALLY", "Specifies the rally points for the vehicle. Rally points are alternative RTL points. Items are MAV_CMD_NAV_RALLY_POINT rally point items."), ("MAV_MISSION_TYPE_ALL", "Only used in MISSION_CLEAR_ALL to clear all mission types.")]
    public static var enumEnd = UInt(256)
}
