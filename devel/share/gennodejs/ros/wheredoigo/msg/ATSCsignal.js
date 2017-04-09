// Auto-generated. Do not edit!

// (in-package wheredoigo.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class ATSCsignal {
  constructor() {
    this.channel = [];
    this.SS = [];
    this.SNQ = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ATSCsignal
    // Serialize the length for message field [channel]
    bufferInfo = _serializer.uint32(obj.channel.length, bufferInfo);
    // Serialize message field [channel]
    obj.channel.forEach((val) => {
      bufferInfo = _serializer.uint32(val, bufferInfo);
    });
    // Serialize the length for message field [SS]
    bufferInfo = _serializer.uint32(obj.SS.length, bufferInfo);
    // Serialize message field [SS]
    obj.SS.forEach((val) => {
      bufferInfo = _serializer.uint32(val, bufferInfo);
    });
    // Serialize the length for message field [SNQ]
    bufferInfo = _serializer.uint32(obj.SNQ.length, bufferInfo);
    // Serialize message field [SNQ]
    obj.SNQ.forEach((val) => {
      bufferInfo = _serializer.uint32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ATSCsignal
    let tmp;
    let len;
    let data = new ATSCsignal();
    // Deserialize array length for message field [channel]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [channel]
    data.channel = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint32(buffer);
      data.channel[i] = tmp.data;
      buffer = tmp.buffer;
    }
    // Deserialize array length for message field [SS]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [SS]
    data.SS = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint32(buffer);
      data.SS[i] = tmp.data;
      buffer = tmp.buffer;
    }
    // Deserialize array length for message field [SNQ]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [SNQ]
    data.SNQ = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint32(buffer);
      data.SNQ[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'wheredoigo/ATSCsignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ccd2ea36ff16d36a5ac9c2f8d4f7377';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] channel
    uint32[] SS
    uint32[] SNQ
    
    `;
  }

};

module.exports = ATSCsignal;
