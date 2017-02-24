// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendDataToRemoteDeviceRequest {
  constructor() {
    this.data = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SendDataToRemoteDeviceRequest
    // Serialize the length for message field [data]
    bufferInfo = _serializer.uint32(obj.data.length, bufferInfo);
    // Serialize message field [data]
    bufferInfo.buffer.push(obj.data);
    bufferInfo.length += obj.data.length;
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SendDataToRemoteDeviceRequest
    let tmp;
    let len;
    let data = new SendDataToRemoteDeviceRequest();
    // Deserialize array length for message field [data]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data]
    data.data = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SendDataToRemoteDeviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f43a8e1b362b75baa741461b46adc7e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8[] data
    
    `;
  }

};

class SendDataToRemoteDeviceResponse {
  constructor() {
    this.result = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SendDataToRemoteDeviceResponse
    // Serialize message field [result]
    bufferInfo = _serializer.bool(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SendDataToRemoteDeviceResponse
    let tmp;
    let len;
    let data = new SendDataToRemoteDeviceResponse();
    // Deserialize message field [result]
    tmp = _deserializer.bool(buffer);
    data.result = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SendDataToRemoteDeviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

};

module.exports = {
  Request: SendDataToRemoteDeviceRequest,
  Response: SendDataToRemoteDeviceResponse
};
