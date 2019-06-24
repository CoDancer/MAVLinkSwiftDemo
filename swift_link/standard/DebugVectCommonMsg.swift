//
//  DebugVectCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// To debug something using a named 3D vector.
public struct DebugVect {

	/// Name
	public let name: String

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// x
	public let x: Float

	/// y
	public let y: Float

	/// z
	public let z: Float
}

extension DebugVect: Message {
    public static let id = UInt8(250)
    public static var typeName = "DEBUG_VECT"
    public static var typeDescription = "To debug something using a named 3D vector."
    public static var fieldDefinitions: [FieldDefinition] = [("name", 20, "String", 10, "Name"), ("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("x", 8, "Float", 0, "x"), ("y", 12, "Float", 0, "y"), ("z", 16, "Float", 0, "z")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		x = try data.number(at: 8)
		y = try data.number(at: 12)
		z = try data.number(at: 16)
		name = try data.string(at: 20, length: 10)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 30)
		try payload.set(timeUsec, at: 0)
		try payload.set(x, at: 8)
		try payload.set(y, at: 12)
		try payload.set(z, at: 16)
		try payload.set(name, at: 20, length: 10)
        return payload
    }
}
