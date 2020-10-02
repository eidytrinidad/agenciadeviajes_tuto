const Sequelize = require('sequelize')

const db= require('../config/database')

const Viaje= db.define('viaje',{
    titulo:{
        type:Sequelize.STRING,
    },
    precio:{
        type:Sequelize.INTEGER
    },
    fecha_ida:{
        type:Sequelize.DATE
    },
    fecha_vuelta:{
        type:Sequelize.DATE
    },
    imagen:{
        type:Sequelize.STRING,
    },
    descripcion:{
        type:Sequelize.STRING,
    },
    disponibles:{
        type:Sequelize.INTEGER
    }
})

module.exports=Viaje