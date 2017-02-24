// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionStatusFollowme {
  constructor() {
    this.mission_type = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionStatusFollowme
    // Serialize message field [mission_type]
    bufferInfo = _serializer.uint8(obj.mission_type, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionStatusFollowme
    let tmp;
    let len;
    let data = new MissionStatusFollowme();
    // Deserialize message field [mission_type]
    tmp = _deserializer.uint8(buffer);
    data.mission_type = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusFollowme';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '917010b744881889ec912637e401b269';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    
    `;
  }

};

module.exports = MissionStatusFollowme;
