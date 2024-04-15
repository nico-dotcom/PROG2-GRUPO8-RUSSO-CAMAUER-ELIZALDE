const productos = require('../db/datos');

const productosController = {
    index: function (req,res) {
        return res.render('index', {lista: productos.productos} )
    },
    product: function (req,res) {
        return res.render('product', {lista: productos} )
    },
    productAdd: function (req,res) {
        return res.render('product-add', {lista: productos} )
    },
    productInfo: function (req,res) {
        return res.render('product', {lista: productos} )
    },
    search: function(req, res, next) {
        res.render('search-results');
      }



};
module.exports= productosController;