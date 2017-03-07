// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionWpSetSpeedRequest {
  constructor() {
    this.speed = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWpSetSpeedRequest
    // Serialize message field [speed]
    bufferInfo = _serializer.float32(obj.speed, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWpSetSpeedRequest
    let tmp;
    let len;
    let data = new MissionWpSetSpeedRequest();
    // Deserialize message field [speed]
    tmp = _deserializer.float32(buffer);
    data.speed = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpSetSpeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca65bba734a79b4a6707341d829f4d5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 speed
    
    `;
  }

};

class MissionWpSetSpeedResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWpSetSpeedResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWpSetSpeedResponse
    let tmp;
    let len;
    let data = new MissionWpSetSpeedResponse();
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
    return 'dji_sdk/MissionWpSetSpeedResponse';
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
  Request: MissionWpSetSpeedRequest,
  Response: MissionWpSetSpeedResponse
};
