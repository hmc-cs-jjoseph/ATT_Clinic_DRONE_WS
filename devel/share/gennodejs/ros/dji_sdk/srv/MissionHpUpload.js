// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let MissionHotpointTask = require('../msg/MissionHotpointTask.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionHpUploadRequest {
  constructor() {
    this.hotpoint_task = new MissionHotpointTask();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpUploadRequest
    // Serialize message field [hotpoint_task]
    bufferInfo = MissionHotpointTask.serialize(obj.hotpoint_task, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpUploadRequest
    let tmp;
    let len;
    let data = new MissionHpUploadRequest();
    // Deserialize message field [hotpoint_task]
    tmp = MissionHotpointTask.deserialize(buffer);
    data.hotpoint_task = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpUploadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e36e66ca170c4d03ee023ad56c6bb5a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionHotpointTask hotpoint_task
    
    ================================================================================
    MSG: dji_sdk/MissionHotpointTask
    float64 latitude
    float64 longitude
    float64 altitude
    float64 radius
    float32 angular_speed
    uint8 is_clockwise
    uint8 start_point
    uint8 yaw_mode
    
    `;
  }

};

class MissionHpUploadResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpUploadResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpUploadResponse
    let tmp;
    let len;
    let data = new MissionHpUploadResponse();
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
    return 'dji_sdk/MissionHpUploadResponse';
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
  Request: MissionHpUploadRequest,
  Response: MissionHpUploadResponse
};
