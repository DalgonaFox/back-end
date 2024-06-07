const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');

const db = mysql.createConnection({
    host:'127.0.0.1',
    user:'mila',
    password:'2002',
    database:'biblioteca'
});

db.connect((error)=>{
    if(error){
        console.log('Erro ao conectar banco de dados')
    } else{
        console.log('Conectado ao MySQL')
    }
});

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({extended:true}));

app.listen(port, ()=>{
    console.log(`Servidor rodando no endereço: http://localhost/:${port}`)
});

app.get('/', (req, res)=>{
    res.sendFile(__dirname + '/login.html')
});

app.post('/login', (req, res)=>{
    const {email, password} = req.body;

    db.query('', [], (error, results)=>{
        if(error){
            res.status(500).send('Erro ao obter usuários')
        } else{
            if(results.length > 0){
                const user = results[0];
                if(user.password === password){
                    res.send('Login bem-sucedido!');
                } else{
                    res.status(401).send('Credenciais inválidas. Tente novamente');
                }
            } else{
                
            }
        }
    })
})