//
//  CameraTriggerCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Camera-IMU triggering and synchronisation message.
public struct CameraTrigger {

	/// Timestamp for image frame (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Image frame sequence
	public let seq: UInt32
}

extension CameraTrigger: Message {
    public static let id = UInt8(112)
    public static var typeName = "CAMERA_TRIGGER"
    public static var typeDescription = "Camera-IMU triggering and synchronisation message."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp for image frame (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("seq", 8, "UInt32", 0, "Image frame sequence")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		seq = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(timeUsec, at: 0)
		try payload.set(seq, at: 8)
        return payload
    }
}
