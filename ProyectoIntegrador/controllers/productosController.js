const datos = require('../db/datos');

const productosController = {
    product: function (req,res) {
        return res.render('product', {lista: datos} )
    },
    productAdd: function (req,res) {
        return res.render('product-add', {lista: datos} )
    },

    search: function(req, res, next) {
        return res.render('search-results', {lista: datos} )
      }

};
module.exports= productosController;
