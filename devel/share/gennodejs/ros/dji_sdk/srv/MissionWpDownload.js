// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

let MissionWaypointTask = require('../msg/MissionWaypointTask.js');

//-----------------------------------------------------------

class MissionWpDownloadRequest {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWpDownloadRequest
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWpDownloadRequest
    let tmp;
    let len;
    let data = new MissionWpDownloadRequest();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpDownloadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

};

class MissionWpDownloadResponse {
  constructor() {
    this.waypoint_task = new MissionWaypointTask();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWpDownloadResponse
    // Serialize message field [waypoint_task]
    bufferInfo = MissionWaypointTask.serialize(obj.waypoint_task, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWpDownloadResponse
    let tmp;
    let len;
    let data = new MissionWpDownloadResponse();
    // Deserialize message field [waypoint_task]
    tmp = MissionWaypointTask.deserialize(buffer);
    data.waypoint_task = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpDownloadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c965e82a72d204e1e6d1e75389efb89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionWaypointTask waypoint_task
    
    
    ================================================================================
    MSG: dji_sdk/MissionWaypointTask
    float32 velocity_range
    float32 idle_velocity
    uint8 action_on_finish
    uint8 mission_exec_times
    uint8 yaw_mode
    uint8 trace_mode
    uint8 action_on_rc_lost
    uint8 gimbal_pitch_mode
    MissionWaypoint[] mission_waypoint
    
    ================================================================================
    MSG: dji_sdk/MissionWaypoint
    float64 latitude
    float64 longitude
    float32 altitude
    float32 damping_distance
    int16 target_yaw
    int16 target_gimbal_pitch
    uint8 turn_mode
    uint8 has_action
    uint16 action_time_limit
    MissionWaypointAction waypoint_action
    
    ================================================================================
    MSG: dji_sdk/MissionWaypointAction
    uint8 action_repeat
    uint8[15] command_list
    int16[15] command_parameter
    
    `;
  }

};

module.exports = {
  Request: MissionWpDownloadRequest,
  Response: MissionWpDownloadResponse
};
