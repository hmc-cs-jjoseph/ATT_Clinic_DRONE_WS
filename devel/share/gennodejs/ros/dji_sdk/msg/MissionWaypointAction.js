// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionWaypointAction {
  constructor() {
    this.action_repeat = 0;
    this.command_list = new Array(15).fill(0);
    this.command_parameter = new Array(15).fill(0);
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionWaypointAction
    // Serialize message field [action_repeat]
    bufferInfo = _serializer.uint8(obj.action_repeat, bufferInfo);
    // Serialize message field [command_list]
    bufferInfo.buffer.push(obj.command_list);
    bufferInfo.length += obj.command_list.length;
    // Serialize message field [command_parameter]
    obj.command_parameter.forEach((val) => {
      bufferInfo = _serializer.int16(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionWaypointAction
    let tmp;
    let len;
    let data = new MissionWaypointAction();
    // Deserialize message field [action_repeat]
    tmp = _deserializer.uint8(buffer);
    data.action_repeat = tmp.data;
    buffer = tmp.buffer;
    len = 15;
    // Deserialize message field [command_list]
    data.command_list = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    len = 15;
    // Deserialize message field [command_parameter]
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.int16(buffer);
      data.command_parameter[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionWaypointAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc8a44f81cb941d4399400060a0a73d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 action_repeat
    uint8[15] command_list
    int16[15] command_parameter
    
    `;
  }

};

module.exports = MissionWaypointAction;
