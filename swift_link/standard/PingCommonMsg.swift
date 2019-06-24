//
//  PingCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// A ping message either requesting or responding to a ping. This allows to measure the system latencies, including serial port, radio modem and UDP connections. The ping microservice is documented at https://mavlink.io/en/services/ping.html
public struct Ping {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// PING sequence
	public let seq: UInt32

	/// 0: request ping from all receiving systems. If greater than 0: message is a ping response and number is the system id of the requesting system
	public let targetSystem: UInt8

	/// 0: request ping from all receiving components. If greater than 0: message is a ping response and number is the component id of the requesting component.
	public let targetComponent: UInt8
}

extension Ping: Message {
    public static let id = UInt8(4)
    public static var typeName = "PING"
    public static var typeDescription = "A ping message either requesting or responding to a ping. This allows to measure the system latencies, including serial port, radio modem and UDP connections. The ping microservice is documented at https://mavlink.io/en/services/ping.html"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("seq", 8, "UInt32", 0, "PING sequence"), ("targetSystem", 12, "UInt8", 0, "0: request ping from all receiving systems. If greater than 0: message is a ping response and number is the system id of the requesting system"), ("targetComponent", 13, "UInt8", 0, "0: request ping from all receiving components. If greater than 0: message is a ping response and number is the component id of the requesting component.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		seq = try data.number(at: 8)
		targetSystem = try data.number(at: 12)
		targetComponent = try data.number(at: 13)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(timeUsec, at: 0)
		try payload.set(seq, at: 8)
		try payload.set(targetSystem, at: 12)
		try payload.set(targetComponent, at: 13)
        return payload
    }
}
