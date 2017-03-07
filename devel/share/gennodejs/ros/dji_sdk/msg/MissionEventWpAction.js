// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionEventWpAction {
  constructor() {
    this.incident_type = 0;
    this.repeat = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionEventWpAction
    // Serialize message field [incident_type]
    bufferInfo = _serializer.uint8(obj.incident_type, bufferInfo);
    // Serialize message field [repeat]
    bufferInfo = _serializer.uint8(obj.repeat, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionEventWpAction
    let tmp;
    let len;
    let data = new MissionEventWpAction();
    // Deserialize message field [incident_type]
    tmp = _deserializer.uint8(buffer);
    data.incident_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [repeat]
    tmp = _deserializer.uint8(buffer);
    data.repeat = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionEventWpAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'feb2e4aeb62859a1aee7828f09a4a6a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 incident_type
    uint8 repeat
    
    `;
  }

};

module.exports = MissionEventWpAction;
