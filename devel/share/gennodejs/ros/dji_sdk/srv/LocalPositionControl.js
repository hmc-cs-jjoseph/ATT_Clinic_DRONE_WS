// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LocalPositionControlRequest {
  constructor() {
    this.x = 0.0;
    this.y = 0.0;
    this.z = 0.0;
    this.yaw = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type LocalPositionControlRequest
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
    //deserializes a message object of type LocalPositionControlRequest
    let tmp;
    let len;
    let data = new LocalPositionControlRequest();
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
    return 'dji_sdk/LocalPositionControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b81376c2774ff4f956e5110e01c9db26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 z
    
    float32 yaw
    
    `;
  }

};

class LocalPositionControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type LocalPositionControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type LocalPositionControlResponse
    let tmp;
    let len;
    let data = new LocalPositionControlResponse();
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
    return 'dji_sdk/LocalPositionControlResponse';
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
  Request: LocalPositionControlRequest,
  Response: LocalPositionControlResponse
};
