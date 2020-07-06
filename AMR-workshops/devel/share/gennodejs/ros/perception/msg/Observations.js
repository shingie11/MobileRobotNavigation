// Auto-generated. Do not edit!

// (in-package perception.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Observation = require('./Observation.js');

//-----------------------------------------------------------

class Observations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.observations = null;
    }
    else {
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Observations
    // Serialize message field [observations]
    // Serialize the length for message field [observations]
    bufferOffset = _serializer.uint32(obj.observations.length, buffer, bufferOffset);
    obj.observations.forEach((val) => {
      bufferOffset = Observation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Observations
    let len;
    let data = new Observations(null);
    // Deserialize message field [observations]
    // Deserialize array length for message field [observations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.observations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.observations[i] = Observation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.observations.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception/Observations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83718f2217d5edf089e92c5bcad51532';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Observation[] observations
    
    ================================================================================
    MSG: perception/Observation
    float32 range
    float32 bearing
    float32 signature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Observations(null);
    if (msg.observations !== undefined) {
      resolved.observations = new Array(msg.observations.length);
      for (let i = 0; i < resolved.observations.length; ++i) {
        resolved.observations[i] = Observation.Resolve(msg.observations[i]);
      }
    }
    else {
      resolved.observations = []
    }

    return resolved;
    }
};

module.exports = Observations;
