// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let drone_telemetry = require('./drone_telemetry.js');

//-----------------------------------------------------------

class drone_cmd {
  constructor() {
    this.telemetry = new drone_telemetry();
    this.channels = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_cmd
    // Serialize message field [telemetry]
    bufferInfo = drone_telemetry.serialize(obj.telemetry, bufferInfo);
    // Serialize the length for message field [channels]
    bufferInfo = _serializer.uint32(obj.channels.length, bufferInfo);
    // Serialize message field [channels]
    bufferInfo.buffer.push(obj.channels);
    bufferInfo.length += obj.channels.length;
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type drone_cmd
    let tmp;
    let len;
    let data = new drone_cmd();
    // Deserialize message field [telemetry]
    tmp = drone_telemetry.deserialize(buffer);
    data.telemetry = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [channels]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [channels]
    data.channels = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mailroom/drone_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31c966da147198d7cc374657df64a44b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mailroom/drone_telemetry telemetry
    uint8[] channels
    
    ================================================================================
    MSG: mailroom/drone_telemetry
    float64 longitude
    float64 latitude
    uint8 height
    uint8 az_angle
    
    `;
  }

};

module.exports = drone_cmd;
