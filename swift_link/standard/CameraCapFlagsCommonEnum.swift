//
//  CameraCapFlagsCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Camera capability flags (Bitmap)
public enum CameraCapFlags: Int {

	/// Camera is able to record video
	case captureVideo = 1

	/// Camera is able to capture images
	case captureImage = 2

	/// Camera has separate Video and Image/Photo modes (MAV_CMD_SET_CAMERA_MODE)
	case hasModes = 4

	/// Camera can capture images while in video mode
	case canCaptureImageInVideoMode = 8

	/// Camera can capture videos while in Photo/Image mode
	case canCaptureVideoInImageMode = 16

	/// Camera has image survey mode (MAV_CMD_SET_CAMERA_MODE)
	case hasImageSurveyMode = 32

	/// Camera has basic zoom control (MAV_CMD_SET_CAMERA_ZOOM)
	case hasBasicZoom = 64

	/// Camera has basic focus control (MAV_CMD_SET_CAMERA_FOCUS)
	case hasBasicFocus = 128

	/// Camera has video streaming capabilities (use MAV_CMD_REQUEST_VIDEO_STREAM_INFORMATION for video streaming info)
	case hasVideoStream = 256
}

extension CameraCapFlags: Enumeration {
    public static var typeName = "CAMERA_CAP_FLAGS"
    public static var typeDescription = "Camera capability flags (Bitmap)"
    public static var allMembers = [captureVideo, captureImage, hasModes, canCaptureImageInVideoMode, canCaptureVideoInImageMode, hasImageSurveyMode, hasBasicZoom, hasBasicFocus, hasVideoStream]
    public static var membersDescriptions = [("CAMERA_CAP_FLAGS_CAPTURE_VIDEO", "Camera is able to record video"), ("CAMERA_CAP_FLAGS_CAPTURE_IMAGE", "Camera is able to capture images"), ("CAMERA_CAP_FLAGS_HAS_MODES", "Camera has separate Video and Image/Photo modes (MAV_CMD_SET_CAMERA_MODE)"), ("CAMERA_CAP_FLAGS_CAN_CAPTURE_IMAGE_IN_VIDEO_MODE", "Camera can capture images while in video mode"), ("CAMERA_CAP_FLAGS_CAN_CAPTURE_VIDEO_IN_IMAGE_MODE", "Camera can capture videos while in Photo/Image mode"), ("CAMERA_CAP_FLAGS_HAS_IMAGE_SURVEY_MODE", "Camera has image survey mode (MAV_CMD_SET_CAMERA_MODE)"), ("CAMERA_CAP_FLAGS_HAS_BASIC_ZOOM", "Camera has basic zoom control (MAV_CMD_SET_CAMERA_ZOOM)"), ("CAMERA_CAP_FLAGS_HAS_BASIC_FOCUS", "Camera has basic focus control (MAV_CMD_SET_CAMERA_FOCUS)"), ("CAMERA_CAP_FLAGS_HAS_VIDEO_STREAM", "Camera has video streaming capabilities (use MAV_CMD_REQUEST_VIDEO_STREAM_INFORMATION for video streaming info)")]
    public static var enumEnd = UInt(257)
}
