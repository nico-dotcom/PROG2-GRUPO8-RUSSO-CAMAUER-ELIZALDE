var express = require('express');
const userController = require('../controllers/userController');
var router = express.Router();

router.get('/profile', userController.profile);

router.get('/profile-edit', userController.profileEdit);

router.get('/headerLogueado', function(req, res, next) {
  res.render('headerLogueado');
});

router.get('/login', function(req, res, next) {
  res.render('login');
});

router.get('/register', function(req, res, next) {
  res.render('register');
});

module.exports = router;





