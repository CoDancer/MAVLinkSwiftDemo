//
//  BatteryStatusCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Battery information. Updates GCS with flight controller battery status. Use SMART_BATTERY_* messages instead for smart batteries.
public struct BatteryStatus {

	/// Battery ID
	public let id: UInt8

	/// Function of the battery
	public let batteryFunction: MAVBatteryFunction

	/// Type (chemistry) of the battery
	public let type: MAVBatteryType

	/// Temperature of the battery. INT16_MAX for unknown temperature.
	public let temperature: Int16

	/// Battery voltage of cells. Cells above the valid cell count for this battery should have the UINT16_MAX value.
	public let voltages: [UInt16]

	/// Battery current, -1: autopilot does not measure the current
	public let currentBattery: Int16

	/// Consumed charge, -1: autopilot does not provide consumption estimate
	public let currentConsumed: Int32

	/// Consumed energy, -1: autopilot does not provide energy consumption estimate
	public let energyConsumed: Int32

	/// Remaining battery energy. Values: [0-100], -1: autopilot does not estimate the remaining battery.
	public let batteryRemaining: Int8
}

extension BatteryStatus: Message {
    public static let id = UInt8(147)
    public static var typeName = "BATTERY_STATUS"
    public static var typeDescription = "Battery information. Updates GCS with flight controller battery status. Use SMART_BATTERY_* messages instead for smart batteries."
    public static var fieldDefinitions: [FieldDefinition] = [("id", 32, "UInt8", 0, "Battery ID"), ("batteryFunction", 33, "MAVBatteryFunction", 0, "Function of the battery"), ("type", 34, "MAVBatteryType", 0, "Type (chemistry) of the battery"), ("temperature", 8, "Int16", 0, "Temperature of the battery. INT16_MAX for unknown temperature."), ("voltages", 10, "[UInt16]", 10, "Battery voltage of cells. Cells above the valid cell count for this battery should have the UINT16_MAX value."), ("currentBattery", 30, "Int16", 0, "Battery current, -1: autopilot does not measure the current"), ("currentConsumed", 0, "Int32", 0, "Consumed charge, -1: autopilot does not provide consumption estimate"), ("energyConsumed", 4, "Int32", 0, "Consumed energy, -1: autopilot does not provide energy consumption estimate"), ("batteryRemaining", 35, "Int8", 0, "Remaining battery energy. Values: [0-100], -1: autopilot does not estimate the remaining battery.")]

    public init(data: Data) throws {
		currentConsumed = try data.number(at: 0)
		energyConsumed = try data.number(at: 4)
		temperature = try data.number(at: 8)
		voltages = try data.array(at: 10, capacity: 10)
		currentBattery = try data.number(at: 30)
		id = try data.number(at: 32)
		batteryFunction = try data.enumeration(at: 33)
		type = try data.enumeration(at: 34)
		batteryRemaining = try data.number(at: 35)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 36)
		try payload.set(currentConsumed, at: 0)
		try payload.set(energyConsumed, at: 4)
		try payload.set(temperature, at: 8)
		try payload.set(voltages, at: 10, capacity: 10)
		try payload.set(currentBattery, at: 30)
		try payload.set(id, at: 32)
		try payload.set(batteryFunction, at: 33)
		try payload.set(type, at: 34)
		try payload.set(batteryRemaining, at: 35)
        return payload
    }
}
