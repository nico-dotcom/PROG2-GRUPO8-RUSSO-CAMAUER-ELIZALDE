var express = require('express');
const userController = require('../controllers/userController');
var router = express.Router();
const db = require('../database/models')
const { body } = require('express-validator');
let validations = [
    body('mail')
        .notEmpty().withMessage('Debe ingresar un mail').bail()
        .isEmail().withMessage('Debe ingresar un mail valido')
        .custom(function (value, { req }) {
            return db.Usuario.findOne({
                where: { email: req.body.mail }
            })
                .then(function (user) {
                    if (user) {
                        throw new Error('el mail ingresado ya existe')
                    }
                })
        }),
    body("usuario")
        .notEmpty().withMessage('Debe ingresar un nombre de usuario').bail(),
    body('pass')
        .notEmpty().withMessage('Debe ingresar una contraseña').bail()
        .isLength({ min: 4 }).withMessage('La contraseña debe ser mas larga'),

];
router.get('/profile/id/:id', userController.profile);

router.get('/profile-edit', userController.profileEdit);

router.get('/login', userController.login);

router.post('/login', userController.loginUser);

router.post('/logout',  userController.logout);

/*muestra el formulario*/
router.get('/register', userController.register);

/* procesa la informacion del formulario*/
router.post('/register', validations, userController.store);


module.exports = router;





