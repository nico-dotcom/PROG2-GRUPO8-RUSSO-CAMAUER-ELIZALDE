var express = require('express');
var router = express.Router();

/* GET users profile. */
router.get('/profile', function(req, res, next) {
  res.render('profile');
});

/* GET users profile edit. */
router.get('/profile-edit', function(req, res, next) {
  res.render('profile-edit');
});

/* GET headerLogueado */
router.get('/headerLogueado', function(req, res, next) {
  res.render('headerLogueado');
});

/* GET login page. */
router.get('/login', function(req, res, next) {
  res.render('login');
});

/* GET register page. */
router.get('/register', function(req, res, next) {
  res.render('register');
});


module.exports = router;
