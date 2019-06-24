//
//  MAVAutopilotCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Micro air vehicle / autopilot classes. This identifies the individual model.
public enum MAVAutopilot: UInt8 {

	/// Generic autopilot, full support for everything
	case generic = 0

	/// Reserved for future use.
	case reserved = 1

	/// SLUGS autopilot, http://slugsuav.soe.ucsc.edu
	case slugs = 2

	/// ArduPilot - Plane/Copter/Rover/Sub/Tracker, http://ardupilot.org
	case ardupilotmega = 3

	/// OpenPilot, http://openpilot.org
	case openpilot = 4

	/// Generic autopilot only supporting simple waypoints
	case genericWaypointsOnly = 5

	/// Generic autopilot supporting waypoints and other simple navigation commands
	case genericWaypointsAndSimpleNavigationOnly = 6

	/// Generic autopilot supporting the full mission command set
	case genericMissionFull = 7

	/// No valid autopilot, e.g. a GCS or other MAVLink component
	case invalid = 8

	/// PPZ UAV - http://nongnu.org/paparazzi
	case ppz = 9

	/// UAV Dev Board
	case udb = 10

	/// FlexiPilot
	case fp = 11

	/// PX4 Autopilot - http://px4.io/
	case px4 = 12

	/// SMACCMPilot - http://smaccmpilot.org
	case smaccmpilot = 13

	/// AutoQuad -- http://autoquad.org
	case autoquad = 14

	/// Armazila -- http://armazila.com
	case armazila = 15

	/// Aerob -- http://aerob.ru
	case aerob = 16

	/// ASLUAV autopilot -- http://www.asl.ethz.ch
	case asluav = 17

	/// SmartAP Autopilot - http://sky-drones.com
	case smartap = 18

	/// AirRails - http://uaventure.com
	case airrails = 19
}

extension MAVAutopilot: Enumeration {
    public static var typeName = "MAV_AUTOPILOT"
    public static var typeDescription = "Micro air vehicle / autopilot classes. This identifies the individual model."
    public static var allMembers = [generic, reserved, slugs, ardupilotmega, openpilot, genericWaypointsOnly, genericWaypointsAndSimpleNavigationOnly, genericMissionFull, invalid, ppz, udb, fp, px4, smaccmpilot, autoquad, armazila, aerob, asluav, smartap, airrails]
    public static var membersDescriptions = [("MAV_AUTOPILOT_GENERIC", "Generic autopilot, full support for everything"), ("MAV_AUTOPILOT_RESERVED", "Reserved for future use."), ("MAV_AUTOPILOT_SLUGS", "SLUGS autopilot, http://slugsuav.soe.ucsc.edu"), ("MAV_AUTOPILOT_ARDUPILOTMEGA", "ArduPilot - Plane/Copter/Rover/Sub/Tracker, http://ardupilot.org"), ("MAV_AUTOPILOT_OPENPILOT", "OpenPilot, http://openpilot.org"), ("MAV_AUTOPILOT_GENERIC_WAYPOINTS_ONLY", "Generic autopilot only supporting simple waypoints"), ("MAV_AUTOPILOT_GENERIC_WAYPOINTS_AND_SIMPLE_NAVIGATION_ONLY", "Generic autopilot supporting waypoints and other simple navigation commands"), ("MAV_AUTOPILOT_GENERIC_MISSION_FULL", "Generic autopilot supporting the full mission command set"), ("MAV_AUTOPILOT_INVALID", "No valid autopilot, e.g. a GCS or other MAVLink component"), ("MAV_AUTOPILOT_PPZ", "PPZ UAV - http://nongnu.org/paparazzi"), ("MAV_AUTOPILOT_UDB", "UAV Dev Board"), ("MAV_AUTOPILOT_FP", "FlexiPilot"), ("MAV_AUTOPILOT_PX4", "PX4 Autopilot - http://px4.io/"), ("MAV_AUTOPILOT_SMACCMPILOT", "SMACCMPilot - http://smaccmpilot.org"), ("MAV_AUTOPILOT_AUTOQUAD", "AutoQuad -- http://autoquad.org"), ("MAV_AUTOPILOT_ARMAZILA", "Armazila -- http://armazila.com"), ("MAV_AUTOPILOT_AEROB", "Aerob -- http://aerob.ru"), ("MAV_AUTOPILOT_ASLUAV", "ASLUAV autopilot -- http://www.asl.ethz.ch"), ("MAV_AUTOPILOT_SMARTAP", "SmartAP Autopilot - http://sky-drones.com"), ("MAV_AUTOPILOT_AIRRAILS", "AirRails - http://uaventure.com")]
    public static var enumEnd = UInt(20)
}
