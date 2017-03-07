// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class drone_move {
  constructor() {
    this.local_x = 0.0;
    this.local_y = 0.0;
    this.height = 0;
    this.az_angle = 0;
    this.channels = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type drone_move
    // Serialize message field [local_x]
    bufferInfo = _serializer.float64(obj.local_x, bufferInfo);
    // Serialize message field [local_y]
    bufferInfo = _serializer.float64(obj.local_y, bufferInfo);
    // Serialize message field [height]
    bufferInfo = _serializer.uint32(obj.height, bufferInfo);
    // Serialize message field [az_angle]
    bufferInfo = _serializer.uint32(obj.az_angle, bufferInfo);
    // Serialize the length for message field [channels]
    bufferInfo = _serializer.uint32(obj.channels.length, bufferInfo);
    // Serialize message field [channels]
    obj.channels.forEach((val) => {
      bufferInfo = _serializer.uint32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type drone_move
    let tmp;
    let len;
    let data = new drone_move();
    // Deserialize message field [local_x]
    tmp = _deserializer.float64(buffer);
    data.local_x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [local_y]
    tmp = _deserializer.float64(buffer);
    data.local_y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [height]
    tmp = _deserializer.uint32(buffer);
    data.height = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [az_angle]
    tmp = _deserializer.uint32(buffer);
    data.az_angle = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [channels]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [channels]
    data.channels = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint32(buffer);
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
    return 'mailroom/drone_move';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13cf322e3b3fad8fa26fe5682e2de0bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 local_x
    float64 local_y
    uint32 height
    uint32 az_angle
    uint32[] channels
    
    `;
  }

};

module.exports = drone_move;
