// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class drone_telemetry {
  constructor() {
    this.local_x = 0.0;
    this.local_y = 0.0;
    this.height = 0;
    this.az_angle = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_telemetry
    // Serialize message field [local_x]
    bufferInfo = _serializer.float64(obj.local_x, bufferInfo);
    // Serialize message field [local_y]
    bufferInfo = _serializer.float64(obj.local_y, bufferInfo);
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
    // Deserialize message field [local_x]
    tmp = _deserializer.float64(buffer);
    data.local_x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [local_y]
    tmp = _deserializer.float64(buffer);
    data.local_y = tmp.data;
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
    return '792f8e5647216f2868c34781b5225bcb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 local_x
    float64 local_y
    uint8 height
    uint8 az_angle
    
    `;
  }

};

module.exports = drone_telemetry;
