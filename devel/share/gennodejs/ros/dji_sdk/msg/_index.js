
"use strict";

let MissionStatusOther = require('./MissionStatusOther.js');
let MissionStatusHotpoint = require('./MissionStatusHotpoint.js');
let MissionStatusWaypoint = require('./MissionStatusWaypoint.js');
let WaypointList = require('./WaypointList.js');
let GlobalPosition = require('./GlobalPosition.js');
let MissionFollowmeTarget = require('./MissionFollowmeTarget.js');
let Gimbal = require('./Gimbal.js');
let Waypoint = require('./Waypoint.js');
let AttitudeQuaternion = require('./AttitudeQuaternion.js');
let MissionWaypoint = require('./MissionWaypoint.js');
let LocalPosition = require('./LocalPosition.js');
let Compass = require('./Compass.js');
let TransparentTransmissionData = require('./TransparentTransmissionData.js');
let MissionFollowmeTask = require('./MissionFollowmeTask.js');
let MissionStatusFollowme = require('./MissionStatusFollowme.js');
let FlightControlInfo = require('./FlightControlInfo.js');
let MissionWaypointAction = require('./MissionWaypointAction.js');
let MissionHotpointTask = require('./MissionHotpointTask.js');
let MissionEventWpAction = require('./MissionEventWpAction.js');
let A3RTK = require('./A3RTK.js');
let TimeStamp = require('./TimeStamp.js');
let RCChannels = require('./RCChannels.js');
let MissionPushInfo = require('./MissionPushInfo.js');
let MissionEventWpReach = require('./MissionEventWpReach.js');
let MissionEventWpUpload = require('./MissionEventWpUpload.js');
let MissionWaypointTask = require('./MissionWaypointTask.js');
let Acceleration = require('./Acceleration.js');
let Velocity = require('./Velocity.js');
let A3GPS = require('./A3GPS.js');
let PowerStatus = require('./PowerStatus.js');
let WaypointNavigationActionFeedback = require('./WaypointNavigationActionFeedback.js');
let GlobalPositionNavigationGoal = require('./GlobalPositionNavigationGoal.js');
let LocalPositionNavigationActionGoal = require('./LocalPositionNavigationActionGoal.js');
let WaypointNavigationResult = require('./WaypointNavigationResult.js');
let WaypointNavigationFeedback = require('./WaypointNavigationFeedback.js');
let WaypointNavigationActionGoal = require('./WaypointNavigationActionGoal.js');
let DroneTaskResult = require('./DroneTaskResult.js');
let WaypointNavigationActionResult = require('./WaypointNavigationActionResult.js');
let GlobalPositionNavigationActionGoal = require('./GlobalPositionNavigationActionGoal.js');
let LocalPositionNavigationResult = require('./LocalPositionNavigationResult.js');
let DroneTaskActionResult = require('./DroneTaskActionResult.js');
let GlobalPositionNavigationActionResult = require('./GlobalPositionNavigationActionResult.js');
let DroneTaskFeedback = require('./DroneTaskFeedback.js');
let DroneTaskActionGoal = require('./DroneTaskActionGoal.js');
let DroneTaskGoal = require('./DroneTaskGoal.js');
let WaypointNavigationGoal = require('./WaypointNavigationGoal.js');
let DroneTaskActionFeedback = require('./DroneTaskActionFeedback.js');
let DroneTaskAction = require('./DroneTaskAction.js');
let LocalPositionNavigationFeedback = require('./LocalPositionNavigationFeedback.js');
let GlobalPositionNavigationActionFeedback = require('./GlobalPositionNavigationActionFeedback.js');
let LocalPositionNavigationAction = require('./LocalPositionNavigationAction.js');
let WaypointNavigationAction = require('./WaypointNavigationAction.js');
let GlobalPositionNavigationResult = require('./GlobalPositionNavigationResult.js');
let GlobalPositionNavigationAction = require('./GlobalPositionNavigationAction.js');
let GlobalPositionNavigationFeedback = require('./GlobalPositionNavigationFeedback.js');
let LocalPositionNavigationActionFeedback = require('./LocalPositionNavigationActionFeedback.js');
let LocalPositionNavigationActionResult = require('./LocalPositionNavigationActionResult.js');
let LocalPositionNavigationGoal = require('./LocalPositionNavigationGoal.js');

module.exports = {
  MissionStatusOther: MissionStatusOther,
  MissionStatusHotpoint: MissionStatusHotpoint,
  MissionStatusWaypoint: MissionStatusWaypoint,
  WaypointList: WaypointList,
  GlobalPosition: GlobalPosition,
  MissionFollowmeTarget: MissionFollowmeTarget,
  Gimbal: Gimbal,
  Waypoint: Waypoint,
  AttitudeQuaternion: AttitudeQuaternion,
  MissionWaypoint: MissionWaypoint,
  LocalPosition: LocalPosition,
  Compass: Compass,
  TransparentTransmissionData: TransparentTransmissionData,
  MissionFollowmeTask: MissionFollowmeTask,
  MissionStatusFollowme: MissionStatusFollowme,
  FlightControlInfo: FlightControlInfo,
  MissionWaypointAction: MissionWaypointAction,
  MissionHotpointTask: MissionHotpointTask,
  MissionEventWpAction: MissionEventWpAction,
  A3RTK: A3RTK,
  TimeStamp: TimeStamp,
  RCChannels: RCChannels,
  MissionPushInfo: MissionPushInfo,
  MissionEventWpReach: MissionEventWpReach,
  MissionEventWpUpload: MissionEventWpUpload,
  MissionWaypointTask: MissionWaypointTask,
  Acceleration: Acceleration,
  Velocity: Velocity,
  A3GPS: A3GPS,
  PowerStatus: PowerStatus,
  WaypointNavigationActionFeedback: WaypointNavigationActionFeedback,
  GlobalPositionNavigationGoal: GlobalPositionNavigationGoal,
  LocalPositionNavigationActionGoal: LocalPositionNavigationActionGoal,
  WaypointNavigationResult: WaypointNavigationResult,
  WaypointNavigationFeedback: WaypointNavigationFeedback,
  WaypointNavigationActionGoal: WaypointNavigationActionGoal,
  DroneTaskResult: DroneTaskResult,
  WaypointNavigationActionResult: WaypointNavigationActionResult,
  GlobalPositionNavigationActionGoal: GlobalPositionNavigationActionGoal,
  LocalPositionNavigationResult: LocalPositionNavigationResult,
  DroneTaskActionResult: DroneTaskActionResult,
  GlobalPositionNavigationActionResult: GlobalPositionNavigationActionResult,
  DroneTaskFeedback: DroneTaskFeedback,
  DroneTaskActionGoal: DroneTaskActionGoal,
  DroneTaskGoal: DroneTaskGoal,
  WaypointNavigationGoal: WaypointNavigationGoal,
  DroneTaskActionFeedback: DroneTaskActionFeedback,
  DroneTaskAction: DroneTaskAction,
  LocalPositionNavigationFeedback: LocalPositionNavigationFeedback,
  GlobalPositionNavigationActionFeedback: GlobalPositionNavigationActionFeedback,
  LocalPositionNavigationAction: LocalPositionNavigationAction,
  WaypointNavigationAction: WaypointNavigationAction,
  GlobalPositionNavigationResult: GlobalPositionNavigationResult,
  GlobalPositionNavigationAction: GlobalPositionNavigationAction,
  GlobalPositionNavigationFeedback: GlobalPositionNavigationFeedback,
  LocalPositionNavigationActionFeedback: LocalPositionNavigationActionFeedback,
  LocalPositionNavigationActionResult: LocalPositionNavigationActionResult,
  LocalPositionNavigationGoal: LocalPositionNavigationGoal,
};
