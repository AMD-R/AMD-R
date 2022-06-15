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

class buttonStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultButton = null;
    }
    else {
      if (initObj.hasOwnProperty('resultButton')) {
        this.resultButton = initObj.resultButton
      }
      else {
        this.resultButton = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type buttonStatusRequest
    // Serialize message field [resultButton]
    bufferOffset = _serializer.bool(obj.resultButton, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type buttonStatusRequest
    let len;
    let data = new buttonStatusRequest(null);
    // Deserialize message field [resultButton]
    data.resultButton = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/buttonStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a085941e12cf0ecf068cec1e4ba06f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resultButton
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new buttonStatusRequest(null);
    if (msg.resultButton !== undefined) {
      resolved.resultButton = msg.resultButton;
    }
    else {
      resolved.resultButton = false
    }

    return resolved;
    }
};

class buttonStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isActive = null;
    }
    else {
      if (initObj.hasOwnProperty('isActive')) {
        this.isActive = initObj.isActive
      }
      else {
        this.isActive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type buttonStatusResponse
    // Serialize message field [isActive]
    bufferOffset = _serializer.bool(obj.isActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type buttonStatusResponse
    let len;
    let data = new buttonStatusResponse(null);
    // Deserialize message field [isActive]
    data.isActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/buttonStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74c71bbe95320ceee0e02ceb6900a4a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isActive
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new buttonStatusResponse(null);
    if (msg.isActive !== undefined) {
      resolved.isActive = msg.isActive;
    }
    else {
      resolved.isActive = false
    }

    return resolved;
    }
};

module.exports = {
  Request: buttonStatusRequest,
  Response: buttonStatusResponse,
  md5sum() { return '96a1c76b0629b71c9a214609600d9e41'; },
  datatype() { return 'arm_controller/buttonStatus'; }
};
