//
//  SerialControlCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Control a serial port. This can be used for raw access to an onboard serial peripheral such as a GPS or telemetry radio. It is designed to make it possible to update the devices firmware via MAVLink messages or change the devices settings. A message with zero bytes can be used to change just the baudrate.
public struct SerialControl {

	/// Serial control device type.
	public let device: SerialControlDev

	/// Bitmap of serial control flags.
	public let flags: SerialControlFlag

	/// Timeout for reply data
	public let timeout: UInt16

	/// Baudrate of transfer. Zero means no change.
	public let baudrate: UInt32

	/// how many bytes in this transfer
	public let count: UInt8

	/// serial data
	public let data: [UInt8]
}

extension SerialControl: Message {
    public static let id = UInt8(126)
    public static var typeName = "SERIAL_CONTROL"
    public static var typeDescription = "Control a serial port. This can be used for raw access to an onboard serial peripheral such as a GPS or telemetry radio. It is designed to make it possible to update the devices firmware via MAVLink messages or change the devices settings. A message with zero bytes can be used to change just the baudrate."
    public static var fieldDefinitions: [FieldDefinition] = [("device", 6, "SerialControlDev", 0, "Serial control device type."), ("flags", 7, "SerialControlFlag", 0, "Bitmap of serial control flags."), ("timeout", 4, "UInt16", 0, "Timeout for reply data"), ("baudrate", 0, "UInt32", 0, "Baudrate of transfer. Zero means no change."), ("count", 8, "UInt8", 0, "how many bytes in this transfer"), ("data", 9, "[UInt8]", 70, "serial data")]

    public init(data: Data) throws {
		baudrate = try data.number(at: 0)
		timeout = try data.number(at: 4)
		device = try data.enumeration(at: 6)
		flags = try data.enumeration(at: 7)
		count = try data.number(at: 8)
		self.data = try data.array(at: 9, capacity: 70)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 79)
		try payload.set(baudrate, at: 0)
		try payload.set(timeout, at: 4)
		try payload.set(device, at: 6)
		try payload.set(flags, at: 7)
		try payload.set(count, at: 8)
		try payload.set(data, at: 9, capacity: 70)
        return payload
    }
}
