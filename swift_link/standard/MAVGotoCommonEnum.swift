//
//  MAVGotoCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Actions that may be specified in MAV_CMD_OVERRIDE_GOTO to override mission execution.
public enum MAVGoto: Int {

	/// Hold at the current position.
	case doHold = 0

	/// Continue with the next item in mission execution.
	case doContinue = 1

	/// Hold at the current position of the system
	case holdAtCurrentPosition = 2

	/// Hold at the position specified in the parameters of the DO_HOLD action
	case holdAtSpecifiedPosition = 3
}

extension MAVGoto: Enumeration {
    public static var typeName = "MAV_GOTO"
    public static var typeDescription = "Actions that may be specified in MAV_CMD_OVERRIDE_GOTO to override mission execution."
    public static var allMembers = [doHold, doContinue, holdAtCurrentPosition, holdAtSpecifiedPosition]
    public static var membersDescriptions = [("MAV_GOTO_DO_HOLD", "Hold at the current position."), ("MAV_GOTO_DO_CONTINUE", "Continue with the next item in mission execution."), ("MAV_GOTO_HOLD_AT_CURRENT_POSITION", "Hold at the current position of the system"), ("MAV_GOTO_HOLD_AT_SPECIFIED_POSITION", "Hold at the position specified in the parameters of the DO_HOLD action")]
    public static var enumEnd = UInt(4)
}
