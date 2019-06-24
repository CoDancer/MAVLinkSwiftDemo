//
//  HilActuatorControlsCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Sent from autopilot to simulation. Hardware in the loop control outputs (replacement for HIL_CONTROLS)
public struct HilActuatorControls {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Control outputs -1 .. 1. Channel assignment depends on the simulated hardware.
	public let controls: [Float]

	/// System mode. Includes arming state.
	public let mode: MAVModeFlag

	/// Flags as bitfield, reserved for future use.
	public let flags: UInt64
}

extension HilActuatorControls: Message {
    public static let id = UInt8(93)
    public static var typeName = "HIL_ACTUATOR_CONTROLS"
    public static var typeDescription = "Sent from autopilot to simulation. Hardware in the loop control outputs (replacement for HIL_CONTROLS)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("controls", 16, "[Float]", 16, "Control outputs -1 .. 1. Channel assignment depends on the simulated hardware."), ("mode", 80, "MAVModeFlag", 0, "System mode. Includes arming state."), ("flags", 8, "UInt64", 0, "Flags as bitfield, reserved for future use.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		flags = try data.number(at: 8)
		controls = try data.array(at: 16, capacity: 16)
		mode = try data.enumeration(at: 80)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 81)
		try payload.set(timeUsec, at: 0)
		try payload.set(flags, at: 8)
		try payload.set(controls, at: 16, capacity: 16)
		try payload.set(mode, at: 80)
        return payload
    }
}
