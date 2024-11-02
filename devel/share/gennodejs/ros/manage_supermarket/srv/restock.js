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

class restockRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.newStock = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('newStock')) {
        this.newStock = initObj.newStock
      }
      else {
        this.newStock = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type restockRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [newStock]
    bufferOffset = _serializer.int64(obj.newStock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type restockRequest
    let len;
    let data = new restockRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [newStock]
    data.newStock = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/restockRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09fe301e56cbb47bc199c7b2c7d047dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int64 newStock
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new restockRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.newStock !== undefined) {
      resolved.newStock = msg.newStock;
    }
    else {
      resolved.newStock = 0
    }

    return resolved;
    }
};

class restockResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
      this.jumlah = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
      }
      if (initObj.hasOwnProperty('jumlah')) {
        this.jumlah = initObj.jumlah
      }
      else {
        this.jumlah = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type restockResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    // Serialize message field [jumlah]
    bufferOffset = _serializer.int64(obj.jumlah, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type restockResponse
    let len;
    let data = new restockResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [jumlah]
    data.jumlah = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.feedback);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/restockResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18b11ccb085c9fd7d9d8afd8e1296376';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback
    int64 jumlah
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new restockResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
    }

    if (msg.jumlah !== undefined) {
      resolved.jumlah = msg.jumlah;
    }
    else {
      resolved.jumlah = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: restockRequest,
  Response: restockResponse,
  md5sum() { return '436aaeb2230331f8d91f79fac15bd4ce'; },
  datatype() { return 'manage_supermarket/restock'; }
};
