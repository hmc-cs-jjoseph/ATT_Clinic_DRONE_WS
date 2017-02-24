// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let MissionFollowmeTask = require('../msg/MissionFollowmeTask.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionFmUploadRequest {
  constructor() {
    this.followme_task = new MissionFollowmeTask();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionFmUploadRequest
    // Serialize message field [followme_task]
    bufferInfo = MissionFollowmeTask.serialize(obj.followme_task, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionFmUploadRequest
    let tmp;
    let len;
    let data = new MissionFmUploadRequest();
    // Deserialize message field [followme_task]
    tmp = MissionFollowmeTask.deserialize(buffer);
    data.followme_task = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionFmUploadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cd25f0a53a1d10e6538dd9fb391a7e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionFollowmeTask followme_task
    
    ================================================================================
    MSG: dji_sdk/MissionFollowmeTask
    uint8 mode
    uint8 yaw_mode
    float64 initial_latitude
    float64 initial_longitude
    uint16 initial_altitude
    uint8 sensitivity
    
    `;
  }

};

class MissionFmUploadResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionFmUploadResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionFmUploadResponse
    let tmp;
    let len;
    let data = new MissionFmUploadResponse();
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
    return 'dji_sdk/MissionFmUploadResponse';
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
  Request: MissionFmUploadRequest,
  Response: MissionFmUploadResponse
};
