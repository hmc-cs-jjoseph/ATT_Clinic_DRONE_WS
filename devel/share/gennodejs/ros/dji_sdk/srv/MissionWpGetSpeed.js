// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionWpGetSpeedRequest {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWpGetSpeedRequest
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWpGetSpeedRequest
    let tmp;
    let len;
    let data = new MissionWpGetSpeedRequest();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpGetSpeedRequest';
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

class MissionWpGetSpeedResponse {
  constructor() {
    this.speed = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWpGetSpeedResponse
    // Serialize message field [speed]
    bufferInfo = _serializer.float32(obj.speed, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWpGetSpeedResponse
    let tmp;
    let len;
    let data = new MissionWpGetSpeedResponse();
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
    return 'dji_sdk/MissionWpGetSpeedResponse';
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

module.exports = {
  Request: MissionWpGetSpeedRequest,
  Response: MissionWpGetSpeedResponse
};
