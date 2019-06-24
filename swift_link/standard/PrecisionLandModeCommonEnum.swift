//
//  PrecisionLandModeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Precision land modes (used in MAV_CMD_NAV_LAND).
public enum PrecisionLandMode: Int {

	/// Normal (non-precision) landing.
	case disabled = 0

	/// Use precision landing if beacon detected when land command accepted, otherwise land normally.
	case opportunistic = 1

	/// Use precision landing, searching for beacon if not found when land command accepted (land normally if beacon cannot be found).
	case required = 2
}

extension PrecisionLandMode: Enumeration {
    public static var typeName = "PRECISION_LAND_MODE"
    public static var typeDescription = "Precision land modes (used in MAV_CMD_NAV_LAND)."
    public static var allMembers = [disabled, opportunistic, required]
    public static var membersDescriptions = [("PRECISION_LAND_MODE_DISABLED", "Normal (non-precision) landing."), ("PRECISION_LAND_MODE_OPPORTUNISTIC", "Use precision landing if beacon detected when land command accepted, otherwise land normally."), ("PRECISION_LAND_MODE_REQUIRED", "Use precision landing, searching for beacon if not found when land command accepted (land normally if beacon cannot be found).")]
    public static var enumEnd = UInt(3)
}
