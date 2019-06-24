//
//  FenceBreachCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum FenceBreach: Int {

	/// No last fence breach
	case none = 0

	/// Breached minimum altitude
	case minalt = 1

	/// Breached maximum altitude
	case maxalt = 2

	/// Breached fence boundary
	case boundary = 3
}

extension FenceBreach: Enumeration {
    public static var typeName = "FENCE_BREACH"
    public static var typeDescription = ""
    public static var allMembers = [none, minalt, maxalt, boundary]
    public static var membersDescriptions = [("FENCE_BREACH_NONE", "No last fence breach"), ("FENCE_BREACH_MINALT", "Breached minimum altitude"), ("FENCE_BREACH_MAXALT", "Breached maximum altitude"), ("FENCE_BREACH_BOUNDARY", "Breached fence boundary")]
    public static var enumEnd = UInt(4)
}
