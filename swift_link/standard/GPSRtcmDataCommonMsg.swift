//
//  GPSRtcmDataCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// RTCM message for injecting into the onboard GPS (used for DGPS)
public struct GPSRtcmData {

	/// LSB: 1 means message is fragmented, next 2 bits are the fragment ID, the remaining 5 bits are used for the sequence ID. Messages are only to be flushed to the GPS when the entire message has been reconstructed on the autopilot. The fragment ID specifies which order the fragments should be assembled into a buffer, while the sequence ID is used to detect a mismatch between different buffers. The buffer is considered fully reconstructed when either all 4 fragments are present, or all the fragments before the first fragment with a non full payload is received. This management is used to ensure that normal GPS operation doesn't corrupt RTCM data, and to recover from a unreliable transport delivery order.
	public let flags: UInt8

	/// data length
	public let len: UInt8

	/// RTCM message (may be fragmented)
	public let data: [UInt8]
}

extension GPSRtcmData: Message {
    public static let id = UInt8(233)
    public static var typeName = "GPS_RTCM_DATA"
    public static var typeDescription = "RTCM message for injecting into the onboard GPS (used for DGPS)"
    public static var fieldDefinitions: [FieldDefinition] = [("flags", 0, "UInt8", 0, "LSB: 1 means message is fragmented, next 2 bits are the fragment ID, the remaining 5 bits are used for the sequence ID. Messages are only to be flushed to the GPS when the entire message has been reconstructed on the autopilot. The fragment ID specifies which order the fragments should be assembled into a buffer, while the sequence ID is used to detect a mismatch between different buffers. The buffer is considered fully reconstructed when either all 4 fragments are present, or all the fragments before the first fragment with a non full payload is received. This management is used to ensure that normal GPS operation doesn't corrupt RTCM data, and to recover from a unreliable transport delivery order."), ("len", 1, "UInt8", 0, "data length"), ("data", 2, "[UInt8]", 180, "RTCM message (may be fragmented)")]

    public init(data: Data) throws {
		flags = try data.number(at: 0)
		len = try data.number(at: 1)
		self.data = try data.array(at: 2, capacity: 180)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 182)
		try payload.set(flags, at: 0)
		try payload.set(len, at: 1)
		try payload.set(data, at: 2, capacity: 180)
        return payload
    }
}
