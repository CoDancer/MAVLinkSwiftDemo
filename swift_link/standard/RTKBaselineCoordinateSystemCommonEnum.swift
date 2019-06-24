//
//  RTKBaselineCoordinateSystemCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// RTK GPS baseline coordinate system, used for RTK corrections
public enum RTKBaselineCoordinateSystem: UInt8 {

	/// Earth-centered, Earth-fixed
	case ecef = 0

	/// North, East, Down
	case ned = 1
}

extension RTKBaselineCoordinateSystem: Enumeration {
    public static var typeName = "RTK_BASELINE_COORDINATE_SYSTEM"
    public static var typeDescription = "RTK GPS baseline coordinate system, used for RTK corrections"
    public static var allMembers = [ecef, ned]
    public static var membersDescriptions = [("RTK_BASELINE_COORDINATE_SYSTEM_ECEF", "Earth-centered, Earth-fixed"), ("RTK_BASELINE_COORDINATE_SYSTEM_NED", "North, East, Down")]
    public static var enumEnd = UInt(2)
}
