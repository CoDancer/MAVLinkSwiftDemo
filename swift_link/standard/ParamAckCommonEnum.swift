//
//  ParamAckCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Result from a PARAM_EXT_SET message.
public enum ParamAck: Int {

	/// Parameter value ACCEPTED and SET
	case accepted = 0

	/// Parameter value UNKNOWN/UNSUPPORTED
	case valueUnsupported = 1

	/// Parameter failed to set
	case failed = 2

	/// Parameter value received but not yet validated or set. A subsequent PARAM_EXT_ACK will follow once operation is completed with the actual result. These are for parameters that may take longer to set. Instead of waiting for an ACK and potentially timing out, you will immediately receive this response to let you know it was received.
	case inProgress = 3
}

extension ParamAck: Enumeration {
    public static var typeName = "PARAM_ACK"
    public static var typeDescription = "Result from a PARAM_EXT_SET message."
    public static var allMembers = [accepted, valueUnsupported, failed, inProgress]
    public static var membersDescriptions = [("PARAM_ACK_ACCEPTED", "Parameter value ACCEPTED and SET"), ("PARAM_ACK_VALUE_UNSUPPORTED", "Parameter value UNKNOWN/UNSUPPORTED"), ("PARAM_ACK_FAILED", "Parameter failed to set"), ("PARAM_ACK_IN_PROGRESS", "Parameter value received but not yet validated or set. A subsequent PARAM_EXT_ACK will follow once operation is completed with the actual result. These are for parameters that may take longer to set. Instead of waiting for an ACK and potentially timing out, you will immediately receive this response to let you know it was received.")]
    public static var enumEnd = UInt(4)
}
