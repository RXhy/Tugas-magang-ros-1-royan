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

class jual_productRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.amount = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('amount')) {
        this.amount = initObj.amount
      }
      else {
        this.amount = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jual_productRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [amount]
    bufferOffset = _serializer.int64(obj.amount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jual_productRequest
    let len;
    let data = new jual_productRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [amount]
    data.amount = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/jual_productRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cfbb46c8c6a19dcda189badb6df95a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int64 amount
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jual_productRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.amount !== undefined) {
      resolved.amount = msg.amount;
    }
    else {
      resolved.amount = 0
    }

    return resolved;
    }
};

class jual_productResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transaction = null;
    }
    else {
      if (initObj.hasOwnProperty('transaction')) {
        this.transaction = initObj.transaction
      }
      else {
        this.transaction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jual_productResponse
    // Serialize message field [transaction]
    bufferOffset = _serializer.string(obj.transaction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jual_productResponse
    let len;
    let data = new jual_productResponse(null);
    // Deserialize message field [transaction]
    data.transaction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.transaction);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/jual_productResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05574955e4ec9e974e1444a4ae3053cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string transaction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jual_productResponse(null);
    if (msg.transaction !== undefined) {
      resolved.transaction = msg.transaction;
    }
    else {
      resolved.transaction = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: jual_productRequest,
  Response: jual_productResponse,
  md5sum() { return '5bd0de7fab394602d0d215365e0c3e08'; },
  datatype() { return 'manage_supermarket/jual_product'; }
};
