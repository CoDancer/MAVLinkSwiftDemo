//
//  UtmDataAvailFlagsCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Flags for the global position report.
public enum UtmDataAvailFlags: Int {

	/// The field time contains valid data.
	case timeValid = 1

	/// The field uas_id contains valid data.
	case uasIdAvailable = 2

	/// The fields lat, lon and h_acc contain valid data.
	case positionAvailable = 4

	/// The fields alt and v_acc contain valid data.
	case altitudeAvailable = 8

	/// The field relative_alt contains valid data.
	case relativeAltitudeAvailable = 16

	/// The fields vx and vy contain valid data.
	case horizontalVeloAvailable = 32

	/// The field vz contains valid data.
	case verticalVeloAvailable = 64

	/// The fields next_lat, next_lon and next_alt contain valid data.
	case nextWaypointAvailable = 128
}

extension UtmDataAvailFlags: Enumeration {
    public static var typeName = "UTM_DATA_AVAIL_FLAGS"
    public static var typeDescription = "Flags for the global position report."
    public static var allMembers = [timeValid, uasIdAvailable, positionAvailable, altitudeAvailable, relativeAltitudeAvailable, horizontalVeloAvailable, verticalVeloAvailable, nextWaypointAvailable]
    public static var membersDescriptions = [("UTM_DATA_AVAIL_FLAGS_TIME_VALID", "The field time contains valid data."), ("UTM_DATA_AVAIL_FLAGS_UAS_ID_AVAILABLE", "The field uas_id contains valid data."), ("UTM_DATA_AVAIL_FLAGS_POSITION_AVAILABLE", "The fields lat, lon and h_acc contain valid data."), ("UTM_DATA_AVAIL_FLAGS_ALTITUDE_AVAILABLE", "The fields alt and v_acc contain valid data."), ("UTM_DATA_AVAIL_FLAGS_RELATIVE_ALTITUDE_AVAILABLE", "The field relative_alt contains valid data."), ("UTM_DATA_AVAIL_FLAGS_HORIZONTAL_VELO_AVAILABLE", "The fields vx and vy contain valid data."), ("UTM_DATA_AVAIL_FLAGS_VERTICAL_VELO_AVAILABLE", "The field vz contains valid data."), ("UTM_DATA_AVAIL_FLAGS_NEXT_WAYPOINT_AVAILABLE", "The fields next_lat, next_lon and next_alt contain valid data.")]
    public static var enumEnd = UInt(129)
}
