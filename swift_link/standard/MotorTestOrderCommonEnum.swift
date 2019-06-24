//
//  MotorTestOrderCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MotorTestOrder: Int {

	/// default autopilot motor test method
	case mavDefault = 0

	/// motor numbers are specified as their index in a predefined vehicle-specific sequence
	case sequence = 1

	/// motor numbers are specified as the output as labeled on the board
	case board = 2
}

extension MotorTestOrder: Enumeration {
    public static var typeName = "MOTOR_TEST_ORDER"
    public static var typeDescription = ""
    public static var allMembers = [mavDefault, sequence, board]
    public static var membersDescriptions = [("MOTOR_TEST_ORDER_DEFAULT", "default autopilot motor test method"), ("MOTOR_TEST_ORDER_SEQUENCE", "motor numbers are specified as their index in a predefined vehicle-specific sequence"), ("MOTOR_TEST_ORDER_BOARD", "motor numbers are specified as the output as labeled on the board")]
    public static var enumEnd = UInt(3)
}
