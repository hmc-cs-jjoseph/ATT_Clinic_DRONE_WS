// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TimeStamp {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.time = 0;
    this.time_ns = 0;
    this.sync_flag = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type TimeStamp
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [time]
    bufferInfo = _serializer.uint32(obj.time, bufferInfo);
    // Serialize message field [time_ns]
    bufferInfo = _serializer.uint32(obj.time_ns, bufferInfo);
    // Serialize message field [sync_flag]
    bufferInfo = _serializer.uint8(obj.sync_flag, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type TimeStamp
    let tmp;
    let len;
    let data = new TimeStamp();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [time]
    tmp = _deserializer.uint32(buffer);
    data.time = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [time_ns]
    tmp = _deserializer.uint32(buffer);
    data.time_ns = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [sync_flag]
    tmp = _deserializer.uint8(buffer);
    data.sync_flag = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/TimeStamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdf94dfbb71b3e4aec0ba55884cec090';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 time
    uint32 time_ns
    uint8 sync_flag
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

};

module.exports = TimeStamp;
