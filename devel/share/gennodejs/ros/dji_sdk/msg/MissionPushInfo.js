// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MissionPushInfo {
  constructor() {
    this.type = 0;
    this.data_1 = 0;
    this.data_2 = 0;
    this.data_3 = 0;
    this.data_4 = 0;
    this.data_5 = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MissionPushInfo
    // Serialize message field [type]
    bufferInfo = _serializer.uint8(obj.type, bufferInfo);
    // Serialize message field [data_1]
    bufferInfo = _serializer.uint8(obj.data_1, bufferInfo);
    // Serialize message field [data_2]
    bufferInfo = _serializer.uint8(obj.data_2, bufferInfo);
    // Serialize message field [data_3]
    bufferInfo = _serializer.uint8(obj.data_3, bufferInfo);
    // Serialize message field [data_4]
    bufferInfo = _serializer.uint8(obj.data_4, bufferInfo);
    // Serialize message field [data_5]
    bufferInfo = _serializer.uint8(obj.data_5, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MissionPushInfo
    let tmp;
    let len;
    let data = new MissionPushInfo();
    // Deserialize message field [type]
    tmp = _deserializer.uint8(buffer);
    data.type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data_1]
    tmp = _deserializer.uint8(buffer);
    data.data_1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data_2]
    tmp = _deserializer.uint8(buffer);
    data.data_2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data_3]
    tmp = _deserializer.uint8(buffer);
    data.data_3 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data_4]
    tmp = _deserializer.uint8(buffer);
    data.data_4 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data_5]
    tmp = _deserializer.uint8(buffer);
    data.data_5 = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionPushInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a520776ca6060b527ddc1be33a700532';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 type
    uint8 data_1
    uint8 data_2
    uint8 data_3
    uint8 data_4
    uint8 data_5
    
    `;
  }

};

module.exports = MissionPushInfo;
