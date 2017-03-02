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
    this.battery = 0;
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
    // Serialize message field [battery]
    bufferInfo = _serializer.uint32(obj.battery, bufferInfo);
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
    // Deserialize message field [battery]
    tmp = _deserializer.uint32(buffer);
    data.battery = tmp.data;
    buffer = tmp.buffer;
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
    return '56e85cfc37e2764b4f83194b846ae01c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mailroom/drone_telemetry telemetry
    mailroom/ATSCsignal[] signal
    uint32 battery
    
    ================================================================================
    MSG: mailroom/drone_telemetry
    float64 local_x
    float64 local_y
    uint8 height
    uint8 az_angle
    
    ================================================================================
    MSG: mailroom/ATSCsignal
    uint32 channel
    uint32 SS
    uint32 SNQ
    
    `;
  }

};

module.exports = drone_status;
