// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class Waypoint {
  constructor() {
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.heading = 0;
    this.staytime = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Waypoint
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    // Serialize message field [heading]
    bufferInfo = _serializer.int16(obj.heading, bufferInfo);
    // Serialize message field [staytime]
    bufferInfo = _serializer.uint16(obj.staytime, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Waypoint
    let tmp;
    let len;
    let data = new Waypoint();
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [heading]
    tmp = _deserializer.int16(buffer);
    data.heading = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [staytime]
    tmp = _deserializer.uint16(buffer);
    data.staytime = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d0881fabe75ce713c47829a8aa66d90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #latitude is in degree
    float64 latitude
    #longitude is in degree
    float64 longitude
    float32 altitude
    #heading is in [-180,180]
    int16 heading 
    #stay time is in second
    uint16 staytime
    
    `;
  }

};

module.exports = Waypoint;
