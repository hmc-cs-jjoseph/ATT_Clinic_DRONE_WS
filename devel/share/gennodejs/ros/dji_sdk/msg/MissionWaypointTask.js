// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let MissionWaypoint = require('./MissionWaypoint.js');

//-----------------------------------------------------------

class MissionWaypointTask {
  constructor() {
    this.velocity_range = 0.0;
    this.idle_velocity = 0.0;
    this.action_on_finish = 0;
    this.mission_exec_times = 0;
    this.yaw_mode = 0;
    this.trace_mode = 0;
    this.action_on_rc_lost = 0;
    this.gimbal_pitch_mode = 0;
    this.mission_waypoint = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWaypointTask
    // Serialize message field [velocity_range]
    bufferInfo = _serializer.float32(obj.velocity_range, bufferInfo);
    // Serialize message field [idle_velocity]
    bufferInfo = _serializer.float32(obj.idle_velocity, bufferInfo);
    // Serialize message field [action_on_finish]
    bufferInfo = _serializer.uint8(obj.action_on_finish, bufferInfo);
    // Serialize message field [mission_exec_times]
    bufferInfo = _serializer.uint8(obj.mission_exec_times, bufferInfo);
    // Serialize message field [yaw_mode]
    bufferInfo = _serializer.uint8(obj.yaw_mode, bufferInfo);
    // Serialize message field [trace_mode]
    bufferInfo = _serializer.uint8(obj.trace_mode, bufferInfo);
    // Serialize message field [action_on_rc_lost]
    bufferInfo = _serializer.uint8(obj.action_on_rc_lost, bufferInfo);
    // Serialize message field [gimbal_pitch_mode]
    bufferInfo = _serializer.uint8(obj.gimbal_pitch_mode, bufferInfo);
    // Serialize the length for message field [mission_waypoint]
    bufferInfo = _serializer.uint32(obj.mission_waypoint.length, bufferInfo);
    // Serialize message field [mission_waypoint]
    obj.mission_waypoint.forEach((val) => {
      bufferInfo = MissionWaypoint.serialize(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWaypointTask
    let tmp;
    let len;
    let data = new MissionWaypointTask();
    // Deserialize message field [velocity_range]
    tmp = _deserializer.float32(buffer);
    data.velocity_range = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [idle_velocity]
    tmp = _deserializer.float32(buffer);
    data.idle_velocity = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [action_on_finish]
    tmp = _deserializer.uint8(buffer);
    data.action_on_finish = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mission_exec_times]
    tmp = _deserializer.uint8(buffer);
    data.mission_exec_times = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_mode]
    tmp = _deserializer.uint8(buffer);
    data.yaw_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [trace_mode]
    tmp = _deserializer.uint8(buffer);
    data.trace_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [action_on_rc_lost]
    tmp = _deserializer.uint8(buffer);
    data.action_on_rc_lost = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gimbal_pitch_mode]
    tmp = _deserializer.uint8(buffer);
    data.gimbal_pitch_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [mission_waypoint]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mission_waypoint]
    data.mission_waypoint = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = MissionWaypoint.deserialize(buffer);
      data.mission_waypoint[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionWaypointTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a81a8c039337b422bde8ccc87d96c14b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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

module.exports = MissionWaypointTask;
