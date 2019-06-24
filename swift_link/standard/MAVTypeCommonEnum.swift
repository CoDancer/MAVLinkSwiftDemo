//
//  MAVTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// MAVLINK system type. All components in a system should report this type in their HEARTBEAT.
public enum MAVType: UInt8 {

	/// Generic micro air vehicle.
	case generic = 0

	/// Fixed wing aircraft.
	case fixedWing = 1

	/// Quadrotor
	case quadrotor = 2

	/// Coaxial helicopter
	case coaxial = 3

	/// Normal helicopter with tail rotor.
	case helicopter = 4

	/// Ground installation
	case antennaTracker = 5

	/// Operator control unit / ground control station
	case gcs = 6

	/// Airship, controlled
	case airship = 7

	/// Free balloon, uncontrolled
	case freeBalloon = 8

	/// Rocket
	case rocket = 9

	/// Ground rover
	case groundRover = 10

	/// Surface vessel, boat, ship
	case surfaceBoat = 11

	/// Submarine
	case submarine = 12

	/// Hexarotor
	case hexarotor = 13

	/// Octorotor
	case octorotor = 14

	/// Tricopter
	case tricopter = 15

	/// Flapping wing
	case flappingWing = 16

	/// Kite
	case kite = 17

	/// Onboard companion controller
	case onboardController = 18

	/// Two-rotor VTOL using control surfaces in vertical operation in addition. Tailsitter.
	case vtolDuorotor = 19

	/// Quad-rotor VTOL using a V-shaped quad config in vertical operation. Tailsitter.
	case vtolQuadrotor = 20

	/// Tiltrotor VTOL
	case vtolTiltrotor = 21

	/// VTOL reserved 2
	case vtolReserved2 = 22

	/// VTOL reserved 3
	case vtolReserved3 = 23

	/// VTOL reserved 4
	case vtolReserved4 = 24

	/// VTOL reserved 5
	case vtolReserved5 = 25

	/// Gimbal (standalone)
	case gimbal = 26

	/// ADSB system (standalone)
	case adsb = 27

	/// Steerable, nonrigid airfoil
	case parafoil = 28

	/// Dodecarotor
	case dodecarotor = 29

	/// Camera (standalone)
	case camera = 30

	/// Charging station
	case chargingStation = 31

	/// FLARM collision avoidance system (standalone)
	case flarm = 32
}

extension MAVType: Enumeration {
    public static var typeName = "MAV_TYPE"
    public static var typeDescription = "MAVLINK system type. All components in a system should report this type in their HEARTBEAT."
    public static var allMembers = [generic, fixedWing, quadrotor, coaxial, helicopter, antennaTracker, gcs, airship, freeBalloon, rocket, groundRover, surfaceBoat, submarine, hexarotor, octorotor, tricopter, flappingWing, kite, onboardController, vtolDuorotor, vtolQuadrotor, vtolTiltrotor, vtolReserved2, vtolReserved3, vtolReserved4, vtolReserved5, gimbal, adsb, parafoil, dodecarotor, camera, chargingStation, flarm]
    public static var membersDescriptions = [("MAV_TYPE_GENERIC", "Generic micro air vehicle."), ("MAV_TYPE_FIXED_WING", "Fixed wing aircraft."), ("MAV_TYPE_QUADROTOR", "Quadrotor"), ("MAV_TYPE_COAXIAL", "Coaxial helicopter"), ("MAV_TYPE_HELICOPTER", "Normal helicopter with tail rotor."), ("MAV_TYPE_ANTENNA_TRACKER", "Ground installation"), ("MAV_TYPE_GCS", "Operator control unit / ground control station"), ("MAV_TYPE_AIRSHIP", "Airship, controlled"), ("MAV_TYPE_FREE_BALLOON", "Free balloon, uncontrolled"), ("MAV_TYPE_ROCKET", "Rocket"), ("MAV_TYPE_GROUND_ROVER", "Ground rover"), ("MAV_TYPE_SURFACE_BOAT", "Surface vessel, boat, ship"), ("MAV_TYPE_SUBMARINE", "Submarine"), ("MAV_TYPE_HEXAROTOR", "Hexarotor"), ("MAV_TYPE_OCTOROTOR", "Octorotor"), ("MAV_TYPE_TRICOPTER", "Tricopter"), ("MAV_TYPE_FLAPPING_WING", "Flapping wing"), ("MAV_TYPE_KITE", "Kite"), ("MAV_TYPE_ONBOARD_CONTROLLER", "Onboard companion controller"), ("MAV_TYPE_VTOL_DUOROTOR", "Two-rotor VTOL using control surfaces in vertical operation in addition. Tailsitter."), ("MAV_TYPE_VTOL_QUADROTOR", "Quad-rotor VTOL using a V-shaped quad config in vertical operation. Tailsitter."), ("MAV_TYPE_VTOL_TILTROTOR", "Tiltrotor VTOL"), ("MAV_TYPE_VTOL_RESERVED2", "VTOL reserved 2"), ("MAV_TYPE_VTOL_RESERVED3", "VTOL reserved 3"), ("MAV_TYPE_VTOL_RESERVED4", "VTOL reserved 4"), ("MAV_TYPE_VTOL_RESERVED5", "VTOL reserved 5"), ("MAV_TYPE_GIMBAL", "Gimbal (standalone)"), ("MAV_TYPE_ADSB", "ADSB system (standalone)"), ("MAV_TYPE_PARAFOIL", "Steerable, nonrigid airfoil"), ("MAV_TYPE_DODECAROTOR", "Dodecarotor"), ("MAV_TYPE_CAMERA", "Camera (standalone)"), ("MAV_TYPE_CHARGING_STATION", "Charging station"), ("MAV_TYPE_FLARM", "FLARM collision avoidance system (standalone)")]
    public static var enumEnd = UInt(33)
}
