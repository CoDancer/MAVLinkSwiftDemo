//
//  ADSBVehicleCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The location and information of an ADSB vehicle
public struct ADSBVehicle {

	/// ICAO address
	public let icaoAddress: UInt32

	/// Latitude
	public let lat: Int32

	/// Longitude
	public let lon: Int32

	/// ADSB altitude type.
	public let altitudeType: ADSBAltitudeType

	/// Altitude(ASL)
	public let altitude: Int32

	/// Course over ground
	public let heading: UInt16

	/// The horizontal velocity
	public let horVelocity: UInt16

	/// The vertical velocity. Positive is up
	public let verVelocity: Int16

	/// The callsign, 8+null
	public let callsign: String

	/// ADSB emitter type.
	public let emitterType: ADSBEmitterType

	/// Time since last communication in seconds
	public let tslc: UInt8

	/// Bitmap to indicate various statuses including valid data fields
	public let flags: ADSBFlags

	/// Squawk code
	public let squawk: UInt16
}

extension ADSBVehicle: Message {
    public static let id = UInt8(246)
    public static var typeName = "ADSB_VEHICLE"
    public static var typeDescription = "The location and information of an ADSB vehicle"
    public static var fieldDefinitions: [FieldDefinition] = [("icaoAddress", 0, "UInt32", 0, "ICAO address"), ("lat", 4, "Int32", 0, "Latitude"), ("lon", 8, "Int32", 0, "Longitude"), ("altitudeType", 26, "ADSBAltitudeType", 0, "ADSB altitude type."), ("altitude", 12, "Int32", 0, "Altitude(ASL)"), ("heading", 16, "UInt16", 0, "Course over ground"), ("horVelocity", 18, "UInt16", 0, "The horizontal velocity"), ("verVelocity", 20, "Int16", 0, "The vertical velocity. Positive is up"), ("callsign", 27, "String", 9, "The callsign, 8+null"), ("emitterType", 36, "ADSBEmitterType", 0, "ADSB emitter type."), ("tslc", 37, "UInt8", 0, "Time since last communication in seconds"), ("flags", 22, "ADSBFlags", 0, "Bitmap to indicate various statuses including valid data fields"), ("squawk", 24, "UInt16", 0, "Squawk code")]

    public init(data: Data) throws {
		icaoAddress = try data.number(at: 0)
		lat = try data.number(at: 4)
		lon = try data.number(at: 8)
		altitude = try data.number(at: 12)
		heading = try data.number(at: 16)
		horVelocity = try data.number(at: 18)
		verVelocity = try data.number(at: 20)
		flags = try data.enumeration(at: 22)
		squawk = try data.number(at: 24)
		altitudeType = try data.enumeration(at: 26)
		callsign = try data.string(at: 27, length: 9)
		emitterType = try data.enumeration(at: 36)
		tslc = try data.number(at: 37)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 38)
		try payload.set(icaoAddress, at: 0)
		try payload.set(lat, at: 4)
		try payload.set(lon, at: 8)
		try payload.set(altitude, at: 12)
		try payload.set(heading, at: 16)
		try payload.set(horVelocity, at: 18)
		try payload.set(verVelocity, at: 20)
		try payload.set(flags, at: 22)
		try payload.set(squawk, at: 24)
		try payload.set(altitudeType, at: 26)
		try payload.set(callsign, at: 27, length: 9)
		try payload.set(emitterType, at: 36)
		try payload.set(tslc, at: 37)
        return payload
    }
}
