// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class VelocityControlRequest {
  constructor() {
    this.frame = 0;
    this.vx = 0.0;
    this.vy = 0.0;
    this.vz = 0.0;
    this.yawRate = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VelocityControlRequest
    // Serialize message field [frame]
    bufferInfo = _serializer.uint8(obj.frame, bufferInfo);
    // Serialize message field [vx]
    bufferInfo = _serializer.float32(obj.vx, bufferInfo);
    // Serialize message field [vy]
    bufferInfo = _serializer.float32(obj.vy, bufferInfo);
    // Serialize message field [vz]
    bufferInfo = _serializer.float32(obj.vz, bufferInfo);
    // Serialize message field [yawRate]
    bufferInfo = _serializer.float32(obj.yawRate, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VelocityControlRequest
    let tmp;
    let len;
    let data = new VelocityControlRequest();
    // Deserialize message field [frame]
    tmp = _deserializer.uint8(buffer);
    data.frame = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vx]
    tmp = _deserializer.float32(buffer);
    data.vx = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vy]
    tmp = _deserializer.float32(buffer);
    data.vy = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vz]
    tmp = _deserializer.float32(buffer);
    data.vz = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yawRate]
    tmp = _deserializer.float32(buffer);
    data.yawRate = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/VelocityControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f22cb4a7d613ba54a3d5dd7b12f82795';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 frame
    float32 vx
    float32 vy
    float32 vz
    float32 yawRate
    
    `;
  }

};

class VelocityControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VelocityControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VelocityControlResponse
    let tmp;
    let len;
    let data = new VelocityControlResponse();
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
    return 'dji_sdk/VelocityControlResponse';
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
  Request: VelocityControlRequest,
  Response: VelocityControlResponse
};
