// Auto-generated. Do not edit!

// (in-package arm_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class HMIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultHMI = null;
    }
    else {
      if (initObj.hasOwnProperty('resultHMI')) {
        this.resultHMI = initObj.resultHMI
      }
      else {
        this.resultHMI = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIRequest
    // Serialize message field [resultHMI]
    bufferOffset = _serializer.bool(obj.resultHMI, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIRequest
    let len;
    let data = new HMIRequest(null);
    // Deserialize message field [resultHMI]
    data.resultHMI = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/HMIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73d50d98024fc3c0c5312ac75251e852';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resultHMI
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIRequest(null);
    if (msg.resultHMI !== undefined) {
      resolved.resultHMI = msg.resultHMI;
    }
    else {
      resolved.resultHMI = false
    }

    return resolved;
    }
};

class HMIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.codeHMI = null;
    }
    else {
      if (initObj.hasOwnProperty('codeHMI')) {
        this.codeHMI = initObj.codeHMI
      }
      else {
        this.codeHMI = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIResponse
    // Serialize message field [codeHMI]
    bufferOffset = _serializer.int64(obj.codeHMI, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIResponse
    let len;
    let data = new HMIResponse(null);
    // Deserialize message field [codeHMI]
    data.codeHMI = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/HMIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae9d7740bfbe2ee6afffd09422607821';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 codeHMI
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIResponse(null);
    if (msg.codeHMI !== undefined) {
      resolved.codeHMI = msg.codeHMI;
    }
    else {
      resolved.codeHMI = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: HMIRequest,
  Response: HMIResponse,
  md5sum() { return 'cb52c7deab716044e28d7b42e43ad1b3'; },
  datatype() { return 'arm_controller/HMI'; }
};
