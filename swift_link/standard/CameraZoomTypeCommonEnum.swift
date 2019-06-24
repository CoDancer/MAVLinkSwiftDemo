//
//  CameraZoomTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Zoom types for MAV_CMD_SET_CAMERA_ZOOM
public enum CameraZoomType: Int {

	/// Zoom one step increment (-1 for wide, 1 for tele)
	case zoomTypeStep = 0

	/// Continuous zoom up/down until stopped (-1 for wide, 1 for tele, 0 to stop zooming)
	case zoomTypeContinuous = 1

	/// Zoom value as proportion of full camera range (a value between 0.0 and 100.0)
	case zoomTypeRange = 2
}

extension CameraZoomType: Enumeration {
    public static var typeName = "CAMERA_ZOOM_TYPE"
    public static var typeDescription = "Zoom types for MAV_CMD_SET_CAMERA_ZOOM"
    public static var allMembers = [zoomTypeStep, zoomTypeContinuous, zoomTypeRange]
    public static var membersDescriptions = [("ZOOM_TYPE_STEP", "Zoom one step increment (-1 for wide, 1 for tele)"), ("ZOOM_TYPE_CONTINUOUS", "Continuous zoom up/down until stopped (-1 for wide, 1 for tele, 0 to stop zooming)"), ("ZOOM_TYPE_RANGE", "Zoom value as proportion of full camera range (a value between 0.0 and 100.0)")]
    public static var enumEnd = UInt(3)
}
