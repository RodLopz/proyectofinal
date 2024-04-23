const path = require('path');
const fs = require('fs');

//let servicios  = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../models/servicios.json')));
const {Service, Category} = require('../database/models/');

const webController = {
    index: function(req,res){
        Service
        .findAll()
        .then(servicios =>{
            //return res.send(servicios)
            res.render(path.resolve(__dirname, '..','views','web','index'), {servicios});
        })           
        .catch(error => res.send(error))
    },
    nosotros: function(req,res){
        //res.sendFile(path.resolve(__dirname, '../views/web/nosotros.html'));
        res.render(path.resolve(__dirname, '../views/web/nosotros'));
    }

}
module.exports = webController;