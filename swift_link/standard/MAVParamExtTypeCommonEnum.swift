//
//  MAVParamExtTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Specifies the datatype of a MAVLink extended parameter.
public enum MAVParamExtType: Int {

	/// 8-bit unsigned integer
	case uint8 = 1

	/// 8-bit signed integer
	case int8 = 2

	/// 16-bit unsigned integer
	case uint16 = 3

	/// 16-bit signed integer
	case int16 = 4

	/// 32-bit unsigned integer
	case uint32 = 5

	/// 32-bit signed integer
	case int32 = 6

	/// 64-bit unsigned integer
	case uint64 = 7

	/// 64-bit signed integer
	case int64 = 8

	/// 32-bit floating-point
	case real32 = 9

	/// 64-bit floating-point
	case real64 = 10

	/// Custom Type
	case custom = 11
}

extension MAVParamExtType: Enumeration {
    public static var typeName = "MAV_PARAM_EXT_TYPE"
    public static var typeDescription = "Specifies the datatype of a MAVLink extended parameter."
    public static var allMembers = [uint8, int8, uint16, int16, uint32, int32, uint64, int64, real32, real64, custom]
    public static var membersDescriptions = [("MAV_PARAM_EXT_TYPE_UINT8", "8-bit unsigned integer"), ("MAV_PARAM_EXT_TYPE_INT8", "8-bit signed integer"), ("MAV_PARAM_EXT_TYPE_UINT16", "16-bit unsigned integer"), ("MAV_PARAM_EXT_TYPE_INT16", "16-bit signed integer"), ("MAV_PARAM_EXT_TYPE_UINT32", "32-bit unsigned integer"), ("MAV_PARAM_EXT_TYPE_INT32", "32-bit signed integer"), ("MAV_PARAM_EXT_TYPE_UINT64", "64-bit unsigned integer"), ("MAV_PARAM_EXT_TYPE_INT64", "64-bit signed integer"), ("MAV_PARAM_EXT_TYPE_REAL32", "32-bit floating-point"), ("MAV_PARAM_EXT_TYPE_REAL64", "64-bit floating-point"), ("MAV_PARAM_EXT_TYPE_CUSTOM", "Custom Type")]
    public static var enumEnd = UInt(12)
}
