//
//  LinkNodeStatusCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Status generated in each node in the communication chain and injected into MAVLink stream.
public struct LinkNodeStatus {

	/// Timestamp (time since system boot).
	public let timestamp: UInt64

	/// Remaining free transmit buffer space
	public let txBuf: UInt8

	/// Remaining free receive buffer space
	public let rxBuf: UInt8

	/// Transmit rate
	public let txRate: UInt32

	/// Receive rate
	public let rxRate: UInt32

	/// Number of bytes that could not be parsed correctly.
	public let rxParseErr: UInt16

	/// Transmit buffer overflows. This number wraps around as it reaches UINT16_MAX
	public let txOverflows: UInt16

	/// Receive buffer overflows. This number wraps around as it reaches UINT16_MAX
	public let rxOverflows: UInt16

	/// Messages sent
	public let messagesSent: UInt32

	/// Messages received (estimated from counting seq)
	public let messagesReceived: UInt32

	/// Messages lost (estimated from counting seq)
	public let messagesLost: UInt32
}

extension LinkNodeStatus: Message {
    public static let id = UInt8(8)
    public static var typeName = "LINK_NODE_STATUS"
    public static var typeDescription = "Status generated in each node in the communication chain and injected into MAVLink stream."
    public static var fieldDefinitions: [FieldDefinition] = [("timestamp", 0, "UInt64", 0, "Timestamp (time since system boot)."), ("txBuf", 34, "UInt8", 0, "Remaining free transmit buffer space"), ("rxBuf", 35, "UInt8", 0, "Remaining free receive buffer space"), ("txRate", 8, "UInt32", 0, "Transmit rate"), ("rxRate", 12, "UInt32", 0, "Receive rate"), ("rxParseErr", 28, "UInt16", 0, "Number of bytes that could not be parsed correctly."), ("txOverflows", 30, "UInt16", 0, "Transmit buffer overflows. This number wraps around as it reaches UINT16_MAX"), ("rxOverflows", 32, "UInt16", 0, "Receive buffer overflows. This number wraps around as it reaches UINT16_MAX"), ("messagesSent", 16, "UInt32", 0, "Messages sent"), ("messagesReceived", 20, "UInt32", 0, "Messages received (estimated from counting seq)"), ("messagesLost", 24, "UInt32", 0, "Messages lost (estimated from counting seq)")]

    public init(data: Data) throws {
		timestamp = try data.number(at: 0)
		txRate = try data.number(at: 8)
		rxRate = try data.number(at: 12)
		messagesSent = try data.number(at: 16)
		messagesReceived = try data.number(at: 20)
		messagesLost = try data.number(at: 24)
		rxParseErr = try data.number(at: 28)
		txOverflows = try data.number(at: 30)
		rxOverflows = try data.number(at: 32)
		txBuf = try data.number(at: 34)
		rxBuf = try data.number(at: 35)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 36)
		try payload.set(timestamp, at: 0)
		try payload.set(txRate, at: 8)
		try payload.set(rxRate, at: 12)
		try payload.set(messagesSent, at: 16)
		try payload.set(messagesReceived, at: 20)
		try payload.set(messagesLost, at: 24)
		try payload.set(rxParseErr, at: 28)
		try payload.set(txOverflows, at: 30)
		try payload.set(rxOverflows, at: 32)
		try payload.set(txBuf, at: 34)
		try payload.set(rxBuf, at: 35)
        return payload
    }
}
