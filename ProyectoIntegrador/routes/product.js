var express = require('express');
var router = express.Router();

/* GET product page. */
router.get('/', function(req, res, next) {
  res.render('product');
});

/* GET add product add page. */
router.get('/add', function(req, res, next) {
    res.render('product-add');
  });

/* GET search result. */
router.get('/search-result', function(req, res, next) {
    res.render('search-results');
  });


module.exports = router;
