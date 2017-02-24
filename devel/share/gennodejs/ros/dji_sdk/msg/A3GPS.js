// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class A3GPS {
  constructor() {
    this.date = 0;
    this.time = 0;
    this.longitude = 0;
    this.latitude = 0;
    this.height_above_sea = 0;
    this.velocity_north = 0.0;
    this.velocity_east = 0.0;
    this.velocity_ground = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type A3GPS
    // Serialize message field [date]
    bufferInfo = _serializer.uint32(obj.date, bufferInfo);
    // Serialize message field [time]
    bufferInfo = _serializer.uint32(obj.time, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.int32(obj.longitude, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.int32(obj.latitude, bufferInfo);
    // Serialize message field [height_above_sea]
    bufferInfo = _serializer.int32(obj.height_above_sea, bufferInfo);
    // Serialize message field [velocity_north]
    bufferInfo = _serializer.float32(obj.velocity_north, bufferInfo);
    // Serialize message field [velocity_east]
    bufferInfo = _serializer.float32(obj.velocity_east, bufferInfo);
    // Serialize message field [velocity_ground]
    bufferInfo = _serializer.float32(obj.velocity_ground, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type A3GPS
    let tmp;
    let len;
    let data = new A3GPS();
    // Deserialize message field [date]
    tmp = _deserializer.uint32(buffer);
    data.date = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [time]
    tmp = _deserializer.uint32(buffer);
    data.time = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.int32(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.int32(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [height_above_sea]
    tmp = _deserializer.int32(buffer);
    data.height_above_sea = tmp.data;
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
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/A3GPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11eb94934f90318efef991e43caf4ed1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 date #GPS date
    uint32 time #GPS time
    int32 longitude #unit in degree*10^7
    int32 latitude  #unit in degree*10^7
    int32 height_above_sea #unit in mm 
    float32 velocity_north #unit in cm/s
    float32 velocity_east #unit in cm/s
    float32 velocity_ground #unit in cm/s
    
    `;
  }

};

module.exports = A3GPS;
