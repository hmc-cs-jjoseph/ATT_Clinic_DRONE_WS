// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class drone_cmd {
  constructor() {
    this.data = '';
    this.local_x = 0.0;
    this.local_y = 0.0;
    this.heights = [];
    this.az_angle = 0;
    this.channels = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_cmd
    // Serialize message field [data]
    bufferInfo = _serializer.string(obj.data, bufferInfo);
    // Serialize message field [local_x]
    bufferInfo = _serializer.float64(obj.local_x, bufferInfo);
    // Serialize message field [local_y]
    bufferInfo = _serializer.float64(obj.local_y, bufferInfo);
    // Serialize the length for message field [heights]
    bufferInfo = _serializer.uint32(obj.heights.length, bufferInfo);
    // Serialize message field [heights]
    bufferInfo.buffer.push(obj.heights);
    bufferInfo.length += obj.heights.length;
    // Serialize message field [az_angle]
    bufferInfo = _serializer.uint8(obj.az_angle, bufferInfo);
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
    // Deserialize message field [data]
    tmp = _deserializer.string(buffer);
    data.data = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [local_x]
    tmp = _deserializer.float64(buffer);
    data.local_x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [local_y]
    tmp = _deserializer.float64(buffer);
    data.local_y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [heights]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [heights]
    data.heights = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    // Deserialize message field [az_angle]
    tmp = _deserializer.uint8(buffer);
    data.az_angle = tmp.data;
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
    return '7b2b47fd3d9aeb75628a01f6c100e808';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    float64 local_x
    float64 local_y
    uint8[] heights
    uint8 az_angle
    uint8[] channels
    
    `;
  }

};

module.exports = drone_cmd;
