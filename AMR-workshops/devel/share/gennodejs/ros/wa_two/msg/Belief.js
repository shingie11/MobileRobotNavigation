// Auto-generated. Do not edit!

// (in-package wa_two.msg)


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
      this.info_vector = null;
      this.info_matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('info_vector')) {
        this.info_vector = initObj.info_vector
      }
      else {
        this.info_vector = [];
      }
      if (initObj.hasOwnProperty('info_matrix')) {
        this.info_matrix = initObj.info_matrix
      }
      else {
        this.info_matrix = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Belief
    // Serialize message field [info_vector]
    bufferOffset = _arraySerializer.float64(obj.info_vector, buffer, bufferOffset, null);
    // Serialize message field [info_matrix]
    bufferOffset = _arraySerializer.float64(obj.info_matrix, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Belief
    let len;
    let data = new Belief(null);
    // Deserialize message field [info_vector]
    data.info_vector = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [info_matrix]
    data.info_matrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.info_vector.length;
    length += 8 * object.info_matrix.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wa_two/Belief';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '496b863397b7d14fe88da289c2e89a57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] info_vector
    float64[] info_matrix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Belief(null);
    if (msg.info_vector !== undefined) {
      resolved.info_vector = msg.info_vector;
    }
    else {
      resolved.info_vector = []
    }

    if (msg.info_matrix !== undefined) {
      resolved.info_matrix = msg.info_matrix;
    }
    else {
      resolved.info_matrix = []
    }

    return resolved;
    }
};

module.exports = Belief;
