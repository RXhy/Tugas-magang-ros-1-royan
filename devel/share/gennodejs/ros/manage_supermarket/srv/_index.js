
"use strict";

let restock = require('./restock.js')
let delete_product = require('./delete_product.js')
let editharga = require('./editharga.js')
let add_product = require('./add_product.js')
let display = require('./display.js')
let jual_product = require('./jual_product.js')

module.exports = {
  restock: restock,
  delete_product: delete_product,
  editharga: editharga,
  add_product: add_product,
  display: display,
  jual_product: jual_product,
};
