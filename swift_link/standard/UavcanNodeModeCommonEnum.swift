//
//  UavcanNodeModeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Generalized UAVCAN node mode
public enum UavcanNodeMode: Int {

	/// The node is performing its primary functions.
	case operational = 0

	/// The node is initializing; this mode is entered immediately after startup.
	case initialization = 1

	/// The node is under maintenance.
	case maintenance = 2

	/// The node is in the process of updating its software.
	case softwareUpdate = 3

	/// The node is no longer available online.
	case offline = 7
}

extension UavcanNodeMode: Enumeration {
    public static var typeName = "UAVCAN_NODE_MODE"
    public static var typeDescription = "Generalized UAVCAN node mode"
    public static var allMembers = [operational, initialization, maintenance, softwareUpdate, offline]
    public static var membersDescriptions = [("UAVCAN_NODE_MODE_OPERATIONAL", "The node is performing its primary functions."), ("UAVCAN_NODE_MODE_INITIALIZATION", "The node is initializing; this mode is entered immediately after startup."), ("UAVCAN_NODE_MODE_MAINTENANCE", "The node is under maintenance."), ("UAVCAN_NODE_MODE_SOFTWARE_UPDATE", "The node is in the process of updating its software."), ("UAVCAN_NODE_MODE_OFFLINE", "The node is no longer available online.")]
    public static var enumEnd = UInt(8)
}
