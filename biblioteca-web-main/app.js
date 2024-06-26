const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const ejs = require('ejs');
const path = require('path');

const app = express();
const port = 3000;

//criando a conexão com o banco
const db = mysql.createConnection({
  host: 'localhost',
  user:'mila',
  password: '2002',
  database:'biblioteca'
});

//conectando com o banco
db.connect((error) => {
if(error){
  console.error('Erro ao conectar ao MySQL:', error)
}else{
  console.log("Conectado ao MySQL!")
}
});

app.use(bodyParser.urlencoded({ extended: true }))

app.use(express.static('public'));
app.use(express.static('src'));

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.get(['/', '/home'], (req, res) => {
  res.render('home');
});

app.get(['/acervo'], (req, res) => {
  db.query('select a.nome as autor, l.titulo, l.ISBN, l.ano_publicacao from livro l join autor a on l.id_autor = a.id_autor', (error, results) => {
    if(error) {
      console.log('Erro!')
    } else {
      res.render('acervo', {livros: results})
    }
  })
});

app.get(['/pesquisarLivros'], (req, res) => {
  const pesquisa = req.query.pesquisa;
  console.log(pesquisa);
  db.query('select a.nome as autor, l.titulo, l.ISBN, l.ano_publicacao from livro l join autor a on l.id_autor = a.id_autor where l.titulo like ? or a.nome like ?', [`%${pesquisa}%`, `%${pesquisa}%`], (error, results) => {
    if(error){
      console.log('Ocorreu um erro ao realizar o filtro')
    } else {
      res.render('acervo', {livros:results})
    }
  })
});

const carregarAutores = (callback) => {
  db.query('select * from autor order by nome', (error, results) => {
    if(error) {
      console.log('Erro ao carregar autores', error);
    } else {
      const autores = results.map(result => result)
      callback(null, autores);
    }
  });
}

app.get('/livro', (req, res) => {
  const ISBN = req.query.ISBN
  console.log(ISBN)
  carregarAutores ((error, listaAutores)=>{
    db.query('select * from livro where ISBN = ?', [ISBN], (error, results) => {
      if(error) {
        console.log('Erro ao buscar o livro co ISBN')
      }else {
        if(results.length > 0) {
          res.render('livro', {autores: listaAutores, livro: results[0]})
        } else {
          console.log('livro não encontrado.')
        }
      }
    })
  })
})

app.post('/editarLivro', (req, res) => {
  const ISBN = parseInt(req.body.inputISBN)
  const id_autor = parseInt(req.body.inputAutor)
  const titulo = req.body.inputTitulo
  const ano_publicacao = parseInt(req.body.inputAnoPublicacao)
  const genero = req.body.inputGenero
  const resumo = req.body.textResumo
  db.query('update livro set ISBN = ?, id_autor = ?, titulo = ?, ano_publicacao = ?, genero = ?, resumo = ? where ISBN = ?', [ISBN, id_autor, titulo, ano_publicacao, genero, resumo, ISBN], (error, results) => {
    if(error) {
      console.log('Erro ao editar livro.')
    } else {
      res.redirect('/acervo')
    }
  })
})

app.post('/excluirLivro/:ISBN', (req, res) => {
  const ISBN = parseInt(req.body.inputISBN)
  console.log(ISBN)
  db.query('delete from livro where ISBN = ?', [ISBN], (error, results) => {
    if(error) {
      console.log('Erro ao deletar livro.')
    } else {
      res.redirect('/acervo')
    }
  })
})

app.listen(port, () => {
  console.log(`Servidor iniciado em http://localhost:${port}`);
});

