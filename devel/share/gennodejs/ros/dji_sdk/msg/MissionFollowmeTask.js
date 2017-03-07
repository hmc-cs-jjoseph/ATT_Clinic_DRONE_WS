// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionFollowmeTask {
  constructor() {
    this.mode = 0;
    this.yaw_mode = 0;
    this.initial_latitude = 0.0;
    this.initial_longitude = 0.0;
    this.initial_altitude = 0;
    this.sensitivity = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionFollowmeTask
    // Serialize message field [mode]
    bufferInfo = _serializer.uint8(obj.mode, bufferInfo);
    // Serialize message field [yaw_mode]
    bufferInfo = _serializer.uint8(obj.yaw_mode, bufferInfo);
    // Serialize message field [initial_latitude]
    bufferInfo = _serializer.float64(obj.initial_latitude, bufferInfo);
    // Serialize message field [initial_longitude]
    bufferInfo = _serializer.float64(obj.initial_longitude, bufferInfo);
    // Serialize message field [initial_altitude]
    bufferInfo = _serializer.uint16(obj.initial_altitude, bufferInfo);
    // Serialize message field [sensitivity]
    bufferInfo = _serializer.uint8(obj.sensitivity, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionFollowmeTask
    let tmp;
    let len;
    let data = new MissionFollowmeTask();
    // Deserialize message field [mode]
    tmp = _deserializer.uint8(buffer);
    data.mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_mode]
    tmp = _deserializer.uint8(buffer);
    data.yaw_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [initial_latitude]
    tmp = _deserializer.float64(buffer);
    data.initial_latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [initial_longitude]
    tmp = _deserializer.float64(buffer);
    data.initial_longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [initial_altitude]
    tmp = _deserializer.uint16(buffer);
    data.initial_altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [sensitivity]
    tmp = _deserializer.uint8(buffer);
    data.sensitivity = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionFollowmeTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b5547386d29daca9e6c32595ec4ca50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode
    uint8 yaw_mode
    float64 initial_latitude
    float64 initial_longitude
    uint16 initial_altitude
    uint8 sensitivity
    
    `;
  }

};

module.exports = MissionFollowmeTask;
