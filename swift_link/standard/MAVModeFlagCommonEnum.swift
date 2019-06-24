//
//  MAVModeFlagCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// These flags encode the MAV mode.
public enum MAVModeFlag: UInt8 {

	/// 0b00000001 Reserved for future use.
	case customModeEnabled = 1

	/// 0b00000010 system has a test mode enabled. This flag is intended for temporary system tests and should not be used for stable implementations.
	case testEnabled = 2

	/// 0b00000100 autonomous mode enabled, system finds its own goal positions. Guided flag can be set or not, depends on the actual implementation.
	case autoEnabled = 4

	/// 0b00001000 guided mode enabled, system flies waypoints / mission items.
	case guidedEnabled = 8

	/// 0b00010000 system stabilizes electronically its attitude (and optionally position). It needs however further control inputs to move around.
	case stabilizeEnabled = 16

	/// 0b00100000 hardware in the loop simulation. All motors / actuators are blocked, but internal software is full operational.
	case hilEnabled = 32

	/// 0b01000000 remote control input is enabled.
	case manualInputEnabled = 64

	/// 0b10000000 MAV safety set to armed. Motors are enabled / running / can start. Ready to fly. Additional note: this flag is to be ignore when sent in the command MAV_CMD_DO_SET_MODE and MAV_CMD_COMPONENT_ARM_DISARM shall be used instead. The flag can still be used to report the armed state.
	case safetyArmed = 128
}

extension MAVModeFlag: Enumeration {
    public static var typeName = "MAV_MODE_FLAG"
    public static var typeDescription = "These flags encode the MAV mode."
    public static var allMembers = [customModeEnabled, testEnabled, autoEnabled, guidedEnabled, stabilizeEnabled, hilEnabled, manualInputEnabled, safetyArmed]
    public static var membersDescriptions = [("MAV_MODE_FLAG_CUSTOM_MODE_ENABLED", "0b00000001 Reserved for future use."), ("MAV_MODE_FLAG_TEST_ENABLED", "0b00000010 system has a test mode enabled. This flag is intended for temporary system tests and should not be used for stable implementations."), ("MAV_MODE_FLAG_AUTO_ENABLED", "0b00000100 autonomous mode enabled, system finds its own goal positions. Guided flag can be set or not, depends on the actual implementation."), ("MAV_MODE_FLAG_GUIDED_ENABLED", "0b00001000 guided mode enabled, system flies waypoints / mission items."), ("MAV_MODE_FLAG_STABILIZE_ENABLED", "0b00010000 system stabilizes electronically its attitude (and optionally position). It needs however further control inputs to move around."), ("MAV_MODE_FLAG_HIL_ENABLED", "0b00100000 hardware in the loop simulation. All motors / actuators are blocked, but internal software is full operational."), ("MAV_MODE_FLAG_MANUAL_INPUT_ENABLED", "0b01000000 remote control input is enabled."), ("MAV_MODE_FLAG_SAFETY_ARMED", "0b10000000 MAV safety set to armed. Motors are enabled / running / can start. Ready to fly. Additional note: this flag is to be ignore when sent in the command MAV_CMD_DO_SET_MODE and MAV_CMD_COMPONENT_ARM_DISARM shall be used instead. The flag can still be used to report the armed state.")]
    public static var enumEnd = UInt(129)
}
