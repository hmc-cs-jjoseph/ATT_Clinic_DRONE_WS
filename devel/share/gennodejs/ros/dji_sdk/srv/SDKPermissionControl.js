// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SDKPermissionControlRequest {
  constructor() {
    this.control_enable = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SDKPermissionControlRequest
    // Serialize message field [control_enable]
    bufferInfo = _serializer.uint8(obj.control_enable, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SDKPermissionControlRequest
    let tmp;
    let len;
    let data = new SDKPermissionControlRequest();
    // Deserialize message field [control_enable]
    tmp = _deserializer.uint8(buffer);
    data.control_enable = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SDKPermissionControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd62981e022c80f2b67e97d9e17fffd9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint8 control_enable
    
    `;
  }

};

class SDKPermissionControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SDKPermissionControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SDKPermissionControlResponse
    let tmp;
    let len;
    let data = new SDKPermissionControlResponse();
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
    return 'dji_sdk/SDKPermissionControlResponse';
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
  Request: SDKPermissionControlRequest,
  Response: SDKPermissionControlResponse
};
