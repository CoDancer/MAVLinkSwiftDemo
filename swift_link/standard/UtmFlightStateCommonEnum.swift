//
//  UtmFlightStateCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Airborne status of UAS.
public enum UtmFlightState: Int {

	/// The flight state can't be determined.
	case unknown = 1

	/// UAS on ground.
	case ground = 2

	/// UAS airborne.
	case airborne = 3

	/// UAS is in an emergency flight state.
	case emergency = 16

	/// UAS has no active controls.
	case noctrl = 32
}

extension UtmFlightState: Enumeration {
    public static var typeName = "UTM_FLIGHT_STATE"
    public static var typeDescription = "Airborne status of UAS."
    public static var allMembers = [unknown, ground, airborne, emergency, noctrl]
    public static var membersDescriptions = [("UTM_FLIGHT_STATE_UNKNOWN", "The flight state can't be determined."), ("UTM_FLIGHT_STATE_GROUND", "UAS on ground."), ("UTM_FLIGHT_STATE_AIRBORNE", "UAS airborne."), ("UTM_FLIGHT_STATE_EMERGENCY", "UAS is in an emergency flight state."), ("UTM_FLIGHT_STATE_NOCTRL", "UAS has no active controls.")]
    public static var enumEnd = UInt(33)
}
