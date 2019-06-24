//
//  NavControllerOutputCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The state of the fixed wing navigation and position controller.
public struct NavControllerOutput {

	/// Current desired roll
	public let navRoll: Float

	/// Current desired pitch
	public let navPitch: Float

	/// Current desired heading
	public let navBearing: Int16

	/// Bearing to current waypoint/target
	public let targetBearing: Int16

	/// Distance to active waypoint
	public let wpDist: UInt16

	/// Current altitude error
	public let altError: Float

	/// Current airspeed error
	public let aspdError: Float

	/// Current crosstrack error on x-y plane
	public let xtrackError: Float
}

extension NavControllerOutput: Message {
    public static let id = UInt8(62)
    public static var typeName = "NAV_CONTROLLER_OUTPUT"
    public static var typeDescription = "The state of the fixed wing navigation and position controller."
    public static var fieldDefinitions: [FieldDefinition] = [("navRoll", 0, "Float", 0, "Current desired roll"), ("navPitch", 4, "Float", 0, "Current desired pitch"), ("navBearing", 20, "Int16", 0, "Current desired heading"), ("targetBearing", 22, "Int16", 0, "Bearing to current waypoint/target"), ("wpDist", 24, "UInt16", 0, "Distance to active waypoint"), ("altError", 8, "Float", 0, "Current altitude error"), ("aspdError", 12, "Float", 0, "Current airspeed error"), ("xtrackError", 16, "Float", 0, "Current crosstrack error on x-y plane")]

    public init(data: Data) throws {
		navRoll = try data.number(at: 0)
		navPitch = try data.number(at: 4)
		altError = try data.number(at: 8)
		aspdError = try data.number(at: 12)
		xtrackError = try data.number(at: 16)
		navBearing = try data.number(at: 20)
		targetBearing = try data.number(at: 22)
		wpDist = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 26)
		try payload.set(navRoll, at: 0)
		try payload.set(navPitch, at: 4)
		try payload.set(altError, at: 8)
		try payload.set(aspdError, at: 12)
		try payload.set(xtrackError, at: 16)
		try payload.set(navBearing, at: 20)
		try payload.set(targetBearing, at: 22)
		try payload.set(wpDist, at: 24)
        return payload
    }
}
