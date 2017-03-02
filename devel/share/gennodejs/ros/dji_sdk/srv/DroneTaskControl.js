// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DroneTaskControlRequest {
  constructor() {
    this.task = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type DroneTaskControlRequest
    // Serialize message field [task]
    bufferInfo = _serializer.uint8(obj.task, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type DroneTaskControlRequest
    let tmp;
    let len;
    let data = new DroneTaskControlRequest();
    // Deserialize message field [task]
    tmp = _deserializer.uint8(buffer);
    data.task = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/DroneTaskControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfae433ef22bd8313f92bc5cad00c264';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 task
    
    `;
  }

};

class DroneTaskControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type DroneTaskControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type DroneTaskControlResponse
    let tmp;
    let len;
    let data = new DroneTaskControlResponse();
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
    return 'dji_sdk/DroneTaskControlResponse';
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
  Request: DroneTaskControlRequest,
  Response: DroneTaskControlResponse
};
