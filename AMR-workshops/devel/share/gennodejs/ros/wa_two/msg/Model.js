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

class Model {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info_vector = null;
      this.info_matrix = null;
      this.at = null;
      this.bt = null;
      this.ct = null;
      this.rt = null;
      this.qt = null;
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
      if (initObj.hasOwnProperty('at')) {
        this.at = initObj.at
      }
      else {
        this.at = [];
      }
      if (initObj.hasOwnProperty('bt')) {
        this.bt = initObj.bt
      }
      else {
        this.bt = [];
      }
      if (initObj.hasOwnProperty('ct')) {
        this.ct = initObj.ct
      }
      else {
        this.ct = [];
      }
      if (initObj.hasOwnProperty('rt')) {
        this.rt = initObj.rt
      }
      else {
        this.rt = [];
      }
      if (initObj.hasOwnProperty('qt')) {
        this.qt = initObj.qt
      }
      else {
        this.qt = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Model
    // Serialize message field [info_vector]
    bufferOffset = _arraySerializer.float64(obj.info_vector, buffer, bufferOffset, null);
    // Serialize message field [info_matrix]
    bufferOffset = _arraySerializer.float64(obj.info_matrix, buffer, bufferOffset, null);
    // Serialize message field [at]
    bufferOffset = _arraySerializer.float64(obj.at, buffer, bufferOffset, null);
    // Serialize message field [bt]
    bufferOffset = _arraySerializer.float64(obj.bt, buffer, bufferOffset, null);
    // Serialize message field [ct]
    bufferOffset = _arraySerializer.float64(obj.ct, buffer, bufferOffset, null);
    // Serialize message field [rt]
    bufferOffset = _arraySerializer.float64(obj.rt, buffer, bufferOffset, null);
    // Serialize message field [qt]
    bufferOffset = _arraySerializer.float64(obj.qt, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Model
    let len;
    let data = new Model(null);
    // Deserialize message field [info_vector]
    data.info_vector = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [info_matrix]
    data.info_matrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [at]
    data.at = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bt]
    data.bt = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ct]
    data.ct = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rt]
    data.rt = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [qt]
    data.qt = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.info_vector.length;
    length += 8 * object.info_matrix.length;
    length += 8 * object.at.length;
    length += 8 * object.bt.length;
    length += 8 * object.ct.length;
    length += 8 * object.rt.length;
    length += 8 * object.qt.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wa_two/Model';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76a16224f9e634d471ba03018232a454';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] info_vector 
    float64[] info_matrix
    float64[] at 
    float64[] bt 
    float64[] ct 
    float64[] rt
    float64[] qt
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Model(null);
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

    if (msg.at !== undefined) {
      resolved.at = msg.at;
    }
    else {
      resolved.at = []
    }

    if (msg.bt !== undefined) {
      resolved.bt = msg.bt;
    }
    else {
      resolved.bt = []
    }

    if (msg.ct !== undefined) {
      resolved.ct = msg.ct;
    }
    else {
      resolved.ct = []
    }

    if (msg.rt !== undefined) {
      resolved.rt = msg.rt;
    }
    else {
      resolved.rt = []
    }

    if (msg.qt !== undefined) {
      resolved.qt = msg.qt;
    }
    else {
      resolved.qt = []
    }

    return resolved;
    }
};

module.exports = Model;
