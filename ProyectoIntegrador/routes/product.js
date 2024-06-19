var express = require('express');
var router = express.Router();
const productosController = require('../controllers/productosController');
const { body } = require('express-validator');
let validations= [
    body('imagen_producto')
    .notEmpty()
    .withMessage('Debes ingresar una imágen del producto')
    .bail(),

    body('nombre_producto')
    .notEmpty()
    .withMessage('Debes ingresar el nombre del producto')
    .bail(),

    body('descripcion')
    .notEmpty()
    .withMessage('Debes ingresar una descripción del producto')
    .bail(),
];

router.get('/', productosController.product);

/* método GET para mostrar la vista del form */
router.get('/add', productosController.showFormAdd);

/* método POST para procesar la infor del form */
router.post('/add', validations, productosController.store);

router.get('/info', productosController.product);

router.get('/search', productosController.search);

router.get('/id/:id', productosController.productInfo);

router.post('/delete/:id', productosController.delete);




module.exports = router;



