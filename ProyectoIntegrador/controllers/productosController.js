const datos = require('../db/datos');

const productosController = {
    index: function (req,res) {
        return res.render('index', {lista: datos.productos} )
    },
    product: function (req,res) {
        return res.render('product', {lista: datos} )
    },
    productAdd: function (req,res) {
        return res.render('product-add', {lista: datos} )
    },

    productInfo: function (req,res) {
        return res.render('product', {lista: datos} )
    },

    search: function(req, res, next) {
        return res.render('product', {lista: datos} )
      }

};
module.exports= productosController;
