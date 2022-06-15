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

class ArmRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dist_x = null;
      this.dist_y = null;
      this.dist_z = null;
      this.rpm_y = null;
      this.rpm_z = null;
      this.cmd_x = null;
    }
    else {
      if (initObj.hasOwnProperty('dist_x')) {
        this.dist_x = initObj.dist_x
      }
      else {
        this.dist_x = 0.0;
      }
      if (initObj.hasOwnProperty('dist_y')) {
        this.dist_y = initObj.dist_y
      }
      else {
        this.dist_y = 0.0;
      }
      if (initObj.hasOwnProperty('dist_z')) {
        this.dist_z = initObj.dist_z
      }
      else {
        this.dist_z = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_y')) {
        this.rpm_y = initObj.rpm_y
      }
      else {
        this.rpm_y = 0;
      }
      if (initObj.hasOwnProperty('rpm_z')) {
        this.rpm_z = initObj.rpm_z
      }
      else {
        this.rpm_z = 0;
      }
      if (initObj.hasOwnProperty('cmd_x')) {
        this.cmd_x = initObj.cmd_x
      }
      else {
        this.cmd_x = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmRequest
    // Serialize message field [dist_x]
    bufferOffset = _serializer.float32(obj.dist_x, buffer, bufferOffset);
    // Serialize message field [dist_y]
    bufferOffset = _serializer.float32(obj.dist_y, buffer, bufferOffset);
    // Serialize message field [dist_z]
    bufferOffset = _serializer.float32(obj.dist_z, buffer, bufferOffset);
    // Serialize message field [rpm_y]
    bufferOffset = _serializer.int16(obj.rpm_y, buffer, bufferOffset);
    // Serialize message field [rpm_z]
    bufferOffset = _serializer.int16(obj.rpm_z, buffer, bufferOffset);
    // Serialize message field [cmd_x]
    bufferOffset = _serializer.bool(obj.cmd_x, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmRequest
    let len;
    let data = new ArmRequest(null);
    // Deserialize message field [dist_x]
    data.dist_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dist_y]
    data.dist_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dist_z]
    data.dist_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rpm_y]
    data.rpm_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rpm_z]
    data.rpm_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cmd_x]
    data.cmd_x = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/ArmRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfe05b3d31fda1f208b5c16a4f011f4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 dist_x
    float32 dist_y
    float32 dist_z
    int16 rpm_y
    int16 rpm_z
    bool cmd_x
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmRequest(null);
    if (msg.dist_x !== undefined) {
      resolved.dist_x = msg.dist_x;
    }
    else {
      resolved.dist_x = 0.0
    }

    if (msg.dist_y !== undefined) {
      resolved.dist_y = msg.dist_y;
    }
    else {
      resolved.dist_y = 0.0
    }

    if (msg.dist_z !== undefined) {
      resolved.dist_z = msg.dist_z;
    }
    else {
      resolved.dist_z = 0.0
    }

    if (msg.rpm_y !== undefined) {
      resolved.rpm_y = msg.rpm_y;
    }
    else {
      resolved.rpm_y = 0
    }

    if (msg.rpm_z !== undefined) {
      resolved.rpm_z = msg.rpm_z;
    }
    else {
      resolved.rpm_z = 0
    }

    if (msg.cmd_x !== undefined) {
      resolved.cmd_x = msg.cmd_x;
    }
    else {
      resolved.cmd_x = false
    }

    return resolved;
    }
};

class ArmResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultArm = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('resultArm')) {
        this.resultArm = initObj.resultArm
      }
      else {
        this.resultArm = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmResponse
    // Serialize message field [resultArm]
    bufferOffset = _serializer.bool(obj.resultArm, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmResponse
    let len;
    let data = new ArmResponse(null);
    // Deserialize message field [resultArm]
    data.resultArm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_controller/ArmResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7573387fab88d9bcb19d95022c6b9cce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resultArm
    int8 status
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmResponse(null);
    if (msg.resultArm !== undefined) {
      resolved.resultArm = msg.resultArm;
    }
    else {
      resolved.resultArm = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ArmRequest,
  Response: ArmResponse,
  md5sum() { return '7768e40cbfffda0fd377b4962bb94200'; },
  datatype() { return 'arm_controller/Arm'; }
};
