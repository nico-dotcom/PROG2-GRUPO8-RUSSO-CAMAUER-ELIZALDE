var express = require('express');
const userController = require('../controllers/userController');
var router = express.Router();

router.get('/profile', userController.profile);

router.get('/profile-edit', userController.profileEdit);

router.get('/login', userController.login);

router.get('/login', userController.register);

module.exports = router;





