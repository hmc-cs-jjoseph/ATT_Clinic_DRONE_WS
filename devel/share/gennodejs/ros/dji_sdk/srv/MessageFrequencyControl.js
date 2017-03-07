// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MessageFrequencyControlRequest {
  constructor() {
    this.frequency = new Array(16).fill(0);
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MessageFrequencyControlRequest
    // Serialize message field [frequency]
    bufferInfo.buffer.push(obj.frequency);
    bufferInfo.length += obj.frequency.length;
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MessageFrequencyControlRequest
    let tmp;
    let len;
    let data = new MessageFrequencyControlRequest();
    len = 16;
    // Deserialize message field [frequency]
    data.frequency = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MessageFrequencyControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f27a0697a2efd8da664f239ba301c7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[16] frequency
    
    `;
  }

};

class MessageFrequencyControlResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MessageFrequencyControlResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MessageFrequencyControlResponse
    let tmp;
    let len;
    let data = new MessageFrequencyControlResponse();
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
    return 'dji_sdk/MessageFrequencyControlResponse';
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
  Request: MessageFrequencyControlRequest,
  Response: MessageFrequencyControlResponse
};
