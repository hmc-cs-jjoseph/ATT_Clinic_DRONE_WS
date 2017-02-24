// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class PowerStatus {
  constructor() {
    this.percentage = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type PowerStatus
    // Serialize message field [percentage]
    bufferInfo = _serializer.uint8(obj.percentage, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type PowerStatus
    let tmp;
    let len;
    let data = new PowerStatus();
    // Deserialize message field [percentage]
    tmp = _deserializer.uint8(buffer);
    data.percentage = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/PowerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a5e877bf2d8a1641c4f5265662bc268';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 percentage
    
    `;
  }

};

module.exports = PowerStatus;
