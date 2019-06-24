//
//  TerrainRequestCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Request for terrain data and terrain status
public struct TerrainRequest {

	/// Latitude of SW corner of first grid
	public let lat: Int32

	/// Longitude of SW corner of first grid
	public let lon: Int32

	/// Grid spacing
	public let gridSpacing: UInt16

	/// Bitmask of requested 4x4 grids (row major 8x7 array of grids, 56 bits)
	public let mask: UInt64
}

extension TerrainRequest: Message {
    public static let id = UInt8(133)
    public static var typeName = "TERRAIN_REQUEST"
    public static var typeDescription = "Request for terrain data and terrain status"
    public static var fieldDefinitions: [FieldDefinition] = [("lat", 8, "Int32", 0, "Latitude of SW corner of first grid"), ("lon", 12, "Int32", 0, "Longitude of SW corner of first grid"), ("gridSpacing", 16, "UInt16", 0, "Grid spacing"), ("mask", 0, "UInt64", 0, "Bitmask of requested 4x4 grids (row major 8x7 array of grids, 56 bits)")]

    public init(data: Data) throws {
		mask = try data.number(at: 0)
		lat = try data.number(at: 8)
		lon = try data.number(at: 12)
		gridSpacing = try data.number(at: 16)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 18)
		try payload.set(mask, at: 0)
		try payload.set(lat, at: 8)
		try payload.set(lon, at: 12)
		try payload.set(gridSpacing, at: 16)
        return payload
    }
}
