const db = require("../database/models");
const bcrypt = require("bcryptjs");
const { validationResult } = require('express-validator');


const userController = {
    profile: function (req, res) {
        return res.render('profile', { lista: user });},

    profileEdit: function (req, res) {
        return res.render('profile-edit', { lista: user })
    },

    login: function (req, res) {
        return res.render('login', { lista: user })
    },

    register: function (req, res) {
        res.render('register')
    },
    store: function (req, res) {
        let errors = validationResult(req);
        if (errors.isEmpty()) {
            
            /*capturo la info del form*/
            let form = req.body;

            let user = {
                nombre_usuario: form.usuario,
                email: form.mail,
                contrasenas: bcrypt.hashSync(form.pass, 10),
                fecha: form.nacimiento,
                dni: form.documento,
                foto: form.foto

            };
            db.Usuario.create(user)

                .then(function (result) {
                    return res.redirect('/user/profile');
                })
                .catch(function (error) {
                    return console.log(error);
                });


        } else {
           return res.render('register', {errors: errors.mapped(), old: req.body})
            }
        }
    }

;

module.exports = userController;
