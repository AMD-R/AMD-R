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

class VisionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultVision = null;
    }
    else {
      if (initObj.hasOwnProperty('resultVision')) {
        this.resultVision = initObj.resultVision
      }
      else {
        this.resultVision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionRequest
    // Serialize message field [resultVision]
    bufferOffset = _serializer.bool(obj.resultVision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionRequest
    let len;
    let data = new VisionRequest(null);
    // Deserialize message field [resultVision]
    data.resultVision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/VisionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cae9d96f75a4015a06a54ce67a731295';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resultVision
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionRequest(null);
    if (msg.resultVision !== undefined) {
      resolved.resultVision = msg.resultVision;
    }
    else {
      resolved.resultVision = false
    }

    return resolved;
    }
};

class VisionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.isActive = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = false;
      }
      if (initObj.hasOwnProperty('isActive')) {
        this.isActive = initObj.isActive
      }
      else {
        this.isActive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.bool(obj.z, buffer, bufferOffset);
    // Serialize message field [isActive]
    bufferOffset = _serializer.bool(obj.isActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionResponse
    let len;
    let data = new VisionResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isActive]
    data.isActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/VisionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8b756d1256b16c19068251ed7cca845';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    bool z
    bool isActive
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = false
    }

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
  Request: VisionRequest,
  Response: VisionResponse,
  md5sum() { return 'd0cf9def13deaa61d90a385578ef9f46'; },
  datatype() { return 'arm_controller/Vision'; }
};
