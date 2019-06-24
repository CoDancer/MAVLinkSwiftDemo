//
//  MissionChangedCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// A broadcast message to notify any ground station or SDK if a mission, geofence or safe points have changed on the vehicle.
public struct MissionChanged {

	/// Start index for partial mission change (-1 for all items).
	public let startIndex: Int16

	/// End index of a partial mission change. -1 is a synonym for the last mission item (i.e. selects all items from start_index). Ignore field if start_index=-1.
	public let endIndex: Int16

	/// System ID of the author of the new mission.
	public let originSysid: UInt8

	/// Compnent ID of the author of the new mission.
	public let originCompid: MAVComponent

	/// Mission type.
	public let missionType: MAVMissionType
}

extension MissionChanged: Message {
    public static let id = UInt8(52)
    public static var typeName = "MISSION_CHANGED"
    public static var typeDescription = "A broadcast message to notify any ground station or SDK if a mission, geofence or safe points have changed on the vehicle."
    public static var fieldDefinitions: [FieldDefinition] = [("startIndex", 0, "Int16", 0, "Start index for partial mission change (-1 for all items)."), ("endIndex", 2, "Int16", 0, "End index of a partial mission change. -1 is a synonym for the last mission item (i.e. selects all items from start_index). Ignore field if start_index=-1."), ("originSysid", 4, "UInt8", 0, "System ID of the author of the new mission."), ("originCompid", 5, "MAVComponent", 0, "Compnent ID of the author of the new mission."), ("missionType", 6, "MAVMissionType", 0, "Mission type.")]

    public init(data: Data) throws {
		startIndex = try data.number(at: 0)
		endIndex = try data.number(at: 2)
		originSysid = try data.number(at: 4)
		originCompid = try data.enumeration(at: 5)
		missionType = try data.enumeration(at: 6)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 7)
		try payload.set(startIndex, at: 0)
		try payload.set(endIndex, at: 2)
		try payload.set(originSysid, at: 4)
		try payload.set(originCompid, at: 5)
		try payload.set(missionType, at: 6)
        return payload
    }
}
