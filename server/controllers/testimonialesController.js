
const Testimonial = require("../models/Testimoniales");

const mostrarTestimoniales= async(req, res) => {
   try {
    const testimoniales= await Testimonial.findAll({
      order: [
        ['id', 'DESC']
      ]
    })
        res.render("testimoniales", {
            pagina: "Testimoniales",
            testimoniales
          });
    
   } catch (error) {
     console.log(error)
   }
}

const agregarTestimonial= async(req, res) => {

    //Validar Campos

  let { nombre, correo, mensaje } = req.body;

  let errores = [];

  if (!nombre) {
    errores.push({ mensaje: "Agrega tu Nombre" });
  }
  if (!correo) {
    errores.push({ mensaje: "Agrega tu Correo" });
  }
  if (!mensaje) {
    errores.push({ mensaje: "Agrega tu Mensaje" });
  }

  //revisar por errores

  if (errores.length>0) {
      //Muestra La vista con errores
      const testimoniales= await Testimonial.findAll();

      res.render('testimoniales',{
        errores,
        nombre,
        correo,
        mensaje,
      pagina:'Testimoniales',   
      testimoniales})
   
  }else{

        Testimonial.create({
            nombre,
            correo,
            mensaje
        }).
        then(Testimonial=>res.redirect('/testimoniales'))
        .catch(err=>console.log(err))

  }

}



module.exports={
    mostrarTestimoniales,
    agregarTestimonial
}