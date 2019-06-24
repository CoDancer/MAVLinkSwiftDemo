//
//  HeartbeatCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The heartbeat message shows that a system or component is present and responding. The type and autopilot fields (along with the message component id), allow the receiving system to treat further messages from this system appropriately (e.g. by laying out the user interface based on the autopilot). This microservice is documented at https://mavlink.io/en/services/heartbeat.html
public struct Heartbeat {

	/// Type of the system (quadrotor, helicopter, etc.). Components use the same type as their associated system.
	public let type: MAVType

	/// Autopilot type / class.
	public let autopilot: MAVAutopilot

	/// System mode bitmap.
	public let baseMode: MAVModeFlag

	/// A bitfield for use for autopilot-specific flags
	public let customMode: UInt32

	/// System status flag.
	public let systemStatus: MAVState

	/// MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version
	public let mavlinkVersion: UInt8
}

extension Heartbeat: Message {
    public static let id = UInt8(0)
    public static var typeName = "HEARTBEAT"
    public static var typeDescription = "The heartbeat message shows that a system or component is present and responding. The type and autopilot fields (along with the message component id), allow the receiving system to treat further messages from this system appropriately (e.g. by laying out the user interface based on the autopilot). This microservice is documented at https://mavlink.io/en/services/heartbeat.html"
    public static var fieldDefinitions: [FieldDefinition] = [("type", 4, "MAVType", 0, "Type of the system (quadrotor, helicopter, etc.). Components use the same type as their associated system."), ("autopilot", 5, "MAVAutopilot", 0, "Autopilot type / class."), ("baseMode", 6, "MAVModeFlag", 0, "System mode bitmap."), ("customMode", 0, "UInt32", 0, "A bitfield for use for autopilot-specific flags"), ("systemStatus", 7, "MAVState", 0, "System status flag."), ("mavlinkVersion", 8, "UInt8", 0, "MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version")]

    public init(data: Data) throws {
		customMode = try data.number(at: 0)
		type = try data.enumeration(at: 4)
		autopilot = try data.enumeration(at: 5)
		baseMode = try data.enumeration(at: 6)
		systemStatus = try data.enumeration(at: 7)
		mavlinkVersion = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 9)
		try payload.set(customMode, at: 0)
		try payload.set(type, at: 4)
		try payload.set(autopilot, at: 5)
		try payload.set(baseMode, at: 6)
		try payload.set(systemStatus, at: 7)
		try payload.set(mavlinkVersion, at: 8)
        return payload
    }
}
