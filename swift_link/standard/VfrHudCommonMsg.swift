//
//  VfrHudCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Metrics typically displayed on a HUD for fixed wing aircraft.
public struct VfrHud {

	/// Current indicated airspeed (IAS).
	public let airspeed: Float

	/// Current ground speed.
	public let groundspeed: Float

	/// Current heading in compass units (0-360, 0=north).
	public let heading: Int16

	/// Current throttle setting (0 to 100).
	public let throttle: UInt16

	/// Current altitude (MSL).
	public let alt: Float

	/// Current climb rate.
	public let climb: Float
}

extension VfrHud: Message {
    public static let id = UInt8(74)
    public static var typeName = "VFR_HUD"
    public static var typeDescription = "Metrics typically displayed on a HUD for fixed wing aircraft."
    public static var fieldDefinitions: [FieldDefinition] = [("airspeed", 0, "Float", 0, "Current indicated airspeed (IAS)."), ("groundspeed", 4, "Float", 0, "Current ground speed."), ("heading", 16, "Int16", 0, "Current heading in compass units (0-360, 0=north)."), ("throttle", 18, "UInt16", 0, "Current throttle setting (0 to 100)."), ("alt", 8, "Float", 0, "Current altitude (MSL)."), ("climb", 12, "Float", 0, "Current climb rate.")]

    public init(data: Data) throws {
		airspeed = try data.number(at: 0)
		groundspeed = try data.number(at: 4)
		alt = try data.number(at: 8)
		climb = try data.number(at: 12)
		heading = try data.number(at: 16)
		throttle = try data.number(at: 18)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 20)
		try payload.set(airspeed, at: 0)
		try payload.set(groundspeed, at: 4)
		try payload.set(alt, at: 8)
		try payload.set(climb, at: 12)
		try payload.set(heading, at: 16)
		try payload.set(throttle, at: 18)
        return payload
    }
}
