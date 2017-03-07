// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Acceleration {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.ts = 0;
    this.ax = 0.0;
    this.ay = 0.0;
    this.az = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Acceleration
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [ts]
    bufferInfo = _serializer.int32(obj.ts, bufferInfo);
    // Serialize message field [ax]
    bufferInfo = _serializer.float32(obj.ax, bufferInfo);
    // Serialize message field [ay]
    bufferInfo = _serializer.float32(obj.ay, bufferInfo);
    // Serialize message field [az]
    bufferInfo = _serializer.float32(obj.az, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Acceleration
    let tmp;
    let len;
    let data = new Acceleration();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [ts]
    tmp = _deserializer.int32(buffer);
    data.ts = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [ax]
    tmp = _deserializer.float32(buffer);
    data.ax = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [ay]
    tmp = _deserializer.float32(buffer);
    data.ay = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [az]
    tmp = _deserializer.float32(buffer);
    data.az = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/Acceleration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5de5cfee671950d30a03b944f0d1555c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # acceleration
    Header header
    int32 ts
    float32 ax
    float32 ay
    float32 az
    
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

module.exports = Acceleration;
