//
//  LandingTargetTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Type of landing target
public enum LandingTargetType: Int {

	/// Landing target signaled by light beacon (ex: IR-LOCK)
	case lightBeacon = 0

	/// Landing target signaled by radio beacon (ex: ILS, NDB)
	case radioBeacon = 1

	/// Landing target represented by a fiducial marker (ex: ARTag)
	case visionFiducial = 2

	/// Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)
	case visionOther = 3
}

extension LandingTargetType: Enumeration {
    public static var typeName = "LANDING_TARGET_TYPE"
    public static var typeDescription = "Type of landing target"
    public static var allMembers = [lightBeacon, radioBeacon, visionFiducial, visionOther]
    public static var membersDescriptions = [("LANDING_TARGET_TYPE_LIGHT_BEACON", "Landing target signaled by light beacon (ex: IR-LOCK)"), ("LANDING_TARGET_TYPE_RADIO_BEACON", "Landing target signaled by radio beacon (ex: ILS, NDB)"), ("LANDING_TARGET_TYPE_VISION_FIDUCIAL", "Landing target represented by a fiducial marker (ex: ARTag)"), ("LANDING_TARGET_TYPE_VISION_OTHER", "Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)")]
    public static var enumEnd = UInt(4)
}
