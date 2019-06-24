//
//  CellularNetworkRadioTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Cellular network radio type
public enum CellularNetworkRadioType: Int {
	case none = 0
	case gsm = 1
	case cdma = 2
	case wcdma = 3
	case lte = 4
}

extension CellularNetworkRadioType: Enumeration {
    public static var typeName = "CELLULAR_NETWORK_RADIO_TYPE"
    public static var typeDescription = "Cellular network radio type"
    public static var allMembers = [none, gsm, cdma, wcdma, lte]
    public static var membersDescriptions = [("CELLULAR_NETWORK_RADIO_TYPE_NONE", ""), ("CELLULAR_NETWORK_RADIO_TYPE_GSM", ""), ("CELLULAR_NETWORK_RADIO_TYPE_CDMA", ""), ("CELLULAR_NETWORK_RADIO_TYPE_WCDMA", ""), ("CELLULAR_NETWORK_RADIO_TYPE_LTE", "")]
    public static var enumEnd = UInt(5)
}
