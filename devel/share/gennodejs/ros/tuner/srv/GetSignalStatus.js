// Auto-generated. Do not edit!

// (in-package tuner.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

let mailroom = _finder('mailroom');

//-----------------------------------------------------------

class GetSignalStatusRequest {
  constructor() {
    this.channels = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GetSignalStatusRequest
    // Serialize the length for message field [channels]
    bufferInfo = _serializer.uint32(obj.channels.length, bufferInfo);
    // Serialize message field [channels]
    obj.channels.forEach((val) => {
      bufferInfo = _serializer.uint32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GetSignalStatusRequest
    let tmp;
    let len;
    let data = new GetSignalStatusRequest();
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
    // Returns string type for a service object
    return 'tuner/GetSignalStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69497818efcd0783ff3c42a6dda42dd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] channels
    
    `;
  }

};

class GetSignalStatusResponse {
  constructor() {
    this.signaldata = new mailroom.msg.ATSCsignal();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GetSignalStatusResponse
    // Serialize message field [signaldata]
    bufferInfo = mailroom.msg.ATSCsignal.serialize(obj.signaldata, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GetSignalStatusResponse
    let tmp;
    let len;
    let data = new GetSignalStatusResponse();
    // Deserialize message field [signaldata]
    tmp = mailroom.msg.ATSCsignal.deserialize(buffer);
    data.signaldata = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'tuner/GetSignalStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a082b1c929d63eae2f0d5b254b584ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mailroom/ATSCsignal signaldata
    
    
    ================================================================================
    MSG: mailroom/ATSCsignal
    uint32[] channel
    uint32[] SS
    uint32[] SNQ
    
    `;
  }

};

module.exports = {
  Request: GetSignalStatusRequest,
  Response: GetSignalStatusResponse
};
