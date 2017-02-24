// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GlobalPosition {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.ts = 0;
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.height = 0.0;
    this.health = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GlobalPosition
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [ts]
    bufferInfo = _serializer.int32(obj.ts, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    // Serialize message field [height]
    bufferInfo = _serializer.float32(obj.height, bufferInfo);
    // Serialize message field [health]
    bufferInfo = _serializer.int8(obj.health, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GlobalPosition
    let tmp;
    let len;
    let data = new GlobalPosition();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [ts]
    tmp = _deserializer.int32(buffer);
    data.ts = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [height]
    tmp = _deserializer.float32(buffer);
    data.height = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [health]
    tmp = _deserializer.int8(buffer);
    data.health = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/GlobalPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10784f0f63ab6f41e201fee714fabb2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 ts
    #latitude is in angle
    float64 latitude
    #longitude is in angle
    float64 longitude
    float32 altitude
    float32 height
    #reliablity [0,5]
    int8 health 
    
    
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

module.exports = GlobalPosition;
