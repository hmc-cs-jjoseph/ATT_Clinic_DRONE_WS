// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AttitudeQuaternion {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.ts = 0;
    this.q0 = 0.0;
    this.q1 = 0.0;
    this.q2 = 0.0;
    this.q3 = 0.0;
    this.wx = 0.0;
    this.wy = 0.0;
    this.wz = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type AttitudeQuaternion
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [ts]
    bufferInfo = _serializer.int32(obj.ts, bufferInfo);
    // Serialize message field [q0]
    bufferInfo = _serializer.float32(obj.q0, bufferInfo);
    // Serialize message field [q1]
    bufferInfo = _serializer.float32(obj.q1, bufferInfo);
    // Serialize message field [q2]
    bufferInfo = _serializer.float32(obj.q2, bufferInfo);
    // Serialize message field [q3]
    bufferInfo = _serializer.float32(obj.q3, bufferInfo);
    // Serialize message field [wx]
    bufferInfo = _serializer.float32(obj.wx, bufferInfo);
    // Serialize message field [wy]
    bufferInfo = _serializer.float32(obj.wy, bufferInfo);
    // Serialize message field [wz]
    bufferInfo = _serializer.float32(obj.wz, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type AttitudeQuaternion
    let tmp;
    let len;
    let data = new AttitudeQuaternion();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [ts]
    tmp = _deserializer.int32(buffer);
    data.ts = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [q0]
    tmp = _deserializer.float32(buffer);
    data.q0 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [q1]
    tmp = _deserializer.float32(buffer);
    data.q1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [q2]
    tmp = _deserializer.float32(buffer);
    data.q2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [q3]
    tmp = _deserializer.float32(buffer);
    data.q3 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [wx]
    tmp = _deserializer.float32(buffer);
    data.wx = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [wy]
    tmp = _deserializer.float32(buffer);
    data.wy = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [wz]
    tmp = _deserializer.float32(buffer);
    data.wz = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/AttitudeQuaternion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '999d24c7cb273aa4f2c6044f85cac84c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0).
    Header header
    int32 ts
    # Quaternion component
    float32 q0
    float32 q1
    float32 q2
    float32 q3
    # Angular speed (rad/s)
    float32 wx
    float32 wy
    float32 wz
    
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

module.exports = AttitudeQuaternion;
