const db = require('../database/models');
const op = db.Sequelize.Op;
const { validationResult } = require('express-validator');

const productosController = {
    index: function (req, res) {
        db.Producto.findAll({
            include: [
                { association: "Usuario" },
                { association: "Comentario" }
            ]
        })
            .then(function (resultado) {
                return res.render("index", { lista: resultado });
            })
            .catch(function (errores) {
                return console.log(errores);
            });
    },

    product: function (req, res) {
        // return res.render('product', {lista: datos} )
    },

    showFormAdd: function (req, res) {
        if (req.session.user != undefined) {
            return res.render("product-add");
        } else {
            return res.render('login');
        }
    },

    store: function (req, res) {
        let errors = validationResult(req);
        const userId = res.locals.user.id_usuario;

        if (errors.isEmpty()) {
            let infoForm = req.body;
            let nuevoProducto = {
                id_usuario: userId,
                imagen_producto: '/images/products/' + infoForm.imagen_producto,
                nombre_producto: infoForm.nombre_producto,
                descripcion: infoForm.descripcion,
            };

            db.Producto.create(nuevoProducto)
                .then((result) => {
                    return res.redirect('/');
                })
                .catch((error) => {
                    return console.log(error);
                });
        } else {
            return res.render('product-add.ejs', {
                errors: errors.mapped(),
                old: req.body
            });
        }
    },

    productInfo: function (req, res) {
        let session= req.session.user
        let id = req.params.id;

        db.Producto.findByPk(id,{
            include: [
                { association: "Usuario" },
                {
                    association: "Comentario",
                    include: [
                        { association: "Usuario" },
                        { association: 'Producto' }
                    ]
                }
            ]
        })
            .then(function (resultado) {
                return res.render('product', { lista: resultado ,session:session});
            })
            .catch(function (errores) {
                return console.log(errores);
            });
    },

    search: function (req, res) {
        let qs = req.query.search;
        let filtrado = {
            where: {
                [op.or]: [
                    { nombre_producto: { [op.like]: `%${qs}%` } },
                    { descripcion: { [op.like]: `%${qs}%` } }
                ]
            },
            order: [
                ['created_at', 'DESC']
            ],
            include: [
                { association: "Usuario" },
                { association: "Comentario" }
            ]
        };
        db.Producto.findAll(filtrado)
            .then(function (result) {
                if (result.length == 0) {
                    return res.send('No hay resultados para su criterio de búsqueda');
                } else {
                    return res.render('search-results', { result: result });
                }
            })
            .catch(function (error) {
                return console.log(error);
            });
    
    },
delete:function (req,res) {
    if (res.locals.user == undefined){
        return res.send("No podes borrar este producto porque no estas logueado")
    } else{

    let id_usuarioForm = req.body.id_usuario;  
    let id_usuarioSession = res.locals.user.id_usuario;


    if (id_usuarioForm == id_usuarioSession ) {
        let idEliminar= req.body.id_producto;
        
        const filtro = {
            where: { id_producto: idEliminar }
        };

        db.Comentario.destroy(filtro)
        .then((result) => {

            db.Producto.destroy(filtro)
            .then((result) => {
              return res.redirect("/");

            }).catch((error) => {
              return console.log(error);
            });

        }).catch((error) => {
          return console.log(error);
        });

    }else{
        return res.send('No se puede eliminar si no es tu producto')
    }
  

  }
}
};

module.exports = productosController;
