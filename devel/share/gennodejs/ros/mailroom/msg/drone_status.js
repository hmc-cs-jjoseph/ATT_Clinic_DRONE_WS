// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let drone_telemetry = require('./drone_telemetry.js');
let ATSCsignal = require('./ATSCsignal.js');

//-----------------------------------------------------------

class drone_status {
  constructor() {
    this.telemetry = new drone_telemetry();
    this.signal = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_status
    // Serialize message field [telemetry]
    bufferInfo = drone_telemetry.serialize(obj.telemetry, bufferInfo);
    // Serialize the length for message field [signal]
    bufferInfo = _serializer.uint32(obj.signal.length, bufferInfo);
    // Serialize message field [signal]
    obj.signal.forEach((val) => {
      bufferInfo = ATSCsignal.serialize(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type drone_status
    let tmp;
    let len;
    let data = new drone_status();
    // Deserialize message field [telemetry]
    tmp = drone_telemetry.deserialize(buffer);
    data.telemetry = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [signal]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [signal]
    data.signal = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = ATSCsignal.deserialize(buffer);
      data.signal[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mailroom/drone_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b484c2ff6abc5985d5ae3dd8f029ac81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mailroom/drone_telemetry telemetry
    mailroom/ATSCsignal[] signal
    
    ================================================================================
    MSG: mailroom/drone_telemetry
    float64 longitude
    float64 latitude
    uint8 height
    uint8 az_angle
    
    ================================================================================
    MSG: mailroom/ATSCsignal
    uint8 channel
    uint8 SS
    uint8 SNQ
    
    `;
  }

};

module.exports = drone_status;
