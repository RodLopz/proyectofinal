const path = require('path');
const fs = require('fs');
//const db =  require('../database/models/');
const {Service, Category} = require('../database/models/');




module.exports = {
    index: function(req,res){
        const servicios = Service.findAll();
        const categorias = Category.findAll();
        Promise.all([servicios,categorias])
        .then(([servicios,categorias]) =>{
            res.render(path.resolve(__dirname , '..','views','productos','productos') , {servicios,categorias});
        })           
        .catch(error => res.send(error))
    },

    categorias: (req,res) =>{
       //return res.send(req.query.categoria);
       const categorias = Category.findAll();
       const servicios = Service
       .findAll({
           where: {categoryId : req.query.categoria},
           include: [{association: 'category'}]
       })
       Promise.all([servicios,categorias])
       .then(([servicios,categorias]) =>

           res.render(path.resolve(__dirname, '..','views','productos','productos'), {servicios,categorias })
       )        
    },

    show: (req,res) => {
        Service
        .findByPk(req.params.id, {
            include: ['category']
        })
        .then(servicioWeb =>{
    
            res.render(path.resolve(__dirname, '..','views','productos','detail'), { servicioWeb });
        })
    },

}