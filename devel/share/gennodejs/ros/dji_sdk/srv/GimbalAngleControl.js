// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GimbalAngleControlRequest {
  constructor() {
    this.yaw = 0;
    this.roll = 0;
    this.pitch = 0;
    this.duration = 0;
    this.absolute_or_incremental = false;
    this.yaw_cmd_ignore = false;
    this.roll_cmd_ignore = false;
    this.pitch_cmd_ignore = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GimbalAngleControlRequest
    // Serialize message field [yaw]
    bufferInfo = _serializer.int16(obj.yaw, bufferInfo);
    // Serialize message field [roll]
    bufferInfo = _serializer.int16(obj.roll, bufferInfo);
    // Serialize message field [pitch]
    bufferInfo = _serializer.int16(obj.pitch, bufferInfo);
    // Serialize message field [duration]
    bufferInfo = _serializer.int16(obj.duration, bufferInfo);
    // Serialize message field [absolute_or_incremental]
    bufferInfo = _serializer.bool(obj.absolute_or_incremental, bufferInfo);
    // Serialize message field [yaw_cmd_ignore]
    bufferInfo = _serializer.bool(obj.yaw_cmd_ignore, bufferInfo);
    // Serialize message field [roll_cmd_ignore]
    bufferInfo = _serializer.bool(obj.roll_cmd_ignore, bufferInfo);
    // Serialize message field [pitch_cmd_ignore]
    bufferInfo = _serializer.bool(obj.pitch_cmd_ignore, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GimbalAngleControlRequest
    let tmp;
    let len;
    let data = new GimbalAngleControlRequest();
    // Deserialize message field [yaw]
    tmp = _deserializer.int16(buffer);
    data.yaw = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [roll]
    tmp = _deserializer.int16(buffer);
    data.roll = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [pitch]
    tmp = _deserializer.int16(buffer);
    data.pitch = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [duration]
    tmp = _deserializer.int16(buffer);
    data.duration = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [absolute_or_incremental]
    tmp = _deserializer.bool(buffer);
    data.absolute_or_incremental = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_cmd_ignore]
    tmp = _deserializer.bool(buffer);
    data.yaw_cmd_ignore = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [roll_cmd_ignore]
    tmp = _deserializer.bool(buffer);
    data.roll_cmd_ignore = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [pitch_cmd_ignore]
    tmp = _deserializer.bool(buffer);
    data.pitch_cmd_ignore = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/GimbalAngleControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ada515ce6b45dc1f09c576bfab01d4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    int16 yaw
    int16 roll
    int16 pitch
    int16 duration
    
    bool absolute_or_incremental
    bool yaw_cmd_ignore
    bool roll_cmd_ignore
    bool pitch_cmd_ignore
    
    `;
  }

};

class GimbalAngleControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GimbalAngleControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GimbalAngleControlResponse
    let tmp;
    let len;
    let data = new GimbalAngleControlResponse();
    // Deserialize message field [result]
    tmp = _deserializer.bool(buffer);
    data.result = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/GimbalAngleControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

};

module.exports = {
  Request: GimbalAngleControlRequest,
  Response: GimbalAngleControlResponse
};
