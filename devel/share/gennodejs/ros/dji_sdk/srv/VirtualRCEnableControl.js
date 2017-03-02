// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class VirtualRCEnableControlRequest {
  constructor() {
    this.enable = 0;
    this.if_back_to_real = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VirtualRCEnableControlRequest
    // Serialize message field [enable]
    bufferInfo = _serializer.uint8(obj.enable, bufferInfo);
    // Serialize message field [if_back_to_real]
    bufferInfo = _serializer.uint8(obj.if_back_to_real, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VirtualRCEnableControlRequest
    let tmp;
    let len;
    let data = new VirtualRCEnableControlRequest();
    // Deserialize message field [enable]
    tmp = _deserializer.uint8(buffer);
    data.enable = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [if_back_to_real]
    tmp = _deserializer.uint8(buffer);
    data.if_back_to_real = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/VirtualRCEnableControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ed79d2efd2ce23c729bcf82c65bbf2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 enable
    uint8 if_back_to_real
    
    
    
    `;
  }

};

class VirtualRCEnableControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VirtualRCEnableControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VirtualRCEnableControlResponse
    let tmp;
    let len;
    let data = new VirtualRCEnableControlResponse();
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
    return 'dji_sdk/VirtualRCEnableControlResponse';
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
  Request: VirtualRCEnableControlRequest,
  Response: VirtualRCEnableControlResponse
};
