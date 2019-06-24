//
//  GlobalPositionIntCovCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient. NOTE: This message is intended for onboard networks / companion computers and higher-bandwidth links and optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message for a minimal subset.
public struct GlobalPositionIntCov {

	/// Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
	public let timeUsec: UInt64

	/// Class id of the estimator this estimate originated from.
	public let estimatorType: MAVEstimatorType

	/// Latitude
	public let lat: Int32

	/// Longitude
	public let lon: Int32

	/// Altitude in meters above MSL
	public let alt: Int32

	/// Altitude above ground
	public let relativeAlt: Int32

	/// Ground X Speed (Latitude)
	public let vx: Float

	/// Ground Y Speed (Longitude)
	public let vy: Float

	/// Ground Z Speed (Altitude)
	public let vz: Float

	/// Row-major representation of a 6x6 position and velocity 6x6 cross-covariance matrix (states: lat, lon, alt, vx, vy, vz; first six entries are the first ROW, next six entries are the second row, etc.). If unknown, assign NaN value to first element in the array.
	public let covariance: [Float]
}

extension GlobalPositionIntCov: Message {
    public static let id = UInt8(63)
    public static var typeName = "GLOBAL_POSITION_INT_COV"
    public static var typeDescription = "The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient. NOTE: This message is intended for onboard networks / companion computers and higher-bandwidth links and optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message for a minimal subset."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number."), ("estimatorType", 180, "MAVEstimatorType", 0, "Class id of the estimator this estimate originated from."), ("lat", 8, "Int32", 0, "Latitude"), ("lon", 12, "Int32", 0, "Longitude"), ("alt", 16, "Int32", 0, "Altitude in meters above MSL"), ("relativeAlt", 20, "Int32", 0, "Altitude above ground"), ("vx", 24, "Float", 0, "Ground X Speed (Latitude)"), ("vy", 28, "Float", 0, "Ground Y Speed (Longitude)"), ("vz", 32, "Float", 0, "Ground Z Speed (Altitude)"), ("covariance", 36, "[Float]", 36, "Row-major representation of a 6x6 position and velocity 6x6 cross-covariance matrix (states: lat, lon, alt, vx, vy, vz; first six entries are the first ROW, next six entries are the second row, etc.). If unknown, assign NaN value to first element in the array.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		lat = try data.number(at: 8)
		lon = try data.number(at: 12)
		alt = try data.number(at: 16)
		relativeAlt = try data.number(at: 20)
		vx = try data.number(at: 24)
		vy = try data.number(at: 28)
		vz = try data.number(at: 32)
		covariance = try data.array(at: 36, capacity: 36)
		estimatorType = try data.enumeration(at: 180)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 181)
		try payload.set(timeUsec, at: 0)
		try payload.set(lat, at: 8)
		try payload.set(lon, at: 12)
		try payload.set(alt, at: 16)
		try payload.set(relativeAlt, at: 20)
		try payload.set(vx, at: 24)
		try payload.set(vy, at: 28)
		try payload.set(vz, at: 32)
		try payload.set(covariance, at: 36, capacity: 36)
		try payload.set(estimatorType, at: 180)
        return payload
    }
}
