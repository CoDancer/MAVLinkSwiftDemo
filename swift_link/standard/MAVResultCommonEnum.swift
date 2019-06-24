//
//  MAVResultCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// result from a mavlink command
public enum MAVResult: UInt8 {

	/// Command ACCEPTED and EXECUTED
	case accepted = 0

	/// Command TEMPORARY REJECTED/DENIED
	case temporarilyRejected = 1

	/// Command PERMANENTLY DENIED
	case denied = 2

	/// Command UNKNOWN/UNSUPPORTED
	case unsupported = 3

	/// Command executed, but failed
	case failed = 4

	/// WIP: Command being executed
	case inProgress = 5
}

extension MAVResult: Enumeration {
    public static var typeName = "MAV_RESULT"
    public static var typeDescription = "result from a mavlink command"
    public static var allMembers = [accepted, temporarilyRejected, denied, unsupported, failed, inProgress]
    public static var membersDescriptions = [("MAV_RESULT_ACCEPTED", "Command ACCEPTED and EXECUTED"), ("MAV_RESULT_TEMPORARILY_REJECTED", "Command TEMPORARY REJECTED/DENIED"), ("MAV_RESULT_DENIED", "Command PERMANENTLY DENIED"), ("MAV_RESULT_UNSUPPORTED", "Command UNKNOWN/UNSUPPORTED"), ("MAV_RESULT_FAILED", "Command executed, but failed"), ("MAV_RESULT_IN_PROGRESS", "WIP: Command being executed")]
    public static var enumEnd = UInt(6)
}
