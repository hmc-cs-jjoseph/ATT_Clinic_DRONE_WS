// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

let MissionHotpointTask = require('../msg/MissionHotpointTask.js');

//-----------------------------------------------------------

class MissionHpDownloadRequest {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpDownloadRequest
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpDownloadRequest
    let tmp;
    let len;
    let data = new MissionHpDownloadRequest();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpDownloadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

};

class MissionHpDownloadResponse {
  constructor() {
    this.hotpoint_task = new MissionHotpointTask();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHpDownloadResponse
    // Serialize message field [hotpoint_task]
    bufferInfo = MissionHotpointTask.serialize(obj.hotpoint_task, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHpDownloadResponse
    let tmp;
    let len;
    let data = new MissionHpDownloadResponse();
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
    return 'dji_sdk/MissionHpDownloadResponse';
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

module.exports = {
  Request: MissionHpDownloadRequest,
  Response: MissionHpDownloadResponse
};
