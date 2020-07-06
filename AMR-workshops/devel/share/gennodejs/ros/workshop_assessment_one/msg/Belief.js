// Auto-generated. Do not edit!

// (in-package workshop_assessment_one.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Belief {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.belC = null;
      this.belD = null;
    }
    else {
      if (initObj.hasOwnProperty('belC')) {
        this.belC = initObj.belC
      }
      else {
        this.belC = 0.0;
      }
      if (initObj.hasOwnProperty('belD')) {
        this.belD = initObj.belD
      }
      else {
        this.belD = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Belief
    // Serialize message field [belC]
    bufferOffset = _serializer.float32(obj.belC, buffer, bufferOffset);
    // Serialize message field [belD]
    bufferOffset = _serializer.float32(obj.belD, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Belief
    let len;
    let data = new Belief(null);
    // Deserialize message field [belC]
    data.belC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [belD]
    data.belD = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'workshop_assessment_one/Belief';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca75e765894e00cc9a3762a260dd77d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 belC
    float32 belD
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Belief(null);
    if (msg.belC !== undefined) {
      resolved.belC = msg.belC;
    }
    else {
      resolved.belC = 0.0
    }

    if (msg.belD !== undefined) {
      resolved.belD = msg.belD;
    }
    else {
      resolved.belD = 0.0
    }

    return resolved;
    }
};

module.exports = Belief;
