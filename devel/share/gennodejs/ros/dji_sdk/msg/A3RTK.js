// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class A3RTK {
  constructor() {
    this.date = 0;
    this.time = 0;
    this.longitude_RTK = 0.0;
    this.latitude_RTK = 0.0;
    this.height_above_sea_RTK = 0.0;
    this.velocity_north = 0.0;
    this.velocity_east = 0.0;
    this.velocity_ground = 0.0;
    this.yaw = 0;
    this.position_flag = 0;
    this.yaw_flag = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type A3RTK
    // Serialize message field [date]
    bufferInfo = _serializer.uint32(obj.date, bufferInfo);
    // Serialize message field [time]
    bufferInfo = _serializer.uint32(obj.time, bufferInfo);
    // Serialize message field [longitude_RTK]
    bufferInfo = _serializer.float64(obj.longitude_RTK, bufferInfo);
    // Serialize message field [latitude_RTK]
    bufferInfo = _serializer.float64(obj.latitude_RTK, bufferInfo);
    // Serialize message field [height_above_sea_RTK]
    bufferInfo = _serializer.float32(obj.height_above_sea_RTK, bufferInfo);
    // Serialize message field [velocity_north]
    bufferInfo = _serializer.float32(obj.velocity_north, bufferInfo);
    // Serialize message field [velocity_east]
    bufferInfo = _serializer.float32(obj.velocity_east, bufferInfo);
    // Serialize message field [velocity_ground]
    bufferInfo = _serializer.float32(obj.velocity_ground, bufferInfo);
    // Serialize message field [yaw]
    bufferInfo = _serializer.int16(obj.yaw, bufferInfo);
    // Serialize message field [position_flag]
    bufferInfo = _serializer.uint8(obj.position_flag, bufferInfo);
    // Serialize message field [yaw_flag]
    bufferInfo = _serializer.uint8(obj.yaw_flag, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type A3RTK
    let tmp;
    let len;
    let data = new A3RTK();
    // Deserialize message field [date]
    tmp = _deserializer.uint32(buffer);
    data.date = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [time]
    tmp = _deserializer.uint32(buffer);
    data.time = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude_RTK]
    tmp = _deserializer.float64(buffer);
    data.longitude_RTK = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude_RTK]
    tmp = _deserializer.float64(buffer);
    data.latitude_RTK = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [height_above_sea_RTK]
    tmp = _deserializer.float32(buffer);
    data.height_above_sea_RTK = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [velocity_north]
    tmp = _deserializer.float32(buffer);
    data.velocity_north = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [velocity_east]
    tmp = _deserializer.float32(buffer);
    data.velocity_east = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [velocity_ground]
    tmp = _deserializer.float32(buffer);
    data.velocity_ground = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw]
    tmp = _deserializer.int16(buffer);
    data.yaw = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [position_flag]
    tmp = _deserializer.uint8(buffer);
    data.position_flag = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_flag]
    tmp = _deserializer.uint8(buffer);
    data.yaw_flag = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/A3RTK';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f1a4c1310d587c3f79f00f74019a0be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 date
    uint32 time
    float64 longitude_RTK
    float64 latitude_RTK
    float32 height_above_sea_RTK
    float32 velocity_north
    float32 velocity_east
    float32 velocity_ground
    int16 yaw #between baseline and south
    uint8 position_flag
    uint8 yaw_flag
    
    `;
  }

};

module.exports = A3RTK;
