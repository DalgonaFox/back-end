const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2')
const fs = require ('fs');

const app = express();
const port=3000;

const db = mysql.createConnection({
    host: 'localhost',
    user: 'mila',
    password: '2002',
    database: 'dalgona'
});

app.use(bodyParser.urlencoded({extended:true}));

app.get('/', (req, res) =>{//declarar qual é o caminho da rota escolhida, no caso '/'
    res.sendFile(__dirname + 'login.html')
});

app.post('/login', (req, res)=> {
    const username = req.body.usuario
    const password = req.body.senha

    db.query('select password from user where username = ?', [username], (error, results)=>{
        if (results.length > 0) {
            const passwordBD = results[0].password;
            console.log(passwordBD)
        } else{
            console.log('Usuário não cadastrado')
        }
    })
})

app.listen(port, ()=>{
    console.log(`Servidor rodando no endereço: http://localhost/:${port}`)
})