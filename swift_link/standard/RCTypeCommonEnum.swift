//
//  RCTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// RC type
public enum RCType: Int {

	/// Spektrum DSM2
	case spektrumDsm2 = 0

	/// Spektrum DSMX
	case spektrumDsmx = 1
}

extension RCType: Enumeration {
    public static var typeName = "RC_TYPE"
    public static var typeDescription = "RC type"
    public static var allMembers = [spektrumDsm2, spektrumDsmx]
    public static var membersDescriptions = [("RC_TYPE_SPEKTRUM_DSM2", "Spektrum DSM2"), ("RC_TYPE_SPEKTRUM_DSMX", "Spektrum DSMX")]
    public static var enumEnd = UInt(2)
}
