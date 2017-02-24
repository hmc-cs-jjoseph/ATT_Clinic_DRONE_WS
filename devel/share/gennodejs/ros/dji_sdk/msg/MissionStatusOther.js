// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionStatusOther {
  constructor() {
    this.mission_type = 0;
    this.last_mission_type = 0;
    this.is_broken = 0;
    this.error_code = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionStatusOther
    // Serialize message field [mission_type]
    bufferInfo = _serializer.uint8(obj.mission_type, bufferInfo);
    // Serialize message field [last_mission_type]
    bufferInfo = _serializer.uint8(obj.last_mission_type, bufferInfo);
    // Serialize message field [is_broken]
    bufferInfo = _serializer.uint8(obj.is_broken, bufferInfo);
    // Serialize message field [error_code]
    bufferInfo = _serializer.uint8(obj.error_code, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionStatusOther
    let tmp;
    let len;
    let data = new MissionStatusOther();
    // Deserialize message field [mission_type]
    tmp = _deserializer.uint8(buffer);
    data.mission_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [last_mission_type]
    tmp = _deserializer.uint8(buffer);
    data.last_mission_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [is_broken]
    tmp = _deserializer.uint8(buffer);
    data.is_broken = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [error_code]
    tmp = _deserializer.uint8(buffer);
    data.error_code = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusOther';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0261ae1eb980895a8685db930ec1a68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    uint8 last_mission_type
    uint8 is_broken
    uint8 error_code
    
    `;
  }

};

module.exports = MissionStatusOther;
