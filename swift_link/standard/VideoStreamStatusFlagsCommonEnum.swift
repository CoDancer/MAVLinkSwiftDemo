//
//  VideoStreamStatusFlagsCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Stream status flags (Bitmap)
public enum VideoStreamStatusFlags: Int {

	/// Stream is active (running)
	case running = 1

	/// Stream is thermal imaging
	case thermal = 2
}

extension VideoStreamStatusFlags: Enumeration {
    public static var typeName = "VIDEO_STREAM_STATUS_FLAGS"
    public static var typeDescription = "Stream status flags (Bitmap)"
    public static var allMembers = [running, thermal]
    public static var membersDescriptions = [("VIDEO_STREAM_STATUS_FLAGS_RUNNING", "Stream is active (running)"), ("VIDEO_STREAM_STATUS_FLAGS_THERMAL", "Stream is thermal imaging")]
    public static var enumEnd = UInt(3)
}
