//
//  VTOLTransitionHeadingCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Direction of VTOL transition
public enum VTOLTransitionHeading: Int {

	/// Respect the heading configuration of the vehicle.
	case vehicleDefault = 0

	/// Use the heading pointing towards the next waypoint.
	case nextWaypoint = 1

	/// Use the heading on takeoff (while sitting on the ground).
	case takeoff = 2

	/// Use the specified heading in parameter 4.
	case specified = 3

	/// Use the current heading when reaching takeoff altitude (potentially facing the wind when weather-vaning is active).
	case any = 4
}

extension VTOLTransitionHeading: Enumeration {
    public static var typeName = "VTOL_TRANSITION_HEADING"
    public static var typeDescription = "Direction of VTOL transition"
    public static var allMembers = [vehicleDefault, nextWaypoint, takeoff, specified, any]
    public static var membersDescriptions = [("VTOL_TRANSITION_HEADING_VEHICLE_DEFAULT", "Respect the heading configuration of the vehicle."), ("VTOL_TRANSITION_HEADING_NEXT_WAYPOINT", "Use the heading pointing towards the next waypoint."), ("VTOL_TRANSITION_HEADING_TAKEOFF", "Use the heading on takeoff (while sitting on the ground)."), ("VTOL_TRANSITION_HEADING_SPECIFIED", "Use the specified heading in parameter 4."), ("VTOL_TRANSITION_HEADING_ANY", "Use the current heading when reaching takeoff altitude (potentially facing the wind when weather-vaning is active).")]
    public static var enumEnd = UInt(5)
}
