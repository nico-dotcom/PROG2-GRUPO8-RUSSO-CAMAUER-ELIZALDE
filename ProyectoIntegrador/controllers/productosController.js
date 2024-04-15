const productos = require('../db/datos');

const productosController = {
    index: function (req,res) {
        return res.render('index', {lista: productos.productos} )
    }


};
module.exports= productosController;