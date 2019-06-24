//
//  MAVCmdCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from standard.xml, common.xml on Sat Jun 22 2019 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Commands to be executed by the MAV. They can be executed on user request, or as part of a mission script. If the action is used in a mission, the parameter mapping to the waypoint/mission message is as follows: Param 1, Param 2, Param 3, Param 4, X: Param 5, Y:Param 6, Z:Param 7. This command list is similar what ARINC 424 is for commercial aircraft: A data format how to interpret waypoint/mission data. See https://mavlink.io/en/guide/xml_schema.html#MAV_CMD for information about the structure of the MAV_CMD entries
public enum MAVCmd: UInt16 {

	/// Navigate to waypoint.
	case navWaypoint = 16

	/// Loiter around this waypoint an unlimited amount of time
	case navLoiterUnlim = 17

	/// Loiter around this waypoint for X turns
	case navLoiterTurns = 18

	/// Loiter around this waypoint for X seconds
	case navLoiterTime = 19

	/// Return to launch location
	case navReturnToLaunch = 20

	/// Land at location.
	case navLand = 21

	/// Takeoff from ground / hand
	case navTakeoff = 22

	/// Land at local position (local frame only)
	case navLandLocal = 23

	/// Takeoff from local position (local frame only)
	case navTakeoffLocal = 24

	/// Vehicle following, i.e. this waypoint represents the position of a moving vehicle
	case navFollow = 25

	/// Continue on the current course and climb/descend to specified altitude. When the altitude is reached continue to the next command (i.e., don't proceed to the next command until the desired altitude is reached.
	case navContinueAndChangeAlt = 30

	/// Begin loiter at the specified Latitude and Longitude. If Lat=Lon=0, then loiter at the current position. Don't consider the navigation command complete (don't leave loiter) until the altitude has been reached. Additionally, if the Heading Required parameter is non-zero the aircraft will not leave the loiter until heading toward the next waypoint.
	case navLoiterToAlt = 31

	/// Being following a target
	case doFollow = 32

	/// Reposition the MAV after a follow target command has been sent
	case doFollowReposition = 33

	/// Start orbiting on the circumference of a circle defined by the parameters. Setting any value NaN results in using defaults.
	case doOrbit = 34

	/// Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case navRoi = 80

	/// Control autonomous path planning on the MAV.
	case navPathplanning = 81

	/// Navigate to waypoint using a spline path.
	case navSplineWaypoint = 82

	/// Takeoff from ground using VTOL mode, and transition to forward flight with specified heading.
	case navVtolTakeoff = 84

	/// Land using VTOL mode
	case navVtolLand = 85

	/// hand control over to an external controller
	case navGuidedEnable = 92

	/// Delay the next navigation command a number of seconds or until a specified time
	case navDelay = 93

	/// Descend and place payload. Vehicle moves to specified location, descends until it detects a hanging payload has reached the ground, and then releases the payload. If ground is not detected before the reaching the maximum descent value (param1), the command will complete without releasing the payload.
	case navPayloadPlace = 94

	/// NOP - This command is only used to mark the upper limit of the NAV/ACTION commands in the enumeration
	case navLast = 95

	/// Delay mission state machine.
	case conditionDelay = 112

	/// Ascend/descend at rate. Delay mission state machine until desired altitude reached.
	case conditionChangeAlt = 113

	/// Delay mission state machine until within desired distance of next NAV point.
	case conditionDistance = 114

	/// Reach a certain target angle.
	case conditionYaw = 115

	/// NOP - This command is only used to mark the upper limit of the CONDITION commands in the enumeration
	case conditionLast = 159

	/// Set system mode.
	case doSetMode = 176

	/// Jump to the desired command in the mission list. Repeat this action only the specified number of times
	case doJump = 177

	/// Change speed and/or throttle set points.
	case doChangeSpeed = 178

	/// Changes the home location either to the current location or a specified location.
	case doSetHome = 179

	/// Set a system parameter. Caution! Use of this command requires knowledge of the numeric enumeration value of the parameter.
	case doSetParameter = 180

	/// Set a relay to a condition.
	case doSetRelay = 181

	/// Cycle a relay on and off for a desired number of cycles with a desired period.
	case doRepeatRelay = 182

	/// Set a servo to a desired PWM value.
	case doSetServo = 183

	/// Cycle a between its nominal setting and a desired PWM for a desired number of cycles with a desired period.
	case doRepeatServo = 184

	/// Terminate flight immediately
	case doFlighttermination = 185

	/// Change altitude set point.
	case doChangeAltitude = 186

	/// Mission command to perform a landing. This is used as a marker in a mission to tell the autopilot where a sequence of mission items that represents a landing starts. It may also be sent via a COMMAND_LONG to trigger a landing, in which case the nearest (geographically) landing sequence in the mission will be used. The Latitude/Longitude is optional, and may be set to 0 if not needed. If specified then it will be used to help find the closest landing sequence.
	case doLandStart = 189

	/// Mission command to perform a landing from a rally point.
	case doRallyLand = 190

	/// Mission command to safely abort an autonomous landing.
	case doGoAround = 191

	/// Reposition the vehicle to a specific WGS84 global position.
	case doReposition = 192

	/// If in a GPS controlled position mode, hold the current position or continue.
	case doPauseContinue = 193

	/// Set moving direction to forward or reverse.
	case doSetReverse = 194

	/// Sets the region of interest (ROI) to a location. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case doSetRoiLocation = 195

	/// Sets the region of interest (ROI) to be toward next waypoint, with optional pitch/roll/yaw offset. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case doSetRoiWpnextOffset = 196

	/// Cancels any previous ROI command returning the vehicle/sensors to default flight characteristics. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case doSetRoiNone = 197

	/// Control onboard camera system.
	case doControlVideo = 200

	/// Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case doSetRoi = 201

	/// Configure digital camera. This is a fallback message for systems that have not yet implemented PARAM_EXT_XXX messages and camera definition files (see https://mavlink.io/en/services/camera_def.html ).
	case doDigicamConfigure = 202

	/// Control digital camera. This is a fallback message for systems that have not yet implemented PARAM_EXT_XXX messages and camera definition files (see https://mavlink.io/en/services/camera_def.html ).
	case doDigicamControl = 203

	/// Mission command to configure a camera or antenna mount
	case doMountConfigure = 204

	/// Mission command to control a camera or antenna mount
	case doMountControl = 205

	/// Mission command to set camera trigger distance for this flight. The camera is triggered each time this distance is exceeded. This command can also be used to set the shutter integration time for the camera.
	case doSetCamTriggDist = 206

	/// Mission command to enable the geofence
	case doFenceEnable = 207

	/// Mission command to trigger a parachute
	case doParachute = 208

	/// Mission command to perform motor test.
	case doMotorTest = 209

	/// Change to/from inverted flight.
	case doInvertedFlight = 210

	/// Sets a desired vehicle turn angle and speed change.
	case navSetYawSpeed = 213

	/// Mission command to set camera trigger interval for this flight. If triggering is enabled, the camera is triggered each time this interval expires. This command can also be used to set the shutter integration time for the camera.
	case doSetCamTriggInterval = 214

	/// Mission command to control a camera or antenna mount, using a quaternion as reference.
	case doMountControlQuat = 220

	/// set id of master controller
	case doGuidedMaster = 221

	/// Set limits for external control
	case doGuidedLimits = 222

	/// Control vehicle engine. This is interpreted by the vehicles engine controller to change the target engine state. It is intended for vehicles with internal combustion engines
	case doEngineControl = 223

	/// Set the mission item with sequence number seq as current item. This means that the MAV will continue to this mission item on the shortest path (not following the mission items in-between).
	case doSetMissionCurrent = 224

	/// NOP - This command is only used to mark the upper limit of the DO commands in the enumeration
	case doLast = 240

	/// Trigger calibration. This command will be only accepted if in pre-flight mode. Except for Temperature Calibration, only one sensor should be set in a single message and all others should be zero.
	case preflightCalibration = 241

	/// Set sensor offsets. This command will be only accepted if in pre-flight mode.
	case preflightSetSensorOffsets = 242

	/// Trigger UAVCAN config. This command will be only accepted if in pre-flight mode.
	case preflightUavcan = 243

	/// Request storage of different parameter values and logs. This command will be only accepted if in pre-flight mode.
	case preflightStorage = 245

	/// Request the reboot or shutdown of system components.
	case preflightRebootShutdown = 246

	/// Override current mission with command to pause mission, pause mission and move to position, continue/resume mission. When param 1 indicates that the mission is paused (MAV_GOTO_DO_HOLD), param 2 defines whether it holds in place or moves to another position.
	case overrideGoto = 252

	/// start running a mission
	case missionStart = 300

	/// Arms / Disarms a component
	case componentArmDisarm = 400

	/// Request the home position from the vehicle.
	case getHomePosition = 410

	/// Starts receiver pairing.
	case startRxPair = 500

	/// Request the interval between messages for a particular MAVLink message ID
	case getMessageInterval = 510

	/// Set the interval between messages for a particular MAVLink message ID. This interface replaces REQUEST_DATA_STREAM
	case setMessageInterval = 511

	/// Request the target system(s) emit a single instance of a specified message (i.e. a "one-shot" version of MAV_CMD_SET_MESSAGE_INTERVAL).
	case requestMessage = 512

	/// Request MAVLink protocol version compatibility
	case requestProtocolVersion = 519

	/// Request autopilot capabilities. The receiver should ACK the command and then emit its capabilities in an AUTOPILOT_VERSION message
	case requestAutopilotCapabilities = 520

	/// Request camera information (CAMERA_INFORMATION).
	case requestCameraInformation = 521

	/// Request camera settings (CAMERA_SETTINGS).
	case requestCameraSettings = 522

	/// Request storage information (STORAGE_INFORMATION). Use the command's target_component to target a specific component's storage.
	case requestStorageInformation = 525

	/// Format a storage medium. Once format is complete, a STORAGE_INFORMATION message is sent. Use the command's target_component to target a specific component's storage.
	case storageFormat = 526

	/// Request camera capture status (CAMERA_CAPTURE_STATUS)
	case requestCameraCaptureStatus = 527

	/// Request flight information (FLIGHT_INFORMATION)
	case requestFlightInformation = 528

	/// Reset all camera settings to Factory Default
	case resetCameraSettings = 529

	/// Set camera running mode. Use NaN for reserved values. GCS will send a MAV_CMD_REQUEST_VIDEO_STREAM_STATUS command after a mode change if the camera supports video streaming.
	case setCameraMode = 530

	/// Set camera zoom. Camera must respond with a CAMERA_SETTINGS message (on success). Use NaN for reserved values.
	case setCameraZoom = 531

	/// Set camera focus. Camera must respond with a CAMERA_SETTINGS message (on success). Use NaN for reserved values.
	case setCameraFocus = 532

	/// Tagged jump target. Can be jumped to with MAV_CMD_DO_JUMP_TAG.
	case jumpTag = 600

	/// Jump to the matching tag in the mission list. Repeat this action for the specified number of times. A mission should contain a single matching tag for each jump. If this is not the case then a jump to a missing tag should complete the mission, and a jump where there are multiple matching tags should always select the one with the lowest mission sequence number.
	case doJumpTag = 601

	/// Start image capture sequence. Sends CAMERA_IMAGE_CAPTURED after each capture. Use NaN for reserved values.
	case imageStartCapture = 2000

	/// Stop image capture sequence Use NaN for reserved values.
	case imageStopCapture = 2001

	/// Re-request a CAMERA_IMAGE_CAPTURE message. Use NaN for reserved values.
	case requestCameraImageCapture = 2002

	/// Enable or disable on-board camera triggering system.
	case doTriggerControl = 2003

	/// Starts video capture (recording). Use NaN for reserved values.
	case videoStartCapture = 2500

	/// Stop the current video capture (recording). Use NaN for reserved values.
	case videoStopCapture = 2501

	/// Start video streaming
	case videoStartStreaming = 2502

	/// Stop the given video stream
	case videoStopStreaming = 2503

	/// Request video stream information (VIDEO_STREAM_INFORMATION)
	case requestVideoStreamInformation = 2504

	/// Request video stream status (VIDEO_STREAM_STATUS)
	case requestVideoStreamStatus = 2505

	/// Request to start streaming logging data over MAVLink (see also LOGGING_DATA message)
	case loggingStart = 2510

	/// Request to stop streaming log data over MAVLink
	case loggingStop = 2511
	case airframeConfiguration = 2520

	/// Request to start/stop transmitting over the high latency telemetry
	case controlHighLatency = 2600

	/// Create a panorama at the current position
	case panoramaCreate = 2800

	/// Request VTOL transition
	case doVtolTransition = 3000

	/// Request authorization to arm the vehicle to a external entity, the arm authorizer is responsible to request all data that is needs from the vehicle before authorize or deny the request. If approved the progress of command_ack message should be set with period of time that this authorization is valid in seconds or in case it was denied it should be set with one of the reasons in ARM_AUTH_DENIED_REASON.
	case armAuthorizationRequest = 3001

	/// This command sets the submode to standard guided when vehicle is in guided mode. The vehicle holds position and altitude and the user can input the desired velocities along all three axes.
	case setGuidedSubmodeStandard = 4000

	/// This command sets submode circle when vehicle is in guided mode. Vehicle flies along a circle facing the center of the circle. The user can input the velocity along the circle and change the radius. If no input is given the vehicle will hold position.
	case setGuidedSubmodeCircle = 4001

	/// Delay mission state machine until gate has been reached.
	case conditionGate = 4501

	/// Fence return point. There can only be one fence return point.
	case navFenceReturnPoint = 5000

	/// Fence vertex for an inclusion polygon (the polygon must not be self-intersecting). The vehicle must stay within this area. Minimum of 3 vertices required.
	case navFencePolygonVertexInclusion = 5001

	/// Fence vertex for an exclusion polygon (the polygon must not be self-intersecting). The vehicle must stay outside this area. Minimum of 3 vertices required.
	case navFencePolygonVertexExclusion = 5002

	/// Circular fence area. The vehicle must stay inside this area.
	case navFenceCircleInclusion = 5003

	/// Circular fence area. The vehicle must stay outside this area.
	case navFenceCircleExclusion = 5004

	/// Rally point. You can have multiple rally points defined.
	case navRallyPoint = 5100

	/// Commands the vehicle to respond with a sequence of messages UAVCAN_NODE_INFO, one message per every UAVCAN node that is online. Note that some of the response messages can be lost, which the receiver can detect easily by checking whether every received UAVCAN_NODE_STATUS has a matching message UAVCAN_NODE_INFO received earlier; if not, this command should be sent again in order to request re-transmission of the node information messages.
	case uavcanGetNodeInfo = 5200

	/// Deploy payload on a Lat / Lon / Alt position. This includes the navigation to reach the required release position and velocity.
	case payloadPrepareDeploy = 30001

	/// Control the payload deployment.
	case payloadControlDeploy = 30002

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser1 = 31000

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser2 = 31001

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser3 = 31002

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser4 = 31003

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser5 = 31004

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser1 = 31005

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser2 = 31006

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser3 = 31007

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser4 = 31008

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser5 = 31009

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user1 = 31010

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user2 = 31011

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user3 = 31012

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user4 = 31013

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user5 = 31014
}

extension MAVCmd: Enumeration {
    public static var typeName = "MAV_CMD"
    public static var typeDescription = "Commands to be executed by the MAV. They can be executed on user request, or as part of a mission script. If the action is used in a mission, the parameter mapping to the waypoint/mission message is as follows: Param 1, Param 2, Param 3, Param 4, X: Param 5, Y:Param 6, Z:Param 7. This command list is similar what ARINC 424 is for commercial aircraft: A data format how to interpret waypoint/mission data. See https://mavlink.io/en/guide/xml_schema.html#MAV_CMD for information about the structure of the MAV_CMD entries"
    public static var allMembers = [navWaypoint, navLoiterUnlim, navLoiterTurns, navLoiterTime, navReturnToLaunch, navLand, navTakeoff, navLandLocal, navTakeoffLocal, navFollow, navContinueAndChangeAlt, navLoiterToAlt, doFollow, doFollowReposition, doOrbit, navRoi, navPathplanning, navSplineWaypoint, navVtolTakeoff, navVtolLand, navGuidedEnable, navDelay, navPayloadPlace, navLast, conditionDelay, conditionChangeAlt, conditionDistance, conditionYaw, conditionLast, doSetMode, doJump, doChangeSpeed, doSetHome, doSetParameter, doSetRelay, doRepeatRelay, doSetServo, doRepeatServo, doFlighttermination, doChangeAltitude, doLandStart, doRallyLand, doGoAround, doReposition, doPauseContinue, doSetReverse, doSetRoiLocation, doSetRoiWpnextOffset, doSetRoiNone, doControlVideo, doSetRoi, doDigicamConfigure, doDigicamControl, doMountConfigure, doMountControl, doSetCamTriggDist, doFenceEnable, doParachute, doMotorTest, doInvertedFlight, navSetYawSpeed, doSetCamTriggInterval, doMountControlQuat, doGuidedMaster, doGuidedLimits, doEngineControl, doSetMissionCurrent, doLast, preflightCalibration, preflightSetSensorOffsets, preflightUavcan, preflightStorage, preflightRebootShutdown, overrideGoto, missionStart, componentArmDisarm, getHomePosition, startRxPair, getMessageInterval, setMessageInterval, requestMessage, requestProtocolVersion, requestAutopilotCapabilities, requestCameraInformation, requestCameraSettings, requestStorageInformation, storageFormat, requestCameraCaptureStatus, requestFlightInformation, resetCameraSettings, setCameraMode, setCameraZoom, setCameraFocus, jumpTag, doJumpTag, imageStartCapture, imageStopCapture, requestCameraImageCapture, doTriggerControl, videoStartCapture, videoStopCapture, videoStartStreaming, videoStopStreaming, requestVideoStreamInformation, requestVideoStreamStatus, loggingStart, loggingStop, airframeConfiguration, controlHighLatency, panoramaCreate, doVtolTransition, armAuthorizationRequest, setGuidedSubmodeStandard, setGuidedSubmodeCircle, conditionGate, navFenceReturnPoint, navFencePolygonVertexInclusion, navFencePolygonVertexExclusion, navFenceCircleInclusion, navFenceCircleExclusion, navRallyPoint, uavcanGetNodeInfo, payloadPrepareDeploy, payloadControlDeploy, waypointUser1, waypointUser2, waypointUser3, waypointUser4, waypointUser5, spatialUser1, spatialUser2, spatialUser3, spatialUser4, spatialUser5, user1, user2, user3, user4, user5]
    public static var membersDescriptions = [("MAV_CMD_NAV_WAYPOINT", "Navigate to waypoint."), ("MAV_CMD_NAV_LOITER_UNLIM", "Loiter around this waypoint an unlimited amount of time"), ("MAV_CMD_NAV_LOITER_TURNS", "Loiter around this waypoint for X turns"), ("MAV_CMD_NAV_LOITER_TIME", "Loiter around this waypoint for X seconds"), ("MAV_CMD_NAV_RETURN_TO_LAUNCH", "Return to launch location"), ("MAV_CMD_NAV_LAND", "Land at location."), ("MAV_CMD_NAV_TAKEOFF", "Takeoff from ground / hand"), ("MAV_CMD_NAV_LAND_LOCAL", "Land at local position (local frame only)"), ("MAV_CMD_NAV_TAKEOFF_LOCAL", "Takeoff from local position (local frame only)"), ("MAV_CMD_NAV_FOLLOW", "Vehicle following, i.e. this waypoint represents the position of a moving vehicle"), ("MAV_CMD_NAV_CONTINUE_AND_CHANGE_ALT", "Continue on the current course and climb/descend to specified altitude. When the altitude is reached continue to the next command (i.e., don't proceed to the next command until the desired altitude is reached."), ("MAV_CMD_NAV_LOITER_TO_ALT", "Begin loiter at the specified Latitude and Longitude. If Lat=Lon=0, then loiter at the current position. Don't consider the navigation command complete (don't leave loiter) until the altitude has been reached. Additionally, if the Heading Required parameter is non-zero the aircraft will not leave the loiter until heading toward the next waypoint."), ("MAV_CMD_DO_FOLLOW", "Being following a target"), ("MAV_CMD_DO_FOLLOW_REPOSITION", "Reposition the MAV after a follow target command has been sent"), ("MAV_CMD_DO_ORBIT", "Start orbiting on the circumference of a circle defined by the parameters. Setting any value NaN results in using defaults."), ("MAV_CMD_NAV_ROI", "Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_NAV_PATHPLANNING", "Control autonomous path planning on the MAV."), ("MAV_CMD_NAV_SPLINE_WAYPOINT", "Navigate to waypoint using a spline path."), ("MAV_CMD_NAV_VTOL_TAKEOFF", "Takeoff from ground using VTOL mode, and transition to forward flight with specified heading."), ("MAV_CMD_NAV_VTOL_LAND", "Land using VTOL mode"), ("MAV_CMD_NAV_GUIDED_ENABLE", "hand control over to an external controller"), ("MAV_CMD_NAV_DELAY", "Delay the next navigation command a number of seconds or until a specified time"), ("MAV_CMD_NAV_PAYLOAD_PLACE", "Descend and place payload. Vehicle moves to specified location, descends until it detects a hanging payload has reached the ground, and then releases the payload. If ground is not detected before the reaching the maximum descent value (param1), the command will complete without releasing the payload."), ("MAV_CMD_NAV_LAST", "NOP - This command is only used to mark the upper limit of the NAV/ACTION commands in the enumeration"), ("MAV_CMD_CONDITION_DELAY", "Delay mission state machine."), ("MAV_CMD_CONDITION_CHANGE_ALT", "Ascend/descend at rate. Delay mission state machine until desired altitude reached."), ("MAV_CMD_CONDITION_DISTANCE", "Delay mission state machine until within desired distance of next NAV point."), ("MAV_CMD_CONDITION_YAW", "Reach a certain target angle."), ("MAV_CMD_CONDITION_LAST", "NOP - This command is only used to mark the upper limit of the CONDITION commands in the enumeration"), ("MAV_CMD_DO_SET_MODE", "Set system mode."), ("MAV_CMD_DO_JUMP", "Jump to the desired command in the mission list. Repeat this action only the specified number of times"), ("MAV_CMD_DO_CHANGE_SPEED", "Change speed and/or throttle set points."), ("MAV_CMD_DO_SET_HOME", "Changes the home location either to the current location or a specified location."), ("MAV_CMD_DO_SET_PARAMETER", "Set a system parameter. Caution! Use of this command requires knowledge of the numeric enumeration value of the parameter."), ("MAV_CMD_DO_SET_RELAY", "Set a relay to a condition."), ("MAV_CMD_DO_REPEAT_RELAY", "Cycle a relay on and off for a desired number of cycles with a desired period."), ("MAV_CMD_DO_SET_SERVO", "Set a servo to a desired PWM value."), ("MAV_CMD_DO_REPEAT_SERVO", "Cycle a between its nominal setting and a desired PWM for a desired number of cycles with a desired period."), ("MAV_CMD_DO_FLIGHTTERMINATION", "Terminate flight immediately"), ("MAV_CMD_DO_CHANGE_ALTITUDE", "Change altitude set point."), ("MAV_CMD_DO_LAND_START", "Mission command to perform a landing. This is used as a marker in a mission to tell the autopilot where a sequence of mission items that represents a landing starts. It may also be sent via a COMMAND_LONG to trigger a landing, in which case the nearest (geographically) landing sequence in the mission will be used. The Latitude/Longitude is optional, and may be set to 0 if not needed. If specified then it will be used to help find the closest landing sequence."), ("MAV_CMD_DO_RALLY_LAND", "Mission command to perform a landing from a rally point."), ("MAV_CMD_DO_GO_AROUND", "Mission command to safely abort an autonomous landing."), ("MAV_CMD_DO_REPOSITION", "Reposition the vehicle to a specific WGS84 global position."), ("MAV_CMD_DO_PAUSE_CONTINUE", "If in a GPS controlled position mode, hold the current position or continue."), ("MAV_CMD_DO_SET_REVERSE", "Set moving direction to forward or reverse."), ("MAV_CMD_DO_SET_ROI_LOCATION", "Sets the region of interest (ROI) to a location. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_DO_SET_ROI_WPNEXT_OFFSET", "Sets the region of interest (ROI) to be toward next waypoint, with optional pitch/roll/yaw offset. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_DO_SET_ROI_NONE", "Cancels any previous ROI command returning the vehicle/sensors to default flight characteristics. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_DO_CONTROL_VIDEO", "Control onboard camera system."), ("MAV_CMD_DO_SET_ROI", "Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_DO_DIGICAM_CONFIGURE", "Configure digital camera. This is a fallback message for systems that have not yet implemented PARAM_EXT_XXX messages and camera definition files (see https://mavlink.io/en/services/camera_def.html )."), ("MAV_CMD_DO_DIGICAM_CONTROL", "Control digital camera. This is a fallback message for systems that have not yet implemented PARAM_EXT_XXX messages and camera definition files (see https://mavlink.io/en/services/camera_def.html )."), ("MAV_CMD_DO_MOUNT_CONFIGURE", "Mission command to configure a camera or antenna mount"), ("MAV_CMD_DO_MOUNT_CONTROL", "Mission command to control a camera or antenna mount"), ("MAV_CMD_DO_SET_CAM_TRIGG_DIST", "Mission command to set camera trigger distance for this flight. The camera is triggered each time this distance is exceeded. This command can also be used to set the shutter integration time for the camera."), ("MAV_CMD_DO_FENCE_ENABLE", "Mission command to enable the geofence"), ("MAV_CMD_DO_PARACHUTE", "Mission command to trigger a parachute"), ("MAV_CMD_DO_MOTOR_TEST", "Mission command to perform motor test."), ("MAV_CMD_DO_INVERTED_FLIGHT", "Change to/from inverted flight."), ("MAV_CMD_NAV_SET_YAW_SPEED", "Sets a desired vehicle turn angle and speed change."), ("MAV_CMD_DO_SET_CAM_TRIGG_INTERVAL", "Mission command to set camera trigger interval for this flight. If triggering is enabled, the camera is triggered each time this interval expires. This command can also be used to set the shutter integration time for the camera."), ("MAV_CMD_DO_MOUNT_CONTROL_QUAT", "Mission command to control a camera or antenna mount, using a quaternion as reference."), ("MAV_CMD_DO_GUIDED_MASTER", "set id of master controller"), ("MAV_CMD_DO_GUIDED_LIMITS", "Set limits for external control"), ("MAV_CMD_DO_ENGINE_CONTROL", "Control vehicle engine. This is interpreted by the vehicles engine controller to change the target engine state. It is intended for vehicles with internal combustion engines"), ("MAV_CMD_DO_SET_MISSION_CURRENT", "Set the mission item with sequence number seq as current item. This means that the MAV will continue to this mission item on the shortest path (not following the mission items in-between)."), ("MAV_CMD_DO_LAST", "NOP - This command is only used to mark the upper limit of the DO commands in the enumeration"), ("MAV_CMD_PREFLIGHT_CALIBRATION", "Trigger calibration. This command will be only accepted if in pre-flight mode. Except for Temperature Calibration, only one sensor should be set in a single message and all others should be zero."), ("MAV_CMD_PREFLIGHT_SET_SENSOR_OFFSETS", "Set sensor offsets. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_UAVCAN", "Trigger UAVCAN config. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_STORAGE", "Request storage of different parameter values and logs. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_REBOOT_SHUTDOWN", "Request the reboot or shutdown of system components."), ("MAV_CMD_OVERRIDE_GOTO", "Override current mission with command to pause mission, pause mission and move to position, continue/resume mission. When param 1 indicates that the mission is paused (MAV_GOTO_DO_HOLD), param 2 defines whether it holds in place or moves to another position."), ("MAV_CMD_MISSION_START", "start running a mission"), ("MAV_CMD_COMPONENT_ARM_DISARM", "Arms / Disarms a component"), ("MAV_CMD_GET_HOME_POSITION", "Request the home position from the vehicle."), ("MAV_CMD_START_RX_PAIR", "Starts receiver pairing."), ("MAV_CMD_GET_MESSAGE_INTERVAL", "Request the interval between messages for a particular MAVLink message ID"), ("MAV_CMD_SET_MESSAGE_INTERVAL", "Set the interval between messages for a particular MAVLink message ID. This interface replaces REQUEST_DATA_STREAM"), ("MAV_CMD_REQUEST_MESSAGE", "Request the target system(s) emit a single instance of a specified message (i.e. a \"one-shot\" version of MAV_CMD_SET_MESSAGE_INTERVAL)."), ("MAV_CMD_REQUEST_PROTOCOL_VERSION", "Request MAVLink protocol version compatibility"), ("MAV_CMD_REQUEST_AUTOPILOT_CAPABILITIES", "Request autopilot capabilities. The receiver should ACK the command and then emit its capabilities in an AUTOPILOT_VERSION message"), ("MAV_CMD_REQUEST_CAMERA_INFORMATION", "Request camera information (CAMERA_INFORMATION)."), ("MAV_CMD_REQUEST_CAMERA_SETTINGS", "Request camera settings (CAMERA_SETTINGS)."), ("MAV_CMD_REQUEST_STORAGE_INFORMATION", "Request storage information (STORAGE_INFORMATION). Use the command's target_component to target a specific component's storage."), ("MAV_CMD_STORAGE_FORMAT", "Format a storage medium. Once format is complete, a STORAGE_INFORMATION message is sent. Use the command's target_component to target a specific component's storage."), ("MAV_CMD_REQUEST_CAMERA_CAPTURE_STATUS", "Request camera capture status (CAMERA_CAPTURE_STATUS)"), ("MAV_CMD_REQUEST_FLIGHT_INFORMATION", "Request flight information (FLIGHT_INFORMATION)"), ("MAV_CMD_RESET_CAMERA_SETTINGS", "Reset all camera settings to Factory Default"), ("MAV_CMD_SET_CAMERA_MODE", "Set camera running mode. Use NaN for reserved values. GCS will send a MAV_CMD_REQUEST_VIDEO_STREAM_STATUS command after a mode change if the camera supports video streaming."), ("MAV_CMD_SET_CAMERA_ZOOM", "Set camera zoom. Camera must respond with a CAMERA_SETTINGS message (on success). Use NaN for reserved values."), ("MAV_CMD_SET_CAMERA_FOCUS", "Set camera focus. Camera must respond with a CAMERA_SETTINGS message (on success). Use NaN for reserved values."), ("MAV_CMD_JUMP_TAG", "Tagged jump target. Can be jumped to with MAV_CMD_DO_JUMP_TAG."), ("MAV_CMD_DO_JUMP_TAG", "Jump to the matching tag in the mission list. Repeat this action for the specified number of times. A mission should contain a single matching tag for each jump. If this is not the case then a jump to a missing tag should complete the mission, and a jump where there are multiple matching tags should always select the one with the lowest mission sequence number."), ("MAV_CMD_IMAGE_START_CAPTURE", "Start image capture sequence. Sends CAMERA_IMAGE_CAPTURED after each capture. Use NaN for reserved values."), ("MAV_CMD_IMAGE_STOP_CAPTURE", "Stop image capture sequence Use NaN for reserved values."), ("MAV_CMD_REQUEST_CAMERA_IMAGE_CAPTURE", "Re-request a CAMERA_IMAGE_CAPTURE message. Use NaN for reserved values."), ("MAV_CMD_DO_TRIGGER_CONTROL", "Enable or disable on-board camera triggering system."), ("MAV_CMD_VIDEO_START_CAPTURE", "Starts video capture (recording). Use NaN for reserved values."), ("MAV_CMD_VIDEO_STOP_CAPTURE", "Stop the current video capture (recording). Use NaN for reserved values."), ("MAV_CMD_VIDEO_START_STREAMING", "Start video streaming"), ("MAV_CMD_VIDEO_STOP_STREAMING", "Stop the given video stream"), ("MAV_CMD_REQUEST_VIDEO_STREAM_INFORMATION", "Request video stream information (VIDEO_STREAM_INFORMATION)"), ("MAV_CMD_REQUEST_VIDEO_STREAM_STATUS", "Request video stream status (VIDEO_STREAM_STATUS)"), ("MAV_CMD_LOGGING_START", "Request to start streaming logging data over MAVLink (see also LOGGING_DATA message)"), ("MAV_CMD_LOGGING_STOP", "Request to stop streaming log data over MAVLink"), ("MAV_CMD_AIRFRAME_CONFIGURATION", ""), ("MAV_CMD_CONTROL_HIGH_LATENCY", "Request to start/stop transmitting over the high latency telemetry"), ("MAV_CMD_PANORAMA_CREATE", "Create a panorama at the current position"), ("MAV_CMD_DO_VTOL_TRANSITION", "Request VTOL transition"), ("MAV_CMD_ARM_AUTHORIZATION_REQUEST", "Request authorization to arm the vehicle to a external entity, the arm authorizer is responsible to request all data that is needs from the vehicle before authorize or deny the request. If approved the progress of command_ack message should be set with period of time that this authorization is valid in seconds or in case it was denied it should be set with one of the reasons in ARM_AUTH_DENIED_REASON."), ("MAV_CMD_SET_GUIDED_SUBMODE_STANDARD", "This command sets the submode to standard guided when vehicle is in guided mode. The vehicle holds position and altitude and the user can input the desired velocities along all three axes."), ("MAV_CMD_SET_GUIDED_SUBMODE_CIRCLE", "This command sets submode circle when vehicle is in guided mode. Vehicle flies along a circle facing the center of the circle. The user can input the velocity along the circle and change the radius. If no input is given the vehicle will hold position."), ("MAV_CMD_CONDITION_GATE", "Delay mission state machine until gate has been reached."), ("MAV_CMD_NAV_FENCE_RETURN_POINT", "Fence return point. There can only be one fence return point."), ("MAV_CMD_NAV_FENCE_POLYGON_VERTEX_INCLUSION", "Fence vertex for an inclusion polygon (the polygon must not be self-intersecting). The vehicle must stay within this area. Minimum of 3 vertices required."), ("MAV_CMD_NAV_FENCE_POLYGON_VERTEX_EXCLUSION", "Fence vertex for an exclusion polygon (the polygon must not be self-intersecting). The vehicle must stay outside this area. Minimum of 3 vertices required."), ("MAV_CMD_NAV_FENCE_CIRCLE_INCLUSION", "Circular fence area. The vehicle must stay inside this area."), ("MAV_CMD_NAV_FENCE_CIRCLE_EXCLUSION", "Circular fence area. The vehicle must stay outside this area."), ("MAV_CMD_NAV_RALLY_POINT", "Rally point. You can have multiple rally points defined."), ("MAV_CMD_UAVCAN_GET_NODE_INFO", "Commands the vehicle to respond with a sequence of messages UAVCAN_NODE_INFO, one message per every UAVCAN node that is online. Note that some of the response messages can be lost, which the receiver can detect easily by checking whether every received UAVCAN_NODE_STATUS has a matching message UAVCAN_NODE_INFO received earlier; if not, this command should be sent again in order to request re-transmission of the node information messages."), ("MAV_CMD_PAYLOAD_PREPARE_DEPLOY", "Deploy payload on a Lat / Lon / Alt position. This includes the navigation to reach the required release position and velocity."), ("MAV_CMD_PAYLOAD_CONTROL_DEPLOY", "Control the payload deployment."), ("MAV_CMD_WAYPOINT_USER_1", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_2", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_3", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_4", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_5", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_SPATIAL_USER_1", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_2", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_3", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_4", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_5", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_USER_1", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_2", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_3", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_4", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_5", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.")]
    public static var enumEnd = UInt(31015)
}
