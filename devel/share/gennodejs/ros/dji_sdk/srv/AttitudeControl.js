// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AttitudeControlRequest {
  constructor() {
    this.flag = 0;
    this.x = 0.0;
    this.y = 0.0;
    this.z = 0.0;
    this.yaw = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type AttitudeControlRequest
    // Serialize message field [flag]
    bufferInfo = _serializer.uint8(obj.flag, bufferInfo);
    // Serialize message field [x]
    bufferInfo = _serializer.float32(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.float32(obj.y, bufferInfo);
    // Serialize message field [z]
    bufferInfo = _serializer.float32(obj.z, bufferInfo);
    // Serialize message field [yaw]
    bufferInfo = _serializer.float32(obj.yaw, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type AttitudeControlRequest
    let tmp;
    let len;
    let data = new AttitudeControlRequest();
    // Deserialize message field [flag]
    tmp = _deserializer.uint8(buffer);
    data.flag = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [x]
    tmp = _deserializer.float32(buffer);
    data.x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y]
    tmp = _deserializer.float32(buffer);
    data.y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [z]
    tmp = _deserializer.float32(buffer);
    data.z = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw]
    tmp = _deserializer.float32(buffer);
    data.yaw = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/AttitudeControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3f099167feb75c2a47a9001cacdfe10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 flag
    float32 x
    float32 y
    float32 z
    float32 yaw
    
    `;
  }

};

class AttitudeControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type AttitudeControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type AttitudeControlResponse
    let tmp;
    let len;
    let data = new AttitudeControlResponse();
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
    return 'dji_sdk/AttitudeControlResponse';
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
  Request: AttitudeControlRequest,
  Response: AttitudeControlResponse
};
