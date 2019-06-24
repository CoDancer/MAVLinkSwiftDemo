//
//  DataTransmissionHandshakeCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Handshake message to initiate, control and stop image streaming when using the Image Transmission Protocol: https://mavlink.io/en/services/image_transmission.html.
public struct DataTransmissionHandshake {

	/// Type of requested/acknowledged data.
	public let type: MavlinkDataStreamType

	/// total data size (set on ACK only).
	public let size: UInt32

	/// Width of a matrix or image.
	public let width: UInt16

	/// Height of a matrix or image.
	public let height: UInt16

	/// Number of packets being sent (set on ACK only).
	public let packets: UInt16

	/// Payload size per packet (normally 253 byte, see DATA field size in message ENCAPSULATED_DATA) (set on ACK only).
	public let payload: UInt8

	/// JPEG quality. Values: [1-100].
	public let jpgQuality: UInt8
}

extension DataTransmissionHandshake: Message {
    public static let id = UInt8(130)
    public static var typeName = "DATA_TRANSMISSION_HANDSHAKE"
    public static var typeDescription = "Handshake message to initiate, control and stop image streaming when using the Image Transmission Protocol: https://mavlink.io/en/services/image_transmission.html."
    public static var fieldDefinitions: [FieldDefinition] = [("type", 10, "MavlinkDataStreamType", 0, "Type of requested/acknowledged data."), ("size", 0, "UInt32", 0, "total data size (set on ACK only)."), ("width", 4, "UInt16", 0, "Width of a matrix or image."), ("height", 6, "UInt16", 0, "Height of a matrix or image."), ("packets", 8, "UInt16", 0, "Number of packets being sent (set on ACK only)."), ("payload", 11, "UInt8", 0, "Payload size per packet (normally 253 byte, see DATA field size in message ENCAPSULATED_DATA) (set on ACK only)."), ("jpgQuality", 12, "UInt8", 0, "JPEG quality. Values: [1-100].")]

    public init(data: Data) throws {
		size = try data.number(at: 0)
		width = try data.number(at: 4)
		height = try data.number(at: 6)
		packets = try data.number(at: 8)
		type = try data.enumeration(at: 10)
		payload = try data.number(at: 11)
		jpgQuality = try data.number(at: 12)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 13)
		try payload.set(size, at: 0)
		try payload.set(width, at: 4)
		try payload.set(height, at: 6)
		try payload.set(packets, at: 8)
		try payload.set(type, at: 10)
		try payload.set(self.payload, at: 11)
		try payload.set(jpgQuality, at: 12)
        return payload
    }
}
