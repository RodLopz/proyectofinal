const express = require('express');
const router = express.Router();
const path = require('path');
const multer = require('multer');

const mantenimiento = require('../../middlewares/mantenimiento');

const apiProductosController = require(path.resolve(__dirname , '..','..','controllers','apis','apiProductosController'));

//Aquí dispongo la información del storage para tratamiento de guardado imagenes
//https://www.npmjs.com/package/multer
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.resolve(__dirname, '../../public/images/servicios_web'));    //Aquí se debe indicar donde se van a guardar las imagenes
    },
    filename: function (req, file, cb) {
      cb(null, 'servicio' + '-' + Date.now()+ path.extname(file.originalname));      //UNIQID() --- PHP
    }
  })
   
const upload= multer({ storage })

//router.get('/administrar/buscar', adminController.search);
router.get('/api/productos',mantenimiento, apiProductosController.index);
/*router.get('/admin/create',  adminController.create);
router.post('/admin/create', upload.single('imagen'), adminController.save);
router.get('/admin/detail/:id', adminController.show);
router.get('/admin/delete/:id', adminController.destroy);
router.get('/admin/edit/:id', adminController.edit);
router.put('/admin/edit/:id', upload.single('imagen'),adminController.update);
*/



module.exports = router;
