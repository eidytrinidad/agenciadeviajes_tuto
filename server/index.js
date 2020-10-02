const express = require('express')
const routes = require('./routers/rutas')
const configs = require('./config')
const bodyParser=require('body-parser')

require('dotenv').config()

// db.authenticate()
//     .then(()=>console.log('DB Conectada'))
//     .catch(error =>console.log(error))


const app = express()

//cargar rutas

//habilitar template enginge

app.set('view engine', 'pug')

//carpeta estatica
app.use(express.static('public'))


//Validar si en desarrollo o produccion

const config=configs[app.get('env')]

// crear variable para sitio web
app.locals.titulo=config.nombresitio

//Muestra el Año Actual y genera la ruta

app.use((req,res,next)=>{
    //create date

    const fecha= new Date();
    res.locals.fechaActual=  fecha.getFullYear();
    res.locals.ruta = req.path
    console.log(res.locals)
    next()
})

app.use(bodyParser.urlencoded({extended:true}))

app.use('/',routes)


const port = process.env.PORT || 4000;

app.listen(port,()=>{
    console.log("server running ",port)
})