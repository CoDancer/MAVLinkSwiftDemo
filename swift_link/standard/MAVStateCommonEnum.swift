//
//  MAVStateCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MAVState: UInt8 {

	/// Uninitialized system, state is unknown.
	case uninit = 0

	/// System is booting up.
	case boot = 1

	/// System is calibrating and not flight-ready.
	case calibrating = 2

	/// System is grounded and on standby. It can be launched any time.
	case standby = 3

	/// System is active and might be already airborne. Motors are engaged.
	case active = 4

	/// System is in a non-normal flight mode. It can however still navigate.
	case critical = 5

	/// System is in a non-normal flight mode. It lost control over parts or over the whole airframe. It is in mayday and going down.
	case emergency = 6

	/// System just initialized its power-down sequence, will shut down now.
	case poweroff = 7

	/// System is terminating itself.
	case flightTermination = 8
}

extension MAVState: Enumeration {
    public static var typeName = "MAV_STATE"
    public static var typeDescription = ""
    public static var allMembers = [uninit, boot, calibrating, standby, active, critical, emergency, poweroff, flightTermination]
    public static var membersDescriptions = [("MAV_STATE_UNINIT", "Uninitialized system, state is unknown."), ("MAV_STATE_BOOT", "System is booting up."), ("MAV_STATE_CALIBRATING", "System is calibrating and not flight-ready."), ("MAV_STATE_STANDBY", "System is grounded and on standby. It can be launched any time."), ("MAV_STATE_ACTIVE", "System is active and might be already airborne. Motors are engaged."), ("MAV_STATE_CRITICAL", "System is in a non-normal flight mode. It can however still navigate."), ("MAV_STATE_EMERGENCY", "System is in a non-normal flight mode. It lost control over parts or over the whole airframe. It is in mayday and going down."), ("MAV_STATE_POWEROFF", "System just initialized its power-down sequence, will shut down now."), ("MAV_STATE_FLIGHT_TERMINATION", "System is terminating itself.")]
    public static var enumEnd = UInt(9)
}
