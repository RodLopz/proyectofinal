const path = require('path');
const fs = require('fs');

//requerir su Base  de Datos.
const db = require('../database/models/');
//Aqui hacen esto para lograr activa los operadores en sus querys (like - count - max) 
const Op = db.Sequelize.Op;


const Service = db.Service;

module.exports = {
    index : (req,res) =>{
        Service
        .findAll()
        .then(servicios =>{
            //return res.send(servicios)
            res.render(path.resolve(__dirname , '..','views','admin','index') , {servicios});
        })           
        .catch(error => res.send(error))
    },
    create: (req,res) =>{
        res.render(path.resolve(__dirname, '..','views','admin','create'));
    },
    save: (req,res) =>{
        const _body = req.body;
        //return res.send(_body);
        _body.name = req.body.nombre,
        _body.description = req.body.descripcion,
        _body.price =  req.body.precio,
        _body.discount = req.body.descuento,
        _body.image = req.file ? req.file.filename : ''    // if ternario       

        Service
        .create(_body)
        .then(servicio =>{
            res.redirect('/administrar');
        })  
        
    },
    show: (req,res) => {
        Service
        .findByPk(req.params.id)
        .then(servicioWeb =>{
            res.render(path.resolve(__dirname, '..','views','admin','detail'), {servicioWeb });
        })
    },
    destroy: (req,res) => {
        Service
        .destroy({
            where : {
               id:  req.params.id
            },
            force : true 
        })
        .then(confirm =>{
            res.redirect('/administrar');
        })
    },
    edit: (req,res) => {
        Service
        .findByPk(req.params.id)
        .then(servicioweb =>{
            res.render(path.resolve(__dirname, '..','views','admin','edit'), {servicioweb });
        })

    },
    update: (req,res) =>{
        const _body = req.body;
        //return res.send(_body);
        _body.name = req.body.nombre,
        _body.description = req.body.descripcion,
        _body.price =  req.body.precio,
        _body.discount = req.body.descuento,
        _body.image = req.file ? req.file.filename : req.body.oldImagen    // if ternario       

        Service
        .update(_body ,{
            where : {
                id : req.params.id
            }
        })
        .then(servicio =>{
            res.redirect('/administrar')
        })
        .catch(error => res.send(error));     //error de Base de Datos
    },
    search: ( req, res) =>{
        Service.findAll({
            where:{
                name: {[Op.like]: `%${req.query.buscar}%`}
            }
        })
        .then(resultado => { res.render(path.resolve(__dirname, '..', 'views', 'admin', 'index'),{servicios: resultado});})
        .catch(error => res.send(error))
    }

}
