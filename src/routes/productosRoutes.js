const express = require('express');
const router = express.Router();
const path = require('path');
const multer = require('multer');

const mantenimiento = require('../middlewares/mantenimiento');

const controllersProducto = require(path.resolve(__dirname, '..', 'controllers', 'controllersProducto'));

//Aquí dispongo la información del storage para tratamiento de guardado imagenes
//https://www.npmjs.com/package/multer
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.resolve(__dirname, '../../public/images/servicios_web'));    //Aquí se debe indicar donde van a guardarse la imagenes
    },
    filename: function (req, file, cb) {
      cb(null, 'servicio' + '-' + Date.now()+ path.extname(file.originalname));      //UNIQID() --- PHP
    }
  })
   
const upload= multer({ storage })


router.get('/productos', controllersProducto.index);
router.get('/productos/categoria',controllersProducto.categorias)
router.get('/productos/detail/:id', controllersProducto.show);




module.exports = router;