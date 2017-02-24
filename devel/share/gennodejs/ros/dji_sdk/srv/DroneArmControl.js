// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DroneArmControlRequest {
  constructor() {
    this.arm = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type DroneArmControlRequest
    // Serialize message field [arm]
    bufferInfo = _serializer.uint8(obj.arm, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type DroneArmControlRequest
    let tmp;
    let len;
    let data = new DroneArmControlRequest();
    // Deserialize message field [arm]
    tmp = _deserializer.uint8(buffer);
    data.arm = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/DroneArmControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e21c483c8d5b2db4fad7ea96e4e9cd5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 arm
    
    `;
  }

};

class DroneArmControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type DroneArmControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type DroneArmControlResponse
    let tmp;
    let len;
    let data = new DroneArmControlResponse();
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
    return 'dji_sdk/DroneArmControlResponse';
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
  Request: DroneArmControlRequest,
  Response: DroneArmControlResponse
};
