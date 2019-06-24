//
//  MAVMissionResultCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Result of mission operation (in a MISSION_ACK message).
public enum MAVMissionResult: UInt8 {

	/// mission accepted OK
	case mavMissionAccepted = 0

	/// Generic error / not accepting mission commands at all right now.
	case mavMissionError = 1

	/// Coordinate frame is not supported.
	case mavMissionUnsupportedFrame = 2

	/// Command is not supported.
	case mavMissionUnsupported = 3

	/// Mission item exceeds storage space.
	case mavMissionNoSpace = 4

	/// One of the parameters has an invalid value.
	case mavMissionInvalid = 5

	/// param1 has an invalid value.
	case mavMissionInvalidParam1 = 6

	/// param2 has an invalid value.
	case mavMissionInvalidParam2 = 7

	/// param3 has an invalid value.
	case mavMissionInvalidParam3 = 8

	/// param4 has an invalid value.
	case mavMissionInvalidParam4 = 9

	/// x / param5 has an invalid value.
	case mavMissionInvalidParam5X = 10

	/// y / param6 has an invalid value.
	case mavMissionInvalidParam6Y = 11

	/// z / param7 has an invalid value.
	case mavMissionInvalidParam7 = 12

	/// Mission item received out of sequence
	case mavMissionInvalidSequence = 13

	/// Not accepting any mission commands from this communication partner.
	case mavMissionDenied = 14

	/// Current mission operation cancelled (e.g. mission upload, mission download).
	case mavMissionOperationCancelled = 15
}

extension MAVMissionResult: Enumeration {
    public static var typeName = "MAV_MISSION_RESULT"
    public static var typeDescription = "Result of mission operation (in a MISSION_ACK message)."
    public static var allMembers = [mavMissionAccepted, mavMissionError, mavMissionUnsupportedFrame, mavMissionUnsupported, mavMissionNoSpace, mavMissionInvalid, mavMissionInvalidParam1, mavMissionInvalidParam2, mavMissionInvalidParam3, mavMissionInvalidParam4, mavMissionInvalidParam5X, mavMissionInvalidParam6Y, mavMissionInvalidParam7, mavMissionInvalidSequence, mavMissionDenied, mavMissionOperationCancelled]
    public static var membersDescriptions = [("MAV_MISSION_ACCEPTED", "mission accepted OK"), ("MAV_MISSION_ERROR", "Generic error / not accepting mission commands at all right now."), ("MAV_MISSION_UNSUPPORTED_FRAME", "Coordinate frame is not supported."), ("MAV_MISSION_UNSUPPORTED", "Command is not supported."), ("MAV_MISSION_NO_SPACE", "Mission item exceeds storage space."), ("MAV_MISSION_INVALID", "One of the parameters has an invalid value."), ("MAV_MISSION_INVALID_PARAM1", "param1 has an invalid value."), ("MAV_MISSION_INVALID_PARAM2", "param2 has an invalid value."), ("MAV_MISSION_INVALID_PARAM3", "param3 has an invalid value."), ("MAV_MISSION_INVALID_PARAM4", "param4 has an invalid value."), ("MAV_MISSION_INVALID_PARAM5_X", "x / param5 has an invalid value."), ("MAV_MISSION_INVALID_PARAM6_Y", "y / param6 has an invalid value."), ("MAV_MISSION_INVALID_PARAM7", "z / param7 has an invalid value."), ("MAV_MISSION_INVALID_SEQUENCE", "Mission item received out of sequence"), ("MAV_MISSION_DENIED", "Not accepting any mission commands from this communication partner."), ("MAV_MISSION_OPERATION_CANCELLED", "Current mission operation cancelled (e.g. mission upload, mission download).")]
    public static var enumEnd = UInt(16)
}
