import express from 'express'
import publicRoutes from './routes/public.js'
import privateRoutes from './routes/private.js'
import auth from './middlewares/auth.js'
import cors from 'cors'

const app = express()
app.use(express.json())
app.use(cors({
    origin: 'http://10.0.2.2:3000',
  }));

app.use('/', publicRoutes)
app.use('/', auth, privateRoutes)

app.listen(3000, ()=> console.log("Servidor Rodando 🌠"))