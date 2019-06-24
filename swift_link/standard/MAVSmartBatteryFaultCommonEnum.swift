//
//  MAVSmartBatteryFaultCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Smart battery supply status/fault flags (bitmask) for health indication.
public enum MAVSmartBatteryFault: Int {

	/// Battery has deep discharged.
	case deepDischarge = 1

	/// Voltage spikes.
	case spikes = 2

	/// Single cell has failed.
	case singleCellFail = 4

	/// Over-current fault.
	case overCurrent = 8

	/// Over-temperature fault.
	case overTemperature = 16

	/// Under-temperature fault.
	case underTemperature = 32
}

extension MAVSmartBatteryFault: Enumeration {
    public static var typeName = "MAV_SMART_BATTERY_FAULT"
    public static var typeDescription = "Smart battery supply status/fault flags (bitmask) for health indication."
    public static var allMembers = [deepDischarge, spikes, singleCellFail, overCurrent, overTemperature, underTemperature]
    public static var membersDescriptions = [("MAV_SMART_BATTERY_FAULT_DEEP_DISCHARGE", "Battery has deep discharged."), ("MAV_SMART_BATTERY_FAULT_SPIKES", "Voltage spikes."), ("MAV_SMART_BATTERY_FAULT_SINGLE_CELL_FAIL", "Single cell has failed."), ("MAV_SMART_BATTERY_FAULT_OVER_CURRENT", "Over-current fault."), ("MAV_SMART_BATTERY_FAULT_OVER_TEMPERATURE", "Over-temperature fault."), ("MAV_SMART_BATTERY_FAULT_UNDER_TEMPERATURE", "Under-temperature fault.")]
    public static var enumEnd = UInt(33)
}
