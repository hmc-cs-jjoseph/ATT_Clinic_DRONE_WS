// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class VirtualRCDataControlRequest {
  constructor() {
    this.channel_data = new Array(16).fill(0);
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VirtualRCDataControlRequest
    // Serialize message field [channel_data]
    obj.channel_data.forEach((val) => {
      bufferInfo = _serializer.uint32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VirtualRCDataControlRequest
    let tmp;
    let len;
    let data = new VirtualRCDataControlRequest();
    len = 16;
    // Deserialize message field [channel_data]
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint32(buffer);
      data.channel_data[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/VirtualRCDataControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5dc9e9c055cbd8bb34a920ab9e508c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    uint32[16] channel_data
    
    `;
  }

};

class VirtualRCDataControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VirtualRCDataControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VirtualRCDataControlResponse
    let tmp;
    let len;
    let data = new VirtualRCDataControlResponse();
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
    return 'dji_sdk/VirtualRCDataControlResponse';
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
  Request: VirtualRCDataControlRequest,
  Response: VirtualRCDataControlResponse
};
