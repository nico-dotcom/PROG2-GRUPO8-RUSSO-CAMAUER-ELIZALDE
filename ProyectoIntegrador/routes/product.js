var express = require('express');
var router = express.Router();
const productosController = require('../controllers/productosController');

router.get('/', productosController.index);

router.get('/productI', productosController.product);

router.get('/add', productosController.productAdd);

router.get('/info', productosController.productInfo);



/* GET product page. */
router.get('/productI', function(req, res, next) {
  res.render('product');
});



/* GET search result. */
router.get('/search-result', function(req, res, next) {
    res.render('search-results');
  });


module.exports = router;
