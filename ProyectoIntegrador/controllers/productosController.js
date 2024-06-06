const db = require('../database/models');

const productosController = {
    index: function (req,res) {
        db.Producto.findAll({
            include: [
                {association: "Usuario"},
                {association: "Comentario"}
]
})

    .then(function(resultado) {

        return res.render("index",{lista: resultado})

    }).catch(function(errores) {

        return console.log(errores);;
})
},

product: function (req,res) {

    return res.render('product', {lista: datos} )
},

productAdd: function (req,res) {

    return res.render('product-add', {lista: datos} )
    },

productInfo: function (req,res) {

    let id = req.params.id
    db.Producto.findByPk( id, {
        include: [
            {association: "Usuario"},
            {
                association: "Comentario",
                include: [{association: "Usuario"}]
} ]
})

    .then(function(resultado) {
        return res.render('product',{lista: resultado})

    }).catch(function(errores) {
        return console.log(errores);;
})
},

search: function(req, res, next) {
    return res.render('product', {lista: datos} )
}
};

module.exports= productosController;

