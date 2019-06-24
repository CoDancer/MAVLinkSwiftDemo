//
//  CellularNetworkStatusFlagCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// These flags encode the cellular network status
public enum CellularNetworkStatusFlag: Int {

	/// Roaming is active
	case roaming = 1
}

extension CellularNetworkStatusFlag: Enumeration {
    public static var typeName = "CELLULAR_NETWORK_STATUS_FLAG"
    public static var typeDescription = "These flags encode the cellular network status"
    public static var allMembers = [roaming]
    public static var membersDescriptions = [("CELLULAR_NETWORK_STATUS_FLAG_ROAMING", "Roaming is active")]
    public static var enumEnd = UInt(2)
}
