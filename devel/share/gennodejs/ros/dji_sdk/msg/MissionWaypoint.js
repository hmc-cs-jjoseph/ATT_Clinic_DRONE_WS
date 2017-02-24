// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let MissionWaypointAction = require('./MissionWaypointAction.js');

//-----------------------------------------------------------

class MissionWaypoint {
  constructor() {
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.damping_distance = 0.0;
    this.target_yaw = 0;
    this.target_gimbal_pitch = 0;
    this.turn_mode = 0;
    this.has_action = 0;
    this.action_time_limit = 0;
    this.waypoint_action = new MissionWaypointAction();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWaypoint
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    // Serialize message field [damping_distance]
    bufferInfo = _serializer.float32(obj.damping_distance, bufferInfo);
    // Serialize message field [target_yaw]
    bufferInfo = _serializer.int16(obj.target_yaw, bufferInfo);
    // Serialize message field [target_gimbal_pitch]
    bufferInfo = _serializer.int16(obj.target_gimbal_pitch, bufferInfo);
    // Serialize message field [turn_mode]
    bufferInfo = _serializer.uint8(obj.turn_mode, bufferInfo);
    // Serialize message field [has_action]
    bufferInfo = _serializer.uint8(obj.has_action, bufferInfo);
    // Serialize message field [action_time_limit]
    bufferInfo = _serializer.uint16(obj.action_time_limit, bufferInfo);
    // Serialize message field [waypoint_action]
    bufferInfo = MissionWaypointAction.serialize(obj.waypoint_action, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWaypoint
    let tmp;
    let len;
    let data = new MissionWaypoint();
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [damping_distance]
    tmp = _deserializer.float32(buffer);
    data.damping_distance = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [target_yaw]
    tmp = _deserializer.int16(buffer);
    data.target_yaw = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [target_gimbal_pitch]
    tmp = _deserializer.int16(buffer);
    data.target_gimbal_pitch = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [turn_mode]
    tmp = _deserializer.uint8(buffer);
    data.turn_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [has_action]
    tmp = _deserializer.uint8(buffer);
    data.has_action = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [action_time_limit]
    tmp = _deserializer.uint16(buffer);
    data.action_time_limit = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [waypoint_action]
    tmp = MissionWaypointAction.deserialize(buffer);
    data.waypoint_action = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd321a17884980812391aa8e2850409e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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

module.exports = MissionWaypoint;
