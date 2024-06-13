const datos = require('../db/datos');
const db = require('../database/models');
const { Association } = require('sequelize');
const productosController = {
    index: function (req, res) {
        let filtrado= {
            include: [
                {association:"Usuario"},
                {association:"Comentario"}
            ],
            order:[['created_at','DESC']],
            limit:10
            
        }
        db.Producto.findAll(filtrado)
        .then(function (result) {

            
            return res.render('index',{lista:result});
        }).catch(function (error) {
                return console.log(error);
            }
        );
        

      /*  return res.render('index', { lista: datos.productos })*/
    },
    
};

module.exports = productosController;
