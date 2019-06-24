//
//  StorageStatusCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Flags to indicate the status of camera storage.
public enum StorageStatus: Int {

	/// Storage is missing (no microSD card loaded for example.)
	case empty = 0

	/// Storage present but unformatted.
	case unformatted = 1

	/// Storage present and ready.
	case ready = 2

	/// Camera does not supply storage status information. Capacity information in STORAGE_INFORMATION fields will be ignored.
	case notSupported = 3
}

extension StorageStatus: Enumeration {
    public static var typeName = "STORAGE_STATUS"
    public static var typeDescription = "Flags to indicate the status of camera storage."
    public static var allMembers = [empty, unformatted, ready, notSupported]
    public static var membersDescriptions = [("STORAGE_STATUS_EMPTY", "Storage is missing (no microSD card loaded for example.)"), ("STORAGE_STATUS_UNFORMATTED", "Storage present but unformatted."), ("STORAGE_STATUS_READY", "Storage present and ready."), ("STORAGE_STATUS_NOT_SUPPORTED", "Camera does not supply storage status information. Capacity information in STORAGE_INFORMATION fields will be ignored.")]
    public static var enumEnd = UInt(4)
}
