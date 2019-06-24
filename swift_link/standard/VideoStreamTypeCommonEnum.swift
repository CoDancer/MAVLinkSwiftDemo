//
//  VideoStreamTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Video stream types
public enum VideoStreamType: Int {

	/// Stream is RTSP
	case rtsp = 0

	/// Stream is RTP UDP (URI gives the port number)
	case rtpudp = 1

	/// Stream is MPEG on TCP
	case tcpMpeg = 2

	/// Stream is h.264 on MPEG TS (URI gives the port number)
	case mpegTsH264 = 3
}

extension VideoStreamType: Enumeration {
    public static var typeName = "VIDEO_STREAM_TYPE"
    public static var typeDescription = "Video stream types"
    public static var allMembers = [rtsp, rtpudp, tcpMpeg, mpegTsH264]
    public static var membersDescriptions = [("VIDEO_STREAM_TYPE_RTSP", "Stream is RTSP"), ("VIDEO_STREAM_TYPE_RTPUDP", "Stream is RTP UDP (URI gives the port number)"), ("VIDEO_STREAM_TYPE_TCP_MPEG", "Stream is MPEG on TCP"), ("VIDEO_STREAM_TYPE_MPEG_TS_H264", "Stream is h.264 on MPEG TS (URI gives the port number)")]
    public static var enumEnd = UInt(4)
}
