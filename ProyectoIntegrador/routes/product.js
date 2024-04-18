var express = require('express');
var router = express.Router();
const productosController = require('../controllers/productosController');

router.get('/', productosController.index);

router.get('/productI', productosController.product);

router.get('/add', productosController.productAdd);

router.get('/info', productosController.productInfo);

router.get('/search', productosController.search);

module.exports = router;



