//
//  MotorTestThrottleTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MotorTestThrottleType: Int {

	/// throttle as a percentage from 0 ~ 100
	case motorTestThrottlePercent = 0

	/// throttle as an absolute PWM value (normally in range of 1000~2000)
	case motorTestThrottlePwm = 1

	/// throttle pass-through from pilot's transmitter
	case motorTestThrottlePilot = 2

	/// per-motor compass calibration test
	case motorTestCompassCal = 3
}

extension MotorTestThrottleType: Enumeration {
    public static var typeName = "MOTOR_TEST_THROTTLE_TYPE"
    public static var typeDescription = ""
    public static var allMembers = [motorTestThrottlePercent, motorTestThrottlePwm, motorTestThrottlePilot, motorTestCompassCal]
    public static var membersDescriptions = [("MOTOR_TEST_THROTTLE_PERCENT", "throttle as a percentage from 0 ~ 100"), ("MOTOR_TEST_THROTTLE_PWM", "throttle as an absolute PWM value (normally in range of 1000~2000)"), ("MOTOR_TEST_THROTTLE_PILOT", "throttle pass-through from pilot's transmitter"), ("MOTOR_TEST_COMPASS_CAL", "per-motor compass calibration test")]
    public static var enumEnd = UInt(4)
}
