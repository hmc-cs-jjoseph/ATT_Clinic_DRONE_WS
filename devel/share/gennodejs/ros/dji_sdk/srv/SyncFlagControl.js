// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SyncFlagControlRequest {
  constructor() {
    this.frequency = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SyncFlagControlRequest
    // Serialize message field [frequency]
    bufferInfo = _serializer.uint32(obj.frequency, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SyncFlagControlRequest
    let tmp;
    let len;
    let data = new SyncFlagControlRequest();
    // Deserialize message field [frequency]
    tmp = _deserializer.uint32(buffer);
    data.frequency = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SyncFlagControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73ffa65309f649b8b694f03ce8799567';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frequency
    
    `;
  }

};

class SyncFlagControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SyncFlagControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SyncFlagControlResponse
    let tmp;
    let len;
    let data = new SyncFlagControlResponse();
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
    return 'dji_sdk/SyncFlagControlResponse';
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
  Request: SyncFlagControlRequest,
  Response: SyncFlagControlResponse
};
