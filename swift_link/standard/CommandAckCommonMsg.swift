//
//  CommandAckCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Report status of a command. Includes feedback whether the command was executed. The command microservice is documented at https://mavlink.io/en/services/command.html
public struct CommandAck {

	/// Command ID (of acknowledged command).
	public let command: MAVCmd

	/// Result of command.
	public let result: MAVResult
}

extension CommandAck: Message {
    public static let id = UInt8(77)
    public static var typeName = "COMMAND_ACK"
    public static var typeDescription = "Report status of a command. Includes feedback whether the command was executed. The command microservice is documented at https://mavlink.io/en/services/command.html"
    public static var fieldDefinitions: [FieldDefinition] = [("command", 0, "MAVCmd", 0, "Command ID (of acknowledged command)."), ("result", 2, "MAVResult", 0, "Result of command.")]

    public init(data: Data) throws {
		command = try data.enumeration(at: 0)
		result = try data.enumeration(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(command, at: 0)
		try payload.set(result, at: 2)
        return payload
    }
}
