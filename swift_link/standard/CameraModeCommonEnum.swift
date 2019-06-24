//
//  CameraModeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Camera Modes.
public enum CameraMode: Int {

	/// Camera is in image/photo capture mode.
	case image = 0

	/// Camera is in video capture mode.
	case video = 1

	/// Camera is in image survey capture mode. It allows for camera controller to do specific settings for surveys.
	case imageSurvey = 2
}

extension CameraMode: Enumeration {
    public static var typeName = "CAMERA_MODE"
    public static var typeDescription = "Camera Modes."
    public static var allMembers = [image, video, imageSurvey]
    public static var membersDescriptions = [("CAMERA_MODE_IMAGE", "Camera is in image/photo capture mode."), ("CAMERA_MODE_VIDEO", "Camera is in video capture mode."), ("CAMERA_MODE_IMAGE_SURVEY", "Camera is in image survey capture mode. It allows for camera controller to do specific settings for surveys.")]
    public static var enumEnd = UInt(3)
}
