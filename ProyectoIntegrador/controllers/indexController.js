const datos = require('../db/datos');

const productosController = {
    index: function (req,res) {
        return res.render('index', {lista: datos.productos} )
    }
};

module.exports= productosController;
