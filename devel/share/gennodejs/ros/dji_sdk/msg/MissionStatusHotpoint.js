// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionStatusHotpoint {
  constructor() {
    this.mission_type = 0;
    this.mission_status = 0;
    this.hotpoint_radius = 0;
    this.error_code = 0;
    this.hotpoint_velocity = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionStatusHotpoint
    // Serialize message field [mission_type]
    bufferInfo = _serializer.uint8(obj.mission_type, bufferInfo);
    // Serialize message field [mission_status]
    bufferInfo = _serializer.uint8(obj.mission_status, bufferInfo);
    // Serialize message field [hotpoint_radius]
    bufferInfo = _serializer.uint16(obj.hotpoint_radius, bufferInfo);
    // Serialize message field [error_code]
    bufferInfo = _serializer.uint8(obj.error_code, bufferInfo);
    // Serialize message field [hotpoint_velocity]
    bufferInfo = _serializer.uint8(obj.hotpoint_velocity, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionStatusHotpoint
    let tmp;
    let len;
    let data = new MissionStatusHotpoint();
    // Deserialize message field [mission_type]
    tmp = _deserializer.uint8(buffer);
    data.mission_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mission_status]
    tmp = _deserializer.uint8(buffer);
    data.mission_status = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [hotpoint_radius]
    tmp = _deserializer.uint16(buffer);
    data.hotpoint_radius = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [error_code]
    tmp = _deserializer.uint8(buffer);
    data.error_code = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [hotpoint_velocity]
    tmp = _deserializer.uint8(buffer);
    data.hotpoint_velocity = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusHotpoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8139577a287bd3bb109446868782e2f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    uint8 mission_status
    uint16 hotpoint_radius
    uint8 error_code
    uint8 hotpoint_velocity
    
    `;
  }

};

module.exports = MissionStatusHotpoint;
