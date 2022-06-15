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

class NavRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultNav = null;
    }
    else {
      if (initObj.hasOwnProperty('resultNav')) {
        this.resultNav = initObj.resultNav
      }
      else {
        this.resultNav = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavRequest
    // Serialize message field [resultNav]
    bufferOffset = _serializer.bool(obj.resultNav, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavRequest
    let len;
    let data = new NavRequest(null);
    // Deserialize message field [resultNav]
    data.resultNav = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/NavRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f490184d83c40759d5f26ec156d4477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resultNav
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavRequest(null);
    if (msg.resultNav !== undefined) {
      resolved.resultNav = msg.resultNav;
    }
    else {
      resolved.resultNav = false
    }

    return resolved;
    }
};

class NavResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavResponse
    // Serialize message field [location]
    bufferOffset = _serializer.int64(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavResponse
    let len;
    let data = new NavResponse(null);
    // Deserialize message field [location]
    data.location = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/NavResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de6fa78183a83e4b16b9ee4a6028b8b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 location
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavResponse(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: NavRequest,
  Response: NavResponse,
  md5sum() { return 'aee342bdb1678c75b6e000ad4c3a77bf'; },
  datatype() { return 'arm_controller/Nav'; }
};
