//
//  MAVComponentCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Component ids (values) for the different types and instances of onboard hardware/software that might make up a MAVLink system (autopilot, cameras, servos, GPS systems, avoidance systems etc.). Components must use the appropriate ID in their source address when sending messages. Components can also use IDs to determine if they are the intended recipient of an incoming message. The MAV_COMP_ID_ALL value is used to indicate messages that must be processed by all components. When creating new entries, components that can have multiple instances (e.g. cameras, servos etc.) should be allocated sequential values. An appropriate number of values should be left free after these components to allow the number of instances to be expanded.
public enum MAVComponent: UInt8 {

	/// Used to broadcast messages to all components of the receiving system. Components should attempt to process messages with this component ID and forward to components on any other interfaces.
	case mavCompIdAll = 0

	/// System flight controller component ("autopilot"). Only one autopilot is expected in a particular system.
	case mavCompIdAutopilot1 = 1

	/// Camera #1.
	case mavCompIdCamera = 100

	/// Camera #2.
	case mavCompIdCamera2 = 101

	/// Camera #3.
	case mavCompIdCamera3 = 102

	/// Camera #4.
	case mavCompIdCamera4 = 103

	/// Camera #5.
	case mavCompIdCamera5 = 104

	/// Camera #6.
	case mavCompIdCamera6 = 105

	/// Servo #1.
	case mavCompIdServo1 = 140

	/// Servo #2.
	case mavCompIdServo2 = 141

	/// Servo #3.
	case mavCompIdServo3 = 142

	/// Servo #4.
	case mavCompIdServo4 = 143

	/// Servo #5.
	case mavCompIdServo5 = 144

	/// Servo #6.
	case mavCompIdServo6 = 145

	/// Servo #7.
	case mavCompIdServo7 = 146

	/// Servo #8.
	case mavCompIdServo8 = 147

	/// Servo #9.
	case mavCompIdServo9 = 148

	/// Servo #10.
	case mavCompIdServo10 = 149

	/// Servo #11.
	case mavCompIdServo11 = 150

	/// Servo #12.
	case mavCompIdServo12 = 151

	/// Servo #13.
	case mavCompIdServo13 = 152

	/// Servo #14.
	case mavCompIdServo14 = 153

	/// Gimbal component.
	case mavCompIdGimbal = 154

	/// Logging component.
	case mavCompIdLog = 155

	/// Automatic Dependent Surveillance-Broadcast (ADS-B) component.
	case mavCompIdAdsb = 156

	/// On Screen Display (OSD) devices for video links.
	case mavCompIdOsd = 157

	/// Generic autopilot peripheral component ID. Meant for devices that do not implement the parameter microservice.
	case mavCompIdPeripheral = 158

	/// Gimbal ID for QX1.
	case mavCompIdQx1Gimbal = 159

	/// FLARM collision alert component.
	case mavCompIdFlarm = 160

	/// Component that can generate/supply a mission flight plan (e.g. GCS or developer API).
	case mavCompIdMissionplanner = 190

	/// Component that finds an optimal path between points based on a certain constraint (e.g. minimum snap, shortest path, cost, etc.).
	case mavCompIdPathplanner = 195

	/// Component that plans a collision free path between two points.
	case mavCompIdObstacleAvoidance = 196

	/// Component that provides position estimates using VIO techniques.
	case mavCompIdVisualInertialOdometry = 197

	/// Inertial Measurement Unit (IMU) #1.
	case mavCompIdImu = 200

	/// Inertial Measurement Unit (IMU) #2.
	case mavCompIdImu2 = 201

	/// Inertial Measurement Unit (IMU) #3.
	case mavCompIdImu3 = 202

	/// GPS #1.
	case mavCompIdGps = 220

	/// GPS #2.
	case mavCompIdGps2 = 221

	/// Component to bridge MAVLink to UDP (i.e. from a UART).
	case mavCompIdUdpBridge = 240

	/// Component to bridge to UART (i.e. from UDP).
	case mavCompIdUartBridge = 241

	/// Component for handling system messages (e.g. to ARM, takeoff, etc.).
	case mavCompIdSystemControl = 250
}

extension MAVComponent: Enumeration {
    public static var typeName = "MAV_COMPONENT"
    public static var typeDescription = "Component ids (values) for the different types and instances of onboard hardware/software that might make up a MAVLink system (autopilot, cameras, servos, GPS systems, avoidance systems etc.). Components must use the appropriate ID in their source address when sending messages. Components can also use IDs to determine if they are the intended recipient of an incoming message. The MAV_COMP_ID_ALL value is used to indicate messages that must be processed by all components. When creating new entries, components that can have multiple instances (e.g. cameras, servos etc.) should be allocated sequential values. An appropriate number of values should be left free after these components to allow the number of instances to be expanded."
    public static var allMembers = [mavCompIdAll, mavCompIdAutopilot1, mavCompIdCamera, mavCompIdCamera2, mavCompIdCamera3, mavCompIdCamera4, mavCompIdCamera5, mavCompIdCamera6, mavCompIdServo1, mavCompIdServo2, mavCompIdServo3, mavCompIdServo4, mavCompIdServo5, mavCompIdServo6, mavCompIdServo7, mavCompIdServo8, mavCompIdServo9, mavCompIdServo10, mavCompIdServo11, mavCompIdServo12, mavCompIdServo13, mavCompIdServo14, mavCompIdGimbal, mavCompIdLog, mavCompIdAdsb, mavCompIdOsd, mavCompIdPeripheral, mavCompIdQx1Gimbal, mavCompIdFlarm, mavCompIdMissionplanner, mavCompIdPathplanner, mavCompIdObstacleAvoidance, mavCompIdVisualInertialOdometry, mavCompIdImu, mavCompIdImu2, mavCompIdImu3, mavCompIdGps, mavCompIdGps2, mavCompIdUdpBridge, mavCompIdUartBridge, mavCompIdSystemControl]
    public static var membersDescriptions = [("MAV_COMP_ID_ALL", "Used to broadcast messages to all components of the receiving system. Components should attempt to process messages with this component ID and forward to components on any other interfaces."), ("MAV_COMP_ID_AUTOPILOT1", "System flight controller component (\"autopilot\"). Only one autopilot is expected in a particular system."), ("MAV_COMP_ID_CAMERA", "Camera #1."), ("MAV_COMP_ID_CAMERA2", "Camera #2."), ("MAV_COMP_ID_CAMERA3", "Camera #3."), ("MAV_COMP_ID_CAMERA4", "Camera #4."), ("MAV_COMP_ID_CAMERA5", "Camera #5."), ("MAV_COMP_ID_CAMERA6", "Camera #6."), ("MAV_COMP_ID_SERVO1", "Servo #1."), ("MAV_COMP_ID_SERVO2", "Servo #2."), ("MAV_COMP_ID_SERVO3", "Servo #3."), ("MAV_COMP_ID_SERVO4", "Servo #4."), ("MAV_COMP_ID_SERVO5", "Servo #5."), ("MAV_COMP_ID_SERVO6", "Servo #6."), ("MAV_COMP_ID_SERVO7", "Servo #7."), ("MAV_COMP_ID_SERVO8", "Servo #8."), ("MAV_COMP_ID_SERVO9", "Servo #9."), ("MAV_COMP_ID_SERVO10", "Servo #10."), ("MAV_COMP_ID_SERVO11", "Servo #11."), ("MAV_COMP_ID_SERVO12", "Servo #12."), ("MAV_COMP_ID_SERVO13", "Servo #13."), ("MAV_COMP_ID_SERVO14", "Servo #14."), ("MAV_COMP_ID_GIMBAL", "Gimbal component."), ("MAV_COMP_ID_LOG", "Logging component."), ("MAV_COMP_ID_ADSB", "Automatic Dependent Surveillance-Broadcast (ADS-B) component."), ("MAV_COMP_ID_OSD", "On Screen Display (OSD) devices for video links."), ("MAV_COMP_ID_PERIPHERAL", "Generic autopilot peripheral component ID. Meant for devices that do not implement the parameter microservice."), ("MAV_COMP_ID_QX1_GIMBAL", "Gimbal ID for QX1."), ("MAV_COMP_ID_FLARM", "FLARM collision alert component."), ("MAV_COMP_ID_MISSIONPLANNER", "Component that can generate/supply a mission flight plan (e.g. GCS or developer API)."), ("MAV_COMP_ID_PATHPLANNER", "Component that finds an optimal path between points based on a certain constraint (e.g. minimum snap, shortest path, cost, etc.)."), ("MAV_COMP_ID_OBSTACLE_AVOIDANCE", "Component that plans a collision free path between two points."), ("MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY", "Component that provides position estimates using VIO techniques."), ("MAV_COMP_ID_IMU", "Inertial Measurement Unit (IMU) #1."), ("MAV_COMP_ID_IMU_2", "Inertial Measurement Unit (IMU) #2."), ("MAV_COMP_ID_IMU_3", "Inertial Measurement Unit (IMU) #3."), ("MAV_COMP_ID_GPS", "GPS #1."), ("MAV_COMP_ID_GPS2", "GPS #2."), ("MAV_COMP_ID_UDP_BRIDGE", "Component to bridge MAVLink to UDP (i.e. from a UART)."), ("MAV_COMP_ID_UART_BRIDGE", "Component to bridge to UART (i.e. from UDP)."), ("MAV_COMP_ID_SYSTEM_CONTROL", "Component for handling system messages (e.g. to ARM, takeoff, etc.).")]
    public static var enumEnd = UInt(251)
}
