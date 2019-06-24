//
//  SetFocusTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Focus types for MAV_CMD_SET_CAMERA_FOCUS
public enum SetFocusType: Int {

	/// Focus one step increment (-1 for focusing in, 1 for focusing out towards infinity).
	case focusTypeStep = 0

	/// Continuous focus up/down until stopped (-1 for focusing in, 1 for focusing out towards infinity, 0 to stop focusing)
	case focusTypeContinuous = 1

	/// Zoom value as proportion of full camera range (a value between 0.0 and 100.0)
	case focusTypeRange = 2
}

extension SetFocusType: Enumeration {
    public static var typeName = "SET_FOCUS_TYPE"
    public static var typeDescription = "Focus types for MAV_CMD_SET_CAMERA_FOCUS"
    public static var allMembers = [focusTypeStep, focusTypeContinuous, focusTypeRange]
    public static var membersDescriptions = [("FOCUS_TYPE_STEP", "Focus one step increment (-1 for focusing in, 1 for focusing out towards infinity)."), ("FOCUS_TYPE_CONTINUOUS", "Continuous focus up/down until stopped (-1 for focusing in, 1 for focusing out towards infinity, 0 to stop focusing)"), ("FOCUS_TYPE_RANGE", "Zoom value as proportion of full camera range (a value between 0.0 and 100.0)")]
    public static var enumEnd = UInt(3)
}
