const db = require("../database/models");
const bcrypt = require("bcryptjs");
const { validationResult } = require('express-validator');


const userController = {
    profile: function (req, res) {
        return res.render('profile', { lista: user })
    
    },

    profileEdit: function (req, res) {
        return res.render('profile-edit', { lista: user })
    },

    login: function (req,res) {
        if(req.session.user != undefined){
            return res.render("index")
        }else{
            return res.render('login');
        }
    },

    register: function (req, res) {
        res.render('register')
    },

    loginUser: (req, res)=>{
        let form = req.body;

        let filtro = {
            where: [{email: form.email}]
        };

        db.Usuario.findOne(filtro)
        .then((result) => {

            if (result == null) return res.send("No existe el mail " +  form.email)
            console.log(result);

            let check = bcrypt.compareSync(form.password, result.contrasenas);

            if (check) {
                req.session.user = result;

                /* que lo guarde en cookie si el usuario lo tildo */
                if (form.rememberme != undefined) {
                    res.cookie("userId", result.id_usuario, {maxAge: 1000 * 60 * 15});
                }
                return res.redirect("/");
            } else {
                return res.send("La contraseña es incorrecta")
            }
            
           

        }).catch((err) => {
            return console.log(err);
        });


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
