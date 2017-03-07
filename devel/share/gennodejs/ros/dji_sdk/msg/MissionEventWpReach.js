// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionEventWpReach {
  constructor() {
    this.incident_type = 0;
    this.waypoint_index = 0;
    this.current_status = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionEventWpReach
    // Serialize message field [incident_type]
    bufferInfo = _serializer.uint8(obj.incident_type, bufferInfo);
    // Serialize message field [waypoint_index]
    bufferInfo = _serializer.uint8(obj.waypoint_index, bufferInfo);
    // Serialize message field [current_status]
    bufferInfo = _serializer.uint8(obj.current_status, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionEventWpReach
    let tmp;
    let len;
    let data = new MissionEventWpReach();
    // Deserialize message field [incident_type]
    tmp = _deserializer.uint8(buffer);
    data.incident_type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [waypoint_index]
    tmp = _deserializer.uint8(buffer);
    data.waypoint_index = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [current_status]
    tmp = _deserializer.uint8(buffer);
    data.current_status = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionEventWpReach';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '887664b69cd341b8a21df490bb79afea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 incident_type
    uint8 waypoint_index
    uint8 current_status
    
    `;
  }

};

module.exports = MissionEventWpReach;
