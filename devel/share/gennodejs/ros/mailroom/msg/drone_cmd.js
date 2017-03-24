// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class drone_cmd {
  constructor() {
    this.data = 0;
    this.heights = [];
    this.channels = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_cmd
    // Serialize message field [data]
    bufferInfo = _serializer.uint32(obj.data, bufferInfo);
    // Serialize the length for message field [heights]
    bufferInfo = _serializer.uint32(obj.heights.length, bufferInfo);
    // Serialize message field [heights]
    obj.heights.forEach((val) => {
      bufferInfo = _serializer.int32(val, bufferInfo);
    });
    // Serialize the length for message field [channels]
    bufferInfo = _serializer.uint32(obj.channels.length, bufferInfo);
    // Serialize message field [channels]
    obj.channels.forEach((val) => {
      bufferInfo = _serializer.int32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type drone_cmd
    let tmp;
    let len;
    let data = new drone_cmd();
    // Deserialize message field [data]
    tmp = _deserializer.uint32(buffer);
    data.data = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [heights]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [heights]
    data.heights = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.int32(buffer);
      data.heights[i] = tmp.data;
      buffer = tmp.buffer;
    }
    // Deserialize array length for message field [channels]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [channels]
    data.channels = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.int32(buffer);
      data.channels[i] = tmp.data;
      buffer = tmp.buffer;
    }
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
    return '85a674b29af4a3350a621eb7328f4685';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 data
    int32[] heights
    int32[] channels
    
    `;
  }

};

module.exports = drone_cmd;
