const user = require('../db/datos');

const userController = {
    profile: function (req,res) {
        return res.render('profile', {lista: user} )
    },
    
    profileEdit: function (req,res) {
        return res.render('profile-edit', {lista: user} )
    },

    login: function (req,res) {
        return res.render('login', {lista: user} )
    },

    register: function (req,res) {
        return res.render('register', {lista: user} )
    }

};

module.exports= userController;
