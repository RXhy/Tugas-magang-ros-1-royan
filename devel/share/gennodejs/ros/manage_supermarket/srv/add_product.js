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

class add_productRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.price = null;
      this.stock = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('price')) {
        this.price = initObj.price
      }
      else {
        this.price = 0.0;
      }
      if (initObj.hasOwnProperty('stock')) {
        this.stock = initObj.stock
      }
      else {
        this.stock = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type add_productRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [price]
    bufferOffset = _serializer.float64(obj.price, buffer, bufferOffset);
    // Serialize message field [stock]
    bufferOffset = _serializer.int64(obj.stock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type add_productRequest
    let len;
    let data = new add_productRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [price]
    data.price = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stock]
    data.stock = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/add_productRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0bf1f575588f48a654196b97d87deea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float64 price
    int64 stock
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new add_productRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.price !== undefined) {
      resolved.price = msg.price;
    }
    else {
      resolved.price = 0.0
    }

    if (msg.stock !== undefined) {
      resolved.stock = msg.stock;
    }
    else {
      resolved.stock = 0
    }

    return resolved;
    }
};

class add_productResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type add_productResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type add_productResponse
    let len;
    let data = new add_productResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.feedback);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/add_productResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c14cdf907e5c7c7fd47292add15660f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new add_productResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: add_productRequest,
  Response: add_productResponse,
  md5sum() { return '1f72cf40c5b6f23171699427bb08011e'; },
  datatype() { return 'manage_supermarket/add_product'; }
};
