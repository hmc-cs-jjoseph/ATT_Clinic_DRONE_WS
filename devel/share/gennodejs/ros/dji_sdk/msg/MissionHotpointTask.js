// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionHotpointTask {
  constructor() {
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.radius = 0.0;
    this.angular_speed = 0.0;
    this.is_clockwise = 0;
    this.start_point = 0;
    this.yaw_mode = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionHotpointTask
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float64(obj.altitude, bufferInfo);
    // Serialize message field [radius]
    bufferInfo = _serializer.float64(obj.radius, bufferInfo);
    // Serialize message field [angular_speed]
    bufferInfo = _serializer.float32(obj.angular_speed, bufferInfo);
    // Serialize message field [is_clockwise]
    bufferInfo = _serializer.uint8(obj.is_clockwise, bufferInfo);
    // Serialize message field [start_point]
    bufferInfo = _serializer.uint8(obj.start_point, bufferInfo);
    // Serialize message field [yaw_mode]
    bufferInfo = _serializer.uint8(obj.yaw_mode, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionHotpointTask
    let tmp;
    let len;
    let data = new MissionHotpointTask();
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float64(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [radius]
    tmp = _deserializer.float64(buffer);
    data.radius = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [angular_speed]
    tmp = _deserializer.float32(buffer);
    data.angular_speed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [is_clockwise]
    tmp = _deserializer.uint8(buffer);
    data.is_clockwise = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [start_point]
    tmp = _deserializer.uint8(buffer);
    data.start_point = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_mode]
    tmp = _deserializer.uint8(buffer);
    data.yaw_mode = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionHotpointTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5700988132c5f205ad38c15800896e84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 latitude
    float64 longitude
    float64 altitude
    float64 radius
    float32 angular_speed
    uint8 is_clockwise
    uint8 start_point
    uint8 yaw_mode
    
    `;
  }

};

module.exports = MissionHotpointTask;
