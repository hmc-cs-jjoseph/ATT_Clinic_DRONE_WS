// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionPauseRequest {
  constructor() {
    this.pause = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionPauseRequest
    // Serialize message field [pause]
    bufferInfo = _serializer.uint8(obj.pause, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionPauseRequest
    let tmp;
    let len;
    let data = new MissionPauseRequest();
    // Deserialize message field [pause]
    tmp = _deserializer.uint8(buffer);
    data.pause = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionPauseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6228bf1c5f353cff5a346033e9aff938';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 pause
    
    `;
  }

};

class MissionPauseResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionPauseResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionPauseResponse
    let tmp;
    let len;
    let data = new MissionPauseResponse();
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
    return 'dji_sdk/MissionPauseResponse';
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
  Request: MissionPauseRequest,
  Response: MissionPauseResponse
};
