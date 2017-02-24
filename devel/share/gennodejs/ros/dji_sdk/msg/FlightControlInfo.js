// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class FlightControlInfo {
  constructor() {
    this.control_mode = 0;
    this.cur_ctrl_dev_in_navi_mode = 0;
    this.serial_req_status = 0;
    this.virtual_rc_status = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FlightControlInfo
    // Serialize message field [control_mode]
    bufferInfo = _serializer.uint8(obj.control_mode, bufferInfo);
    // Serialize message field [cur_ctrl_dev_in_navi_mode]
    bufferInfo = _serializer.uint8(obj.cur_ctrl_dev_in_navi_mode, bufferInfo);
    // Serialize message field [serial_req_status]
    bufferInfo = _serializer.uint8(obj.serial_req_status, bufferInfo);
    // Serialize message field [virtual_rc_status]
    bufferInfo = _serializer.uint8(obj.virtual_rc_status, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FlightControlInfo
    let tmp;
    let len;
    let data = new FlightControlInfo();
    // Deserialize message field [control_mode]
    tmp = _deserializer.uint8(buffer);
    data.control_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [cur_ctrl_dev_in_navi_mode]
    tmp = _deserializer.uint8(buffer);
    data.cur_ctrl_dev_in_navi_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [serial_req_status]
    tmp = _deserializer.uint8(buffer);
    data.serial_req_status = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [virtual_rc_status]
    tmp = _deserializer.uint8(buffer);
    data.virtual_rc_status = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/FlightControlInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '943648dc47db23e3c3071c5427b1db2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #control mode
    uint8 control_mode
    #0:rc, 1:mobile, 2:onboard
    uint8 cur_ctrl_dev_in_navi_mode
    #0:disabled, 1:enabled
    uint8 serial_req_status
    #0:disabled, 1:enabled
    uint8 virtual_rc_status
    
    `;
  }

};

module.exports = FlightControlInfo;
