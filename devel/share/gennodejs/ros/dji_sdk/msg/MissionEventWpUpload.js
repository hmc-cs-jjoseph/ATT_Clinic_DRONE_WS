// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionEventWpUpload {
  constructor() {
    this.incident_type = 0;
    this.mission_valid = 0;
    this.estimated_runtime = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionEventWpUpload
    // Serialize message field [incident_type]
    bufferInfo = _serializer.uint8(obj.incident_type, bufferInfo);
    // Serialize message field [mission_valid]
    bufferInfo = _serializer.uint8(obj.mission_valid, bufferInfo);
    // Serialize message field [estimated_runtime]
    bufferInfo = _serializer.uint16(obj.estimated_runtime, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionEventWpUpload
    let tmp;
    let len;
    let data = new MissionEventWpUpload();
    // Deserialize message field [incident_type]
    tmp = _deserializer.uint8(buffer);
    data.incident_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mission_valid]
    tmp = _deserializer.uint8(buffer);
    data.mission_valid = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [estimated_runtime]
    tmp = _deserializer.uint16(buffer);
    data.estimated_runtime = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionEventWpUpload';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bbd22d7335594c91d2500ae8d41ab36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 incident_type
    uint8 mission_valid
    uint16 estimated_runtime
    
    `;
  }

};

module.exports = MissionEventWpUpload;
