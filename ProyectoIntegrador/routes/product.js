var express = require('express');
var router = express.Router();
const productosController = require('../controllers/productosController');

router.get('/', productosController.product);

router.get('/add', productosController.productAdd);

router.get('/info', productosController.product);

router.get('/search', productosController.search);

module.exports = router;



