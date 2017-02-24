// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CameraActionControlRequest {
  constructor() {
    this.camera_action = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CameraActionControlRequest
    // Serialize message field [camera_action]
    bufferInfo = _serializer.uint8(obj.camera_action, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CameraActionControlRequest
    let tmp;
    let len;
    let data = new CameraActionControlRequest();
    // Deserialize message field [camera_action]
    tmp = _deserializer.uint8(buffer);
    data.camera_action = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/CameraActionControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4ed1822b47772deebd56bdca0095874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 camera_action
    
    `;
  }

};

class CameraActionControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CameraActionControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CameraActionControlResponse
    let tmp;
    let len;
    let data = new CameraActionControlResponse();
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
    return 'dji_sdk/CameraActionControlResponse';
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
  Request: CameraActionControlRequest,
  Response: CameraActionControlResponse
};
