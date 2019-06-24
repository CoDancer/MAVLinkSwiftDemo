//
//  PowerStatusCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Power supply status
public struct PowerStatus {

	/// 5V rail voltage.
	public let vcc: UInt16

	/// Servo rail voltage.
	public let vservo: UInt16

	/// Bitmap of power supply status flags.
	public let flags: MAVPowerStatus
}

extension PowerStatus: Message {
    public static let id = UInt8(125)
    public static var typeName = "POWER_STATUS"
    public static var typeDescription = "Power supply status"
    public static var fieldDefinitions: [FieldDefinition] = [("vcc", 0, "UInt16", 0, "5V rail voltage."), ("vservo", 2, "UInt16", 0, "Servo rail voltage."), ("flags", 4, "MAVPowerStatus", 0, "Bitmap of power supply status flags.")]

    public init(data: Data) throws {
		vcc = try data.number(at: 0)
		vservo = try data.number(at: 2)
		flags = try data.enumeration(at: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(vcc, at: 0)
		try payload.set(vservo, at: 2)
		try payload.set(flags, at: 4)
        return payload
    }
}
