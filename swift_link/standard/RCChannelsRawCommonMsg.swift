//
//  RCChannelsRawCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The RAW values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX implies the channel is unused. Individual receivers/transmitters might violate this specification.
public struct RCChannelsRaw {

	/// Timestamp (time since system boot).
	public let timeBootMs: UInt32

	/// Servo output port (set of 8 outputs = 1 port). Flight stacks running on Pixhawk should use: 0 = MAIN, 1 = AUX.
	public let port: UInt8

	/// RC channel 1 value.
	public let chan1Raw: UInt16

	/// RC channel 2 value.
	public let chan2Raw: UInt16

	/// RC channel 3 value.
	public let chan3Raw: UInt16

	/// RC channel 4 value.
	public let chan4Raw: UInt16

	/// RC channel 5 value.
	public let chan5Raw: UInt16

	/// RC channel 6 value.
	public let chan6Raw: UInt16

	/// RC channel 7 value.
	public let chan7Raw: UInt16

	/// RC channel 8 value.
	public let chan8Raw: UInt16

	/// Receive signal strength indicator in device-dependent units/scale. Values: [0-254], 255: invalid/unknown.
	public let rssi: UInt8
}

extension RCChannelsRaw: Message {
    public static let id = UInt8(35)
    public static var typeName = "RC_CHANNELS_RAW"
    public static var typeDescription = "The RAW values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX implies the channel is unused. Individual receivers/transmitters might violate this specification."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (time since system boot)."), ("port", 20, "UInt8", 0, "Servo output port (set of 8 outputs = 1 port). Flight stacks running on Pixhawk should use: 0 = MAIN, 1 = AUX."), ("chan1Raw", 4, "UInt16", 0, "RC channel 1 value."), ("chan2Raw", 6, "UInt16", 0, "RC channel 2 value."), ("chan3Raw", 8, "UInt16", 0, "RC channel 3 value."), ("chan4Raw", 10, "UInt16", 0, "RC channel 4 value."), ("chan5Raw", 12, "UInt16", 0, "RC channel 5 value."), ("chan6Raw", 14, "UInt16", 0, "RC channel 6 value."), ("chan7Raw", 16, "UInt16", 0, "RC channel 7 value."), ("chan8Raw", 18, "UInt16", 0, "RC channel 8 value."), ("rssi", 21, "UInt8", 0, "Receive signal strength indicator in device-dependent units/scale. Values: [0-254], 255: invalid/unknown.")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		chan1Raw = try data.number(at: 4)
		chan2Raw = try data.number(at: 6)
		chan3Raw = try data.number(at: 8)
		chan4Raw = try data.number(at: 10)
		chan5Raw = try data.number(at: 12)
		chan6Raw = try data.number(at: 14)
		chan7Raw = try data.number(at: 16)
		chan8Raw = try data.number(at: 18)
		port = try data.number(at: 20)
		rssi = try data.number(at: 21)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 22)
		try payload.set(timeBootMs, at: 0)
		try payload.set(chan1Raw, at: 4)
		try payload.set(chan2Raw, at: 6)
		try payload.set(chan3Raw, at: 8)
		try payload.set(chan4Raw, at: 10)
		try payload.set(chan5Raw, at: 12)
		try payload.set(chan6Raw, at: 14)
		try payload.set(chan7Raw, at: 16)
		try payload.set(chan8Raw, at: 18)
		try payload.set(port, at: 20)
		try payload.set(rssi, at: 21)
        return payload
    }
}
