const express = require("express");
const router = express.Router();


//Controladores
const nosotrosController=require('../controllers/nosotrosController')
const homeController= require('../controllers/homeController')
const viajesController=require('../controllers/viajesControllers')
const testimonialesController=require('../controllers/testimonialesController')

//Rutas

router.get("/",homeController.consultaHomePage);

router.get("/nosotros",nosotrosController.infoNosotros);

router.get("/viajes",viajesController.mostrarViajes);

router.get("/viajes/:id",viajesController.mostrarViaje);

router.get("/testimoniales",testimonialesController.mostrarTestimoniales);

router.post("/testimoniales",testimonialesController.agregarTestimonial);

module.exports = router;
