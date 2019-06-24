//
//  MAVBatteryChargeStateCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Enumeration for battery charge states.
public enum MAVBatteryChargeState: Int {

	/// Low battery state is not provided
	case undefined = 0

	/// Battery is not in low state. Normal operation.
	case ok = 1

	/// Battery state is low, warn and monitor close.
	case low = 2

	/// Battery state is critical, return or abort immediately.
	case critical = 3

	/// Battery state is too low for ordinary abort sequence. Perform fastest possible emergency stop to prevent damage.
	case emergency = 4

	/// Battery failed, damage unavoidable.
	case failed = 5

	/// Battery is diagnosed to be defective or an error occurred, usage is discouraged / prohibited.
	case unhealthy = 6

	/// Battery is charging.
	case charging = 7
}

extension MAVBatteryChargeState: Enumeration {
    public static var typeName = "MAV_BATTERY_CHARGE_STATE"
    public static var typeDescription = "Enumeration for battery charge states."
    public static var allMembers = [undefined, ok, low, critical, emergency, failed, unhealthy, charging]
    public static var membersDescriptions = [("MAV_BATTERY_CHARGE_STATE_UNDEFINED", "Low battery state is not provided"), ("MAV_BATTERY_CHARGE_STATE_OK", "Battery is not in low state. Normal operation."), ("MAV_BATTERY_CHARGE_STATE_LOW", "Battery state is low, warn and monitor close."), ("MAV_BATTERY_CHARGE_STATE_CRITICAL", "Battery state is critical, return or abort immediately."), ("MAV_BATTERY_CHARGE_STATE_EMERGENCY", "Battery state is too low for ordinary abort sequence. Perform fastest possible emergency stop to prevent damage."), ("MAV_BATTERY_CHARGE_STATE_FAILED", "Battery failed, damage unavoidable."), ("MAV_BATTERY_CHARGE_STATE_UNHEALTHY", "Battery is diagnosed to be defective or an error occurred, usage is discouraged / prohibited."), ("MAV_BATTERY_CHARGE_STATE_CHARGING", "Battery is charging.")]
    public static var enumEnd = UInt(8)
}
