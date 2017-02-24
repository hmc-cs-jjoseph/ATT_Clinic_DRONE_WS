// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class drone_telemetry {
  constructor() {
    this.longitude = 0.0;
    this.latitude = 0.0;
    this.height = 0;
    this.az_angle = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_telemetry
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [height]
    bufferInfo = _serializer.uint8(obj.height, bufferInfo);
    // Serialize message field [az_angle]
    bufferInfo = _serializer.uint8(obj.az_angle, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type drone_telemetry
    let tmp;
    let len;
    let data = new drone_telemetry();
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [height]
    tmp = _deserializer.uint8(buffer);
    data.height = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [az_angle]
    tmp = _deserializer.uint8(buffer);
    data.az_angle = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mailroom/drone_telemetry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67912beb69b5afc3f72f11f99217a1f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 longitude
    float64 latitude
    uint8 height
    uint8 az_angle
    
    `;
  }

};

module.exports = drone_telemetry;
