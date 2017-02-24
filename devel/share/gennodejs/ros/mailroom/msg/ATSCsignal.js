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
    bufferInfo = _serializer.uint8(obj.channel, bufferInfo);
    // Serialize message field [SS]
    bufferInfo = _serializer.uint8(obj.SS, bufferInfo);
    // Serialize message field [SNQ]
    bufferInfo = _serializer.uint8(obj.SNQ, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ATSCsignal
    let tmp;
    let len;
    let data = new ATSCsignal();
    // Deserialize message field [channel]
    tmp = _deserializer.uint8(buffer);
    data.channel = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [SS]
    tmp = _deserializer.uint8(buffer);
    data.SS = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [SNQ]
    tmp = _deserializer.uint8(buffer);
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
    return '063ee36b89b5191f33facb8c16b0feb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 channel
    uint8 SS
    uint8 SNQ
    
    `;
  }

};

module.exports = ATSCsignal;
