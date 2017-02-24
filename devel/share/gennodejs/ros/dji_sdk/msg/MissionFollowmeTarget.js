// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionFollowmeTarget {
  constructor() {
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionFollowmeTarget
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.uint16(obj.altitude, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionFollowmeTarget
    let tmp;
    let len;
    let data = new MissionFollowmeTarget();
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.uint16(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionFollowmeTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a0e9fef853d7437503847554a9f4ca1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 latitude
    float64 longitude
    uint16 altitude
    
    `;
  }

};

module.exports = MissionFollowmeTarget;
