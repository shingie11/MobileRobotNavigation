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

class Update {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
      this.m = null;
      this.pbelC = null;
      this.pbelD = null;
      this.pAC = null;
      this.pAD = null;
      this.pBC = null;
      this.pBD = null;
      this.pCEC = null;
      this.pDEC = null;
      this.pCED = null;
      this.pDED = null;
      this.pCFC = null;
      this.pDFC = null;
      this.pCFD = null;
      this.pDFD = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = 0;
      }
      if (initObj.hasOwnProperty('m')) {
        this.m = initObj.m
      }
      else {
        this.m = 0;
      }
      if (initObj.hasOwnProperty('pbelC')) {
        this.pbelC = initObj.pbelC
      }
      else {
        this.pbelC = 0.0;
      }
      if (initObj.hasOwnProperty('pbelD')) {
        this.pbelD = initObj.pbelD
      }
      else {
        this.pbelD = 0.0;
      }
      if (initObj.hasOwnProperty('pAC')) {
        this.pAC = initObj.pAC
      }
      else {
        this.pAC = 0.0;
      }
      if (initObj.hasOwnProperty('pAD')) {
        this.pAD = initObj.pAD
      }
      else {
        this.pAD = 0.0;
      }
      if (initObj.hasOwnProperty('pBC')) {
        this.pBC = initObj.pBC
      }
      else {
        this.pBC = 0.0;
      }
      if (initObj.hasOwnProperty('pBD')) {
        this.pBD = initObj.pBD
      }
      else {
        this.pBD = 0.0;
      }
      if (initObj.hasOwnProperty('pCEC')) {
        this.pCEC = initObj.pCEC
      }
      else {
        this.pCEC = 0.0;
      }
      if (initObj.hasOwnProperty('pDEC')) {
        this.pDEC = initObj.pDEC
      }
      else {
        this.pDEC = 0.0;
      }
      if (initObj.hasOwnProperty('pCED')) {
        this.pCED = initObj.pCED
      }
      else {
        this.pCED = 0.0;
      }
      if (initObj.hasOwnProperty('pDED')) {
        this.pDED = initObj.pDED
      }
      else {
        this.pDED = 0.0;
      }
      if (initObj.hasOwnProperty('pCFC')) {
        this.pCFC = initObj.pCFC
      }
      else {
        this.pCFC = 0.0;
      }
      if (initObj.hasOwnProperty('pDFC')) {
        this.pDFC = initObj.pDFC
      }
      else {
        this.pDFC = 0.0;
      }
      if (initObj.hasOwnProperty('pCFD')) {
        this.pCFD = initObj.pCFD
      }
      else {
        this.pCFD = 0.0;
      }
      if (initObj.hasOwnProperty('pDFD')) {
        this.pDFD = initObj.pDFD
      }
      else {
        this.pDFD = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Update
    // Serialize message field [input]
    bufferOffset = _serializer.char(obj.input, buffer, bufferOffset);
    // Serialize message field [m]
    bufferOffset = _serializer.char(obj.m, buffer, bufferOffset);
    // Serialize message field [pbelC]
    bufferOffset = _serializer.float32(obj.pbelC, buffer, bufferOffset);
    // Serialize message field [pbelD]
    bufferOffset = _serializer.float32(obj.pbelD, buffer, bufferOffset);
    // Serialize message field [pAC]
    bufferOffset = _serializer.float32(obj.pAC, buffer, bufferOffset);
    // Serialize message field [pAD]
    bufferOffset = _serializer.float32(obj.pAD, buffer, bufferOffset);
    // Serialize message field [pBC]
    bufferOffset = _serializer.float32(obj.pBC, buffer, bufferOffset);
    // Serialize message field [pBD]
    bufferOffset = _serializer.float32(obj.pBD, buffer, bufferOffset);
    // Serialize message field [pCEC]
    bufferOffset = _serializer.float32(obj.pCEC, buffer, bufferOffset);
    // Serialize message field [pDEC]
    bufferOffset = _serializer.float32(obj.pDEC, buffer, bufferOffset);
    // Serialize message field [pCED]
    bufferOffset = _serializer.float32(obj.pCED, buffer, bufferOffset);
    // Serialize message field [pDED]
    bufferOffset = _serializer.float32(obj.pDED, buffer, bufferOffset);
    // Serialize message field [pCFC]
    bufferOffset = _serializer.float32(obj.pCFC, buffer, bufferOffset);
    // Serialize message field [pDFC]
    bufferOffset = _serializer.float32(obj.pDFC, buffer, bufferOffset);
    // Serialize message field [pCFD]
    bufferOffset = _serializer.float32(obj.pCFD, buffer, bufferOffset);
    // Serialize message field [pDFD]
    bufferOffset = _serializer.float32(obj.pDFD, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Update
    let len;
    let data = new Update(null);
    // Deserialize message field [input]
    data.input = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [m]
    data.m = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [pbelC]
    data.pbelC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pbelD]
    data.pbelD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pAC]
    data.pAC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pAD]
    data.pAD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pBC]
    data.pBC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pBD]
    data.pBD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pCEC]
    data.pCEC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pDEC]
    data.pDEC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pCED]
    data.pCED = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pDED]
    data.pDED = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pCFC]
    data.pCFC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pDFC]
    data.pDFC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pCFD]
    data.pCFD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pDFD]
    data.pDFD = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 58;
  }

  static datatype() {
    // Returns string type for a message object
    return 'workshop_assessment_one/Update';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '173bd9d26460de84cdbc682effdcf48f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    char input
    char m
    float32 pbelC 
    float32 pbelD 
    float32 pAC 
    float32 pAD 
    float32 pBC 
    float32 pBD 
    float32 pCEC
    float32 pDEC
    float32 pCED
    float32 pDED
    float32 pCFC
    float32 pDFC
    float32 pCFD
    float32 pDFD
    
     
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Update(null);
    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = 0
    }

    if (msg.m !== undefined) {
      resolved.m = msg.m;
    }
    else {
      resolved.m = 0
    }

    if (msg.pbelC !== undefined) {
      resolved.pbelC = msg.pbelC;
    }
    else {
      resolved.pbelC = 0.0
    }

    if (msg.pbelD !== undefined) {
      resolved.pbelD = msg.pbelD;
    }
    else {
      resolved.pbelD = 0.0
    }

    if (msg.pAC !== undefined) {
      resolved.pAC = msg.pAC;
    }
    else {
      resolved.pAC = 0.0
    }

    if (msg.pAD !== undefined) {
      resolved.pAD = msg.pAD;
    }
    else {
      resolved.pAD = 0.0
    }

    if (msg.pBC !== undefined) {
      resolved.pBC = msg.pBC;
    }
    else {
      resolved.pBC = 0.0
    }

    if (msg.pBD !== undefined) {
      resolved.pBD = msg.pBD;
    }
    else {
      resolved.pBD = 0.0
    }

    if (msg.pCEC !== undefined) {
      resolved.pCEC = msg.pCEC;
    }
    else {
      resolved.pCEC = 0.0
    }

    if (msg.pDEC !== undefined) {
      resolved.pDEC = msg.pDEC;
    }
    else {
      resolved.pDEC = 0.0
    }

    if (msg.pCED !== undefined) {
      resolved.pCED = msg.pCED;
    }
    else {
      resolved.pCED = 0.0
    }

    if (msg.pDED !== undefined) {
      resolved.pDED = msg.pDED;
    }
    else {
      resolved.pDED = 0.0
    }

    if (msg.pCFC !== undefined) {
      resolved.pCFC = msg.pCFC;
    }
    else {
      resolved.pCFC = 0.0
    }

    if (msg.pDFC !== undefined) {
      resolved.pDFC = msg.pDFC;
    }
    else {
      resolved.pDFC = 0.0
    }

    if (msg.pCFD !== undefined) {
      resolved.pCFD = msg.pCFD;
    }
    else {
      resolved.pCFD = 0.0
    }

    if (msg.pDFD !== undefined) {
      resolved.pDFD = msg.pDFD;
    }
    else {
      resolved.pDFD = 0.0
    }

    return resolved;
    }
};

module.exports = Update;
