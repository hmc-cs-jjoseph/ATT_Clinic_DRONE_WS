// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Velocity {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.ts = 0;
    this.vx = 0.0;
    this.vy = 0.0;
    this.vz = 0.0;
    this.health_flag = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Velocity
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [ts]
    bufferInfo = _serializer.int32(obj.ts, bufferInfo);
    // Serialize message field [vx]
    bufferInfo = _serializer.float32(obj.vx, bufferInfo);
    // Serialize message field [vy]
    bufferInfo = _serializer.float32(obj.vy, bufferInfo);
    // Serialize message field [vz]
    bufferInfo = _serializer.float32(obj.vz, bufferInfo);
    // Serialize message field [health_flag]
    bufferInfo = _serializer.uint8(obj.health_flag, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Velocity
    let tmp;
    let len;
    let data = new Velocity();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [ts]
    tmp = _deserializer.int32(buffer);
    data.ts = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vx]
    tmp = _deserializer.float32(buffer);
    data.vx = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vy]
    tmp = _deserializer.float32(buffer);
    data.vy = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vz]
    tmp = _deserializer.float32(buffer);
    data.vz = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [health_flag]
    tmp = _deserializer.uint8(buffer);
    data.health_flag = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/Velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a89d7216b2636ddc4fc4375ae77dc15c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 ts
    float32 vx
    float32 vy
    float32 vz
    uint8 health_flag
    
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

module.exports = Velocity;
