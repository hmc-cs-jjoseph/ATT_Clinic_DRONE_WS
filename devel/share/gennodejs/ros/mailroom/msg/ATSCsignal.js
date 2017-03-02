// Auto-generated. Do not edit!

// (in-package mailroom.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class ATSCsignal {
  constructor() {
    this.channel = 0;
    this.SS = 0;
    this.SNQ = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ATSCsignal
    // Serialize message field [channel]
    bufferInfo = _serializer.uint32(obj.channel, bufferInfo);
    // Serialize message field [SS]
    bufferInfo = _serializer.uint32(obj.SS, bufferInfo);
    // Serialize message field [SNQ]
    bufferInfo = _serializer.uint32(obj.SNQ, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ATSCsignal
    let tmp;
    let len;
    let data = new ATSCsignal();
    // Deserialize message field [channel]
    tmp = _deserializer.uint32(buffer);
    data.channel = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [SS]
    tmp = _deserializer.uint32(buffer);
    data.SS = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [SNQ]
    tmp = _deserializer.uint32(buffer);
    data.SNQ = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mailroom/ATSCsignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a289453f346fcf5fbd110cae2a72009';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 channel
    uint32 SS
    uint32 SNQ
    
    `;
  }

};

module.exports = ATSCsignal;
