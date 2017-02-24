// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GimbalSpeedControlRequest {
  constructor() {
    this.yaw_rate = 0;
    this.roll_rate = 0;
    this.pitch_rate = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GimbalSpeedControlRequest
    // Serialize message field [yaw_rate]
    bufferInfo = _serializer.int16(obj.yaw_rate, bufferInfo);
    // Serialize message field [roll_rate]
    bufferInfo = _serializer.int16(obj.roll_rate, bufferInfo);
    // Serialize message field [pitch_rate]
    bufferInfo = _serializer.int16(obj.pitch_rate, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GimbalSpeedControlRequest
    let tmp;
    let len;
    let data = new GimbalSpeedControlRequest();
    // Deserialize message field [yaw_rate]
    tmp = _deserializer.int16(buffer);
    data.yaw_rate = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [roll_rate]
    tmp = _deserializer.int16(buffer);
    data.roll_rate = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [pitch_rate]
    tmp = _deserializer.int16(buffer);
    data.pitch_rate = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/GimbalSpeedControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7e08b9aa20908d19435cff07f74cf49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int16 yaw_rate
    int16 roll_rate
    int16 pitch_rate
    
    
    `;
  }

};

class GimbalSpeedControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GimbalSpeedControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GimbalSpeedControlResponse
    let tmp;
    let len;
    let data = new GimbalSpeedControlResponse();
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
    return 'dji_sdk/GimbalSpeedControlResponse';
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
  Request: GimbalSpeedControlRequest,
  Response: GimbalSpeedControlResponse
};
