// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let Waypoint = require('./Waypoint.js');

//-----------------------------------------------------------

class WaypointList {
  constructor() {
    this.waypoint_list = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointList
    // Serialize the length for message field [waypoint_list]
    bufferInfo = _serializer.uint32(obj.waypoint_list.length, bufferInfo);
    // Serialize message field [waypoint_list]
    obj.waypoint_list.forEach((val) => {
      bufferInfo = Waypoint.serialize(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointList
    let tmp;
    let len;
    let data = new WaypointList();
    // Deserialize array length for message field [waypoint_list]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [waypoint_list]
    data.waypoint_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = Waypoint.deserialize(buffer);
      data.waypoint_list[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/WaypointList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '284386e6fe0f355bdea1db93ead90084';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Waypoint[] waypoint_list
    
    ================================================================================
    MSG: dji_sdk/Waypoint
    #latitude is in degree
    float64 latitude
    #longitude is in degree
    float64 longitude
    float32 altitude
    #heading is in [-180,180]
    int16 heading 
    #stay time is in second
    uint16 staytime
    
    `;
  }

};

module.exports = WaypointList;
