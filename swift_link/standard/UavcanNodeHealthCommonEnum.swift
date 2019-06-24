//
//  UavcanNodeHealthCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Generalized UAVCAN node health
public enum UavcanNodeHealth: Int {

	/// The node is functioning properly.
	case ok = 0

	/// A critical parameter went out of range or the node has encountered a minor failure.
	case warning = 1

	/// The node has encountered a major failure.
	case error = 2

	/// The node has suffered a fatal malfunction.
	case critical = 3
}

extension UavcanNodeHealth: Enumeration {
    public static var typeName = "UAVCAN_NODE_HEALTH"
    public static var typeDescription = "Generalized UAVCAN node health"
    public static var allMembers = [ok, warning, error, critical]
    public static var membersDescriptions = [("UAVCAN_NODE_HEALTH_OK", "The node is functioning properly."), ("UAVCAN_NODE_HEALTH_WARNING", "A critical parameter went out of range or the node has encountered a minor failure."), ("UAVCAN_NODE_HEALTH_ERROR", "The node has encountered a major failure."), ("UAVCAN_NODE_HEALTH_CRITICAL", "The node has suffered a fatal malfunction.")]
    public static var enumEnd = UInt(4)
}
