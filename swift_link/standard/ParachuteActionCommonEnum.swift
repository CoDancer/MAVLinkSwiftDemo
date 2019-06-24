//
//  ParachuteActionCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum ParachuteAction: Int {

	/// Disable parachute release.
	case parachuteDisable = 0

	/// Enable parachute release.
	case parachuteEnable = 1

	/// Release parachute.
	case parachuteRelease = 2
}

extension ParachuteAction: Enumeration {
    public static var typeName = "PARACHUTE_ACTION"
    public static var typeDescription = ""
    public static var allMembers = [parachuteDisable, parachuteEnable, parachuteRelease]
    public static var membersDescriptions = [("PARACHUTE_DISABLE", "Disable parachute release."), ("PARACHUTE_ENABLE", "Enable parachute release."), ("PARACHUTE_RELEASE", "Release parachute.")]
    public static var enumEnd = UInt(3)
}
