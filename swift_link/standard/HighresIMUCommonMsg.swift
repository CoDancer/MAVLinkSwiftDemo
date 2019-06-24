//
//  HighresIMUCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The IMU readings in SI units in NED body frame
public struct HighresIMU {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// X acceleration
	public let xacc: Float

	/// Y acceleration
	public let yacc: Float

	/// Z acceleration
	public let zacc: Float

	/// Angular speed around X axis
	public let xgyro: Float

	/// Angular speed around Y axis
	public let ygyro: Float

	/// Angular speed around Z axis
	public let zgyro: Float

	/// X Magnetic field
	public let xmag: Float

	/// Y Magnetic field
	public let ymag: Float

	/// Z Magnetic field
	public let zmag: Float

	/// Absolute pressure
	public let absPressure: Float

	/// Differential pressure
	public let diffPressure: Float

	/// Altitude calculated from pressure
	public let pressureAlt: Float

	/// Temperature
	public let temperature: Float

	/// Bitmap for fields that have updated since last message, bit 0 = xacc, bit 12: temperature
	public let fieldsUpdated: UInt16
}

extension HighresIMU: Message {
    public static let id = UInt8(105)
    public static var typeName = "HIGHRES_IMU"
    public static var typeDescription = "The IMU readings in SI units in NED body frame"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("xacc", 8, "Float", 0, "X acceleration"), ("yacc", 12, "Float", 0, "Y acceleration"), ("zacc", 16, "Float", 0, "Z acceleration"), ("xgyro", 20, "Float", 0, "Angular speed around X axis"), ("ygyro", 24, "Float", 0, "Angular speed around Y axis"), ("zgyro", 28, "Float", 0, "Angular speed around Z axis"), ("xmag", 32, "Float", 0, "X Magnetic field"), ("ymag", 36, "Float", 0, "Y Magnetic field"), ("zmag", 40, "Float", 0, "Z Magnetic field"), ("absPressure", 44, "Float", 0, "Absolute pressure"), ("diffPressure", 48, "Float", 0, "Differential pressure"), ("pressureAlt", 52, "Float", 0, "Altitude calculated from pressure"), ("temperature", 56, "Float", 0, "Temperature"), ("fieldsUpdated", 60, "UInt16", 0, "Bitmap for fields that have updated since last message, bit 0 = xacc, bit 12: temperature")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		xacc = try data.number(at: 8)
		yacc = try data.number(at: 12)
		zacc = try data.number(at: 16)
		xgyro = try data.number(at: 20)
		ygyro = try data.number(at: 24)
		zgyro = try data.number(at: 28)
		xmag = try data.number(at: 32)
		ymag = try data.number(at: 36)
		zmag = try data.number(at: 40)
		absPressure = try data.number(at: 44)
		diffPressure = try data.number(at: 48)
		pressureAlt = try data.number(at: 52)
		temperature = try data.number(at: 56)
		fieldsUpdated = try data.number(at: 60)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 62)
		try payload.set(timeUsec, at: 0)
		try payload.set(xacc, at: 8)
		try payload.set(yacc, at: 12)
		try payload.set(zacc, at: 16)
		try payload.set(xgyro, at: 20)
		try payload.set(ygyro, at: 24)
		try payload.set(zgyro, at: 28)
		try payload.set(xmag, at: 32)
		try payload.set(ymag, at: 36)
		try payload.set(zmag, at: 40)
		try payload.set(absPressure, at: 44)
		try payload.set(diffPressure, at: 48)
		try payload.set(pressureAlt, at: 52)
		try payload.set(temperature, at: 56)
		try payload.set(fieldsUpdated, at: 60)
        return payload
    }
}
