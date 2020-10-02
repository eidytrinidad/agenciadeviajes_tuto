const Viaje = require("../models/Viajes");
const Testimonial = require("../models/Testimoniales");

exports.consultaHomePage = async (req, res) => {
  try {
    const viajes=await Viaje.findAll({
      limit:3
    })
  
    const testimoniales= await Testimonial.findAll(
      {
        limit:3,
        order:[
          ['id',"DESC"]
        ]
    })
  
    res.render("index", {
      pagina: "Proximos Viajes",
      viajes,
      testimoniales,
      clase:'home'
    });
  } catch (error) {
    console.log(error)
  }
};
