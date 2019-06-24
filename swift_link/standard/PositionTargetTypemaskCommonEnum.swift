//
//  PositionTargetTypemaskCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Bitmap to indicate which dimensions should be ignored by the vehicle: a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of the setpoint dimensions should be ignored. If bit 9 is set the floats afx afy afz should be interpreted as force instead of acceleration.
public enum PositionTargetTypemask: UInt16 {

	/// Ignore position x
	case xIgnore = 1

	/// Ignore position y
	case yIgnore = 2

	/// Ignore position z
	case zIgnore = 4

	/// Ignore velocity x
	case vxIgnore = 8

	/// Ignore velocity y
	case vyIgnore = 16

	/// Ignore velocity z
	case vzIgnore = 32

	/// Ignore acceleration x
	case axIgnore = 64

	/// Ignore acceleration y
	case ayIgnore = 128

	/// Ignore acceleration z
	case azIgnore = 256

	/// Use force instead of acceleration
	case forceSet = 512

	/// Ignore yaw
	case yawIgnore = 1024

	/// Ignore yaw rate
	case yawRateIgnore = 2048
}

extension PositionTargetTypemask: Enumeration {
    public static var typeName = "POSITION_TARGET_TYPEMASK"
    public static var typeDescription = "Bitmap to indicate which dimensions should be ignored by the vehicle: a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of the setpoint dimensions should be ignored. If bit 9 is set the floats afx afy afz should be interpreted as force instead of acceleration."
    public static var allMembers = [xIgnore, yIgnore, zIgnore, vxIgnore, vyIgnore, vzIgnore, axIgnore, ayIgnore, azIgnore, forceSet, yawIgnore, yawRateIgnore]
    public static var membersDescriptions = [("POSITION_TARGET_TYPEMASK_X_IGNORE", "Ignore position x"), ("POSITION_TARGET_TYPEMASK_Y_IGNORE", "Ignore position y"), ("POSITION_TARGET_TYPEMASK_Z_IGNORE", "Ignore position z"), ("POSITION_TARGET_TYPEMASK_VX_IGNORE", "Ignore velocity x"), ("POSITION_TARGET_TYPEMASK_VY_IGNORE", "Ignore velocity y"), ("POSITION_TARGET_TYPEMASK_VZ_IGNORE", "Ignore velocity z"), ("POSITION_TARGET_TYPEMASK_AX_IGNORE", "Ignore acceleration x"), ("POSITION_TARGET_TYPEMASK_AY_IGNORE", "Ignore acceleration y"), ("POSITION_TARGET_TYPEMASK_AZ_IGNORE", "Ignore acceleration z"), ("POSITION_TARGET_TYPEMASK_FORCE_SET", "Use force instead of acceleration"), ("POSITION_TARGET_TYPEMASK_YAW_IGNORE", "Ignore yaw"), ("POSITION_TARGET_TYPEMASK_YAW_RATE_IGNORE", "Ignore yaw rate")]
    public static var enumEnd = UInt(2049)
}
