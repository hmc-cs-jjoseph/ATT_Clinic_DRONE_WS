// Auto-generated. Do not edit!

// (in-package wheredoigo.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class State {
  constructor() {
    this.id = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type State
    // Serialize message field [id]
    bufferInfo = _serializer.uint32(obj.id, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type State
    let tmp;
    let len;
    let data = new State();
    // Deserialize message field [id]
    tmp = _deserializer.uint32(buffer);
    data.id = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'wheredoigo/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '309d4b30834b338cced19e5622a97a03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    
    `;
  }

};

module.exports = State;
