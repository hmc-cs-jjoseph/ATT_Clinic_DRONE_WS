// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let MissionFollowmeTarget = require('../msg/MissionFollowmeTarget.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionFmSetTargetRequest {
  constructor() {
    this.followme_target = new MissionFollowmeTarget();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionFmSetTargetRequest
    // Serialize message field [followme_target]
    bufferInfo = MissionFollowmeTarget.serialize(obj.followme_target, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionFmSetTargetRequest
    let tmp;
    let len;
    let data = new MissionFmSetTargetRequest();
    // Deserialize message field [followme_target]
    tmp = MissionFollowmeTarget.deserialize(buffer);
    data.followme_target = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionFmSetTargetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '186e8eaac8caf1c8852b2a15c50454d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionFollowmeTarget followme_target
    
    ================================================================================
    MSG: dji_sdk/MissionFollowmeTarget
    float64 latitude
    float64 longitude
    uint16 altitude
    
    `;
  }

};

class MissionFmSetTargetResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionFmSetTargetResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionFmSetTargetResponse
    let tmp;
    let len;
    let data = new MissionFmSetTargetResponse();
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
    return 'dji_sdk/MissionFmSetTargetResponse';
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
  Request: MissionFmSetTargetRequest,
  Response: MissionFmSetTargetResponse
};
