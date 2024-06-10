const db = require('../database/models');
const op = db.Sequelize.Op;

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

search: function(req, res) {
    let qs= req.query.search;
    let filtrado = {
        where:{
        [op.or]:
            [
                {nombre_producto: {[op.like]: `%${qs}%`}},
                {descripcion: {[op.like]: `%${qs}%`}}
        ]},
        order: [
            ['created_at', 'DESC']
        ],
        include: [
            {association: "Usuario"},
            {association: "Comentario"}
        ]
        
    };
    db.Producto.findAll(filtrado)
    .then(function(result) {
        if (result.length == 0) {
            return res.send('No hay resultados para su criterio de búsqueda');

        } else {
            return res.render('search-results', {result: result});        }
        

    }).catch(function(error) {
        return console.log(error);
    })
    
}
};

module.exports= productosController;

