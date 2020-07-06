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

class Update {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ut = null;
      this.zt = null;
    }
    else {
      if (initObj.hasOwnProperty('ut')) {
        this.ut = initObj.ut
      }
      else {
        this.ut = [];
      }
      if (initObj.hasOwnProperty('zt')) {
        this.zt = initObj.zt
      }
      else {
        this.zt = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Update
    // Serialize message field [ut]
    bufferOffset = _arraySerializer.float64(obj.ut, buffer, bufferOffset, null);
    // Serialize message field [zt]
    bufferOffset = _arraySerializer.float64(obj.zt, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Update
    let len;
    let data = new Update(null);
    // Deserialize message field [ut]
    data.ut = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [zt]
    data.zt = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ut.length;
    length += 8 * object.zt.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wa_two/Update';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25d92018e2a28a0b8fa588e8c7cd9459';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] ut
    float64[] zt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Update(null);
    if (msg.ut !== undefined) {
      resolved.ut = msg.ut;
    }
    else {
      resolved.ut = []
    }

    if (msg.zt !== undefined) {
      resolved.zt = msg.zt;
    }
    else {
      resolved.zt = []
    }

    return resolved;
    }
};

module.exports = Update;
