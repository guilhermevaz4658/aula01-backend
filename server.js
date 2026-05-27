const express = require('express')

const app = express()

const port = 3000

app.get('/', (req, res) => {
    res.send("Pagina inicial com express")
})

app.get('/sobre', (req, res) => {
    res.send("Pagina sobre com express")
})

app.get('/contato', (req, res) => {
    res.send("Pagina de contato com express")
})

app.get('/servicos', (req, res) => {
    res.send("Lista de Serviços")
})

app.get('/produtos', (req, res) => {
    res.send("Lista de Produtos2")
})

app.listen(port, () => {
    console.log(`Servidor rodando na porta: ${port}`)
})