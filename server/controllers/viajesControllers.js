const Viaje = require("../models/Viajes");

const mostrarViajes = async (req, res) => {
  try {
    const viajes = await Viaje.findAll();
    res.render("viajes", {
      pagina: "Proximos Viajes",
      viajes,
    });
  } catch (error) {
    console.log(error);
  }
};

const mostrarViaje = async (req, res) => {
  try {
    const id = req.params.id;
    const viaje = await Viaje.findByPk(id);
    res.render("viaje", {
      viaje,
    });
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  mostrarViajes,
  mostrarViaje,
};
