// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionHpSetRadiusRequest {
  constructor() {
    this.radius = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpSetRadiusRequest
    // Serialize message field [radius]
    bufferInfo = _serializer.float32(obj.radius, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpSetRadiusRequest
    let tmp;
    let len;
    let data = new MissionHpSetRadiusRequest();
    // Deserialize message field [radius]
    tmp = _deserializer.float32(buffer);
    data.radius = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpSetRadiusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b690044065f2210effb664cc7a28125';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 radius
    
    `;
  }

};

class MissionHpSetRadiusResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpSetRadiusResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpSetRadiusResponse
    let tmp;
    let len;
    let data = new MissionHpSetRadiusResponse();
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
    return 'dji_sdk/MissionHpSetRadiusResponse';
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
  Request: MissionHpSetRadiusRequest,
  Response: MissionHpSetRadiusResponse
};
