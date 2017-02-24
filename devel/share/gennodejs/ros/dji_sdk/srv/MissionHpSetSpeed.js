// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionHpSetSpeedRequest {
  constructor() {
    this.speed = 0.0;
    this.direction = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpSetSpeedRequest
    // Serialize message field [speed]
    bufferInfo = _serializer.float32(obj.speed, bufferInfo);
    // Serialize message field [direction]
    bufferInfo = _serializer.uint8(obj.direction, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpSetSpeedRequest
    let tmp;
    let len;
    let data = new MissionHpSetSpeedRequest();
    // Deserialize message field [speed]
    tmp = _deserializer.float32(buffer);
    data.speed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [direction]
    tmp = _deserializer.uint8(buffer);
    data.direction = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpSetSpeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ccccf547dbec8854aa1e989f62cba0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 speed
    uint8 direction
    
    `;
  }

};

class MissionHpSetSpeedResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpSetSpeedResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpSetSpeedResponse
    let tmp;
    let len;
    let data = new MissionHpSetSpeedResponse();
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
    return 'dji_sdk/MissionHpSetSpeedResponse';
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
  Request: MissionHpSetSpeedRequest,
  Response: MissionHpSetSpeedResponse
};
