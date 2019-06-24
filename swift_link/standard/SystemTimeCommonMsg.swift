//
//  SystemTimeCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The system time is the time of the master clock, typically the computer clock of the main onboard computer.
public struct SystemTime {

	/// Timestamp (UNIX epoch time).
	public let timeUnixUsec: UInt64

	/// Timestamp (time since system boot).
	public let timeBootMs: UInt32
}

extension SystemTime: Message {
    public static let id = UInt8(2)
    public static var typeName = "SYSTEM_TIME"
    public static var typeDescription = "The system time is the time of the master clock, typically the computer clock of the main onboard computer."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUnixUsec", 0, "UInt64", 0, "Timestamp (UNIX epoch time)."), ("timeBootMs", 8, "UInt32", 0, "Timestamp (time since system boot).")]

    public init(data: Data) throws {
		timeUnixUsec = try data.number(at: 0)
		timeBootMs = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(timeUnixUsec, at: 0)
		try payload.set(timeBootMs, at: 8)
        return payload
    }
}
