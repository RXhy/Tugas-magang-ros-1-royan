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

class edithargaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.newHarga = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('newHarga')) {
        this.newHarga = initObj.newHarga
      }
      else {
        this.newHarga = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type edithargaRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [newHarga]
    bufferOffset = _serializer.float64(obj.newHarga, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type edithargaRequest
    let len;
    let data = new edithargaRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [newHarga]
    data.newHarga = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/edithargaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12292c6d7e97b6a8031e728a416590c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float64 newHarga
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new edithargaRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.newHarga !== undefined) {
      resolved.newHarga = msg.newHarga;
    }
    else {
      resolved.newHarga = 0.0
    }

    return resolved;
    }
};

class edithargaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.harga_baru = null;
    }
    else {
      if (initObj.hasOwnProperty('harga_baru')) {
        this.harga_baru = initObj.harga_baru
      }
      else {
        this.harga_baru = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type edithargaResponse
    // Serialize message field [harga_baru]
    bufferOffset = _serializer.string(obj.harga_baru, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type edithargaResponse
    let len;
    let data = new edithargaResponse(null);
    // Deserialize message field [harga_baru]
    data.harga_baru = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.harga_baru);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'manage_supermarket/edithargaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1536c4f1bef4e82e57f39fcbec3611e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string harga_baru
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new edithargaResponse(null);
    if (msg.harga_baru !== undefined) {
      resolved.harga_baru = msg.harga_baru;
    }
    else {
      resolved.harga_baru = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: edithargaRequest,
  Response: edithargaResponse,
  md5sum() { return '568b19a2ce38f33eeb2158cd05ab5278'; },
  datatype() { return 'manage_supermarket/editharga'; }
};
