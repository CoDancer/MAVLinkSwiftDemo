//
//  RCChannelsCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The PPM values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX implies the channel is unused. Individual receivers/transmitters might violate this specification.
public struct RCChannels {

	/// Timestamp (time since system boot).
	public let timeBootMs: UInt32

	/// Total number of RC channels being received. This can be larger than 18, indicating that more channels are available but not given in this message. This value should be 0 when no RC channels are available.
	public let chancount: UInt8

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

	/// RC channel 9 value.
	public let chan9Raw: UInt16

	/// RC channel 10 value.
	public let chan10Raw: UInt16

	/// RC channel 11 value.
	public let chan11Raw: UInt16

	/// RC channel 12 value.
	public let chan12Raw: UInt16

	/// RC channel 13 value.
	public let chan13Raw: UInt16

	/// RC channel 14 value.
	public let chan14Raw: UInt16

	/// RC channel 15 value.
	public let chan15Raw: UInt16

	/// RC channel 16 value.
	public let chan16Raw: UInt16

	/// RC channel 17 value.
	public let chan17Raw: UInt16

	/// RC channel 18 value.
	public let chan18Raw: UInt16

	/// Receive signal strength indicator in device-dependent units/scale. Values: [0-254], 255: invalid/unknown.
	public let rssi: UInt8
}

extension RCChannels: Message {
    public static let id = UInt8(65)
    public static var typeName = "RC_CHANNELS"
    public static var typeDescription = "The PPM values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX implies the channel is unused. Individual receivers/transmitters might violate this specification."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (time since system boot)."), ("chancount", 40, "UInt8", 0, "Total number of RC channels being received. This can be larger than 18, indicating that more channels are available but not given in this message. This value should be 0 when no RC channels are available."), ("chan1Raw", 4, "UInt16", 0, "RC channel 1 value."), ("chan2Raw", 6, "UInt16", 0, "RC channel 2 value."), ("chan3Raw", 8, "UInt16", 0, "RC channel 3 value."), ("chan4Raw", 10, "UInt16", 0, "RC channel 4 value."), ("chan5Raw", 12, "UInt16", 0, "RC channel 5 value."), ("chan6Raw", 14, "UInt16", 0, "RC channel 6 value."), ("chan7Raw", 16, "UInt16", 0, "RC channel 7 value."), ("chan8Raw", 18, "UInt16", 0, "RC channel 8 value."), ("chan9Raw", 20, "UInt16", 0, "RC channel 9 value."), ("chan10Raw", 22, "UInt16", 0, "RC channel 10 value."), ("chan11Raw", 24, "UInt16", 0, "RC channel 11 value."), ("chan12Raw", 26, "UInt16", 0, "RC channel 12 value."), ("chan13Raw", 28, "UInt16", 0, "RC channel 13 value."), ("chan14Raw", 30, "UInt16", 0, "RC channel 14 value."), ("chan15Raw", 32, "UInt16", 0, "RC channel 15 value."), ("chan16Raw", 34, "UInt16", 0, "RC channel 16 value."), ("chan17Raw", 36, "UInt16", 0, "RC channel 17 value."), ("chan18Raw", 38, "UInt16", 0, "RC channel 18 value."), ("rssi", 41, "UInt8", 0, "Receive signal strength indicator in device-dependent units/scale. Values: [0-254], 255: invalid/unknown.")]

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
		chan9Raw = try data.number(at: 20)
		chan10Raw = try data.number(at: 22)
		chan11Raw = try data.number(at: 24)
		chan12Raw = try data.number(at: 26)
		chan13Raw = try data.number(at: 28)
		chan14Raw = try data.number(at: 30)
		chan15Raw = try data.number(at: 32)
		chan16Raw = try data.number(at: 34)
		chan17Raw = try data.number(at: 36)
		chan18Raw = try data.number(at: 38)
		chancount = try data.number(at: 40)
		rssi = try data.number(at: 41)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 42)
		try payload.set(timeBootMs, at: 0)
		try payload.set(chan1Raw, at: 4)
		try payload.set(chan2Raw, at: 6)
		try payload.set(chan3Raw, at: 8)
		try payload.set(chan4Raw, at: 10)
		try payload.set(chan5Raw, at: 12)
		try payload.set(chan6Raw, at: 14)
		try payload.set(chan7Raw, at: 16)
		try payload.set(chan8Raw, at: 18)
		try payload.set(chan9Raw, at: 20)
		try payload.set(chan10Raw, at: 22)
		try payload.set(chan11Raw, at: 24)
		try payload.set(chan12Raw, at: 26)
		try payload.set(chan13Raw, at: 28)
		try payload.set(chan14Raw, at: 30)
		try payload.set(chan15Raw, at: 32)
		try payload.set(chan16Raw, at: 34)
		try payload.set(chan17Raw, at: 36)
		try payload.set(chan18Raw, at: 38)
		try payload.set(chancount, at: 40)
		try payload.set(rssi, at: 41)
        return payload
    }
}
