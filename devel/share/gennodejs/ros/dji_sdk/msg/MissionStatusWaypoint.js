// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionStatusWaypoint {
  constructor() {
    this.mission_type = 0;
    this.target_waypoint = 0;
    this.current_status = 0;
    this.error_code = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionStatusWaypoint
    // Serialize message field [mission_type]
    bufferInfo = _serializer.uint8(obj.mission_type, bufferInfo);
    // Serialize message field [target_waypoint]
    bufferInfo = _serializer.uint8(obj.target_waypoint, bufferInfo);
    // Serialize message field [current_status]
    bufferInfo = _serializer.uint8(obj.current_status, bufferInfo);
    // Serialize message field [error_code]
    bufferInfo = _serializer.uint8(obj.error_code, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionStatusWaypoint
    let tmp;
    let len;
    let data = new MissionStatusWaypoint();
    // Deserialize message field [mission_type]
    tmp = _deserializer.uint8(buffer);
    data.mission_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [target_waypoint]
    tmp = _deserializer.uint8(buffer);
    data.target_waypoint = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [current_status]
    tmp = _deserializer.uint8(buffer);
    data.current_status = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [error_code]
    tmp = _deserializer.uint8(buffer);
    data.error_code = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f2b7b1e7f32be55abc541c1b7552d41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    uint8 target_waypoint
    uint8 current_status
    uint8 error_code
    
    `;
  }

};

module.exports = MissionStatusWaypoint;
