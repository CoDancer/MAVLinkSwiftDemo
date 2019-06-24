//
//  CommandLongCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Send a command with up to seven parameters to the MAV. The command microservice is documented at https://mavlink.io/en/services/command.html
public struct CommandLong {

	/// System which should execute the command
	public let targetSystem: UInt8

	/// Component which should execute the command, 0 for all components
	public let targetComponent: UInt8

	/// Command ID (of command to send).
	public let command: MAVCmd

	/// 0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)
	public let confirmation: UInt8

	/// Parameter 1 (for the specific command).
	public let param1: Float

	/// Parameter 2 (for the specific command).
	public let param2: Float

	/// Parameter 3 (for the specific command).
	public let param3: Float

	/// Parameter 4 (for the specific command).
	public let param4: Float

	/// Parameter 5 (for the specific command).
	public let param5: Float

	/// Parameter 6 (for the specific command).
	public let param6: Float

	/// Parameter 7 (for the specific command).
	public let param7: Float
}

extension CommandLong: Message {
    public static let id = UInt8(76)
    public static var typeName = "COMMAND_LONG"
    public static var typeDescription = "Send a command with up to seven parameters to the MAV. The command microservice is documented at https://mavlink.io/en/services/command.html"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 30, "UInt8", 0, "System which should execute the command"), ("targetComponent", 31, "UInt8", 0, "Component which should execute the command, 0 for all components"), ("command", 28, "MAVCmd", 0, "Command ID (of command to send)."), ("confirmation", 32, "UInt8", 0, "0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)"), ("param1", 0, "Float", 0, "Parameter 1 (for the specific command)."), ("param2", 4, "Float", 0, "Parameter 2 (for the specific command)."), ("param3", 8, "Float", 0, "Parameter 3 (for the specific command)."), ("param4", 12, "Float", 0, "Parameter 4 (for the specific command)."), ("param5", 16, "Float", 0, "Parameter 5 (for the specific command)."), ("param6", 20, "Float", 0, "Parameter 6 (for the specific command)."), ("param7", 24, "Float", 0, "Parameter 7 (for the specific command).")]

    public init(data: Data) throws {
		param1 = try data.number(at: 0)
		param2 = try data.number(at: 4)
		param3 = try data.number(at: 8)
		param4 = try data.number(at: 12)
		param5 = try data.number(at: 16)
		param6 = try data.number(at: 20)
		param7 = try data.number(at: 24)
		command = try data.enumeration(at: 28)
		targetSystem = try data.number(at: 30)
		targetComponent = try data.number(at: 31)
		confirmation = try data.number(at: 32)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 33)
		try payload.set(param1, at: 0)
		try payload.set(param2, at: 4)
		try payload.set(param3, at: 8)
		try payload.set(param4, at: 12)
		try payload.set(param5, at: 16)
		try payload.set(param6, at: 20)
		try payload.set(param7, at: 24)
		try payload.set(command, at: 28)
		try payload.set(targetSystem, at: 30)
		try payload.set(targetComponent, at: 31)
		try payload.set(confirmation, at: 32)
        return payload
    }
}
