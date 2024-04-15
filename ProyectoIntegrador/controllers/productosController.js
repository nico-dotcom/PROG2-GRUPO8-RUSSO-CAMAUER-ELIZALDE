const productos = require('../db/datos');

const productosController = {
    index: function (req,res) {
        return res.render('index' )
    }


};
module.exports= productosController;