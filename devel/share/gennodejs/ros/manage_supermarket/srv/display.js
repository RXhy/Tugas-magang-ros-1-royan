// Auto-generated. Do not edit!

// (in-package manage_supermarket.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class displayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.display = null;
    }
    else {
      if (initObj.hasOwnProperty('display')) {
        this.display = initObj.display
      }
      else {
        this.display = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type displayRequest
    // Serialize message field [display]
    bufferOffset = _serializer.string(obj.display, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type displayRequest
    let len;
    let data = new displayRequest(null);
    // Deserialize message field [display]
    data.display = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.display);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/displayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b769ce02fd717f35c9a1022ad1f7eca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string display
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new displayRequest(null);
    if (msg.display !== undefined) {
      resolved.display = msg.display;
    }
    else {
      resolved.display = ''
    }

    return resolved;
    }
};

class displayResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type displayResponse
    // Serialize message field [output]
    bufferOffset = _serializer.string(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type displayResponse
    let len;
    let data = new displayResponse(null);
    // Deserialize message field [output]
    data.output = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.output);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/displayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0825d95fdfa2c8f4bbb4e9c74bccd3fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new displayResponse(null);
    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: displayRequest,
  Response: displayResponse,
  md5sum() { return '85fe84f26349bbc9952465d8d14f21f4'; },
  datatype() { return 'manage_supermarket/display'; }
};
