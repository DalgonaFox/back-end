use biblioteca;

-- inserção de livros

-- exercicio 1
insert into autor (id_autor, nome, nacionalidade) values
(3, 'Miguel de Cervantes', 'Espanhola');

-- exercicio 2
insert into livro (id_livro, id_autor, titulo, ano_publicacao, genero) values
(3, 3, 'Dom Quixote', 1604, 'Romance');

-- exercicio 3
insert into livro (id_livro, id_autor, titulo, ano_publicacao, genero) values
(4, 2, 'Harry Potter e a Pedra Filosofal', 1997, 'Fantasia');

-- exercicio 4

-- inserção de endereco

insert into endereco (id_endereco, rua, numero, bairro, cidade, estado, cep) values
(2, 'Rua Primeiro de Março', 456, 'Bairro Jardim', 'Rio de janeiro', 'Rio de janeiro', '01010101'),
(3, 'Rua Piangui', 789, 'Bairro Floresta', 'Belo Horizonte', 'Minas Gerais', '22222222'),
(4, 'Avenida Oceânica', 321, 'Praia', 'Salvador', 'Bahia', '89898989'),
(5, 'Avenue de Verdun', 654, 'Monte Carlo', 'Mônaco', 'Mônaco', '77777777');

-- inserção de usuario

insert into usuario (id_usuario, nome, email, id_endereco) values
(2, 'Washington', 'washington@example.com', 2),
(3, 'Giovanna', 'giovanna@example.com', 3),
(4, 'Heloysa', 'heloysa@example.com', 4),
(5, 'Juliana', 'juliana@example.com', 5);

-- exercicio 5 inserção de emprestimo

insert into emprestimo (id_emprestimo, id_livro, id_usuario, data_emprestimo) values
(2, 4, 3, '2024-03-22'),
(4, 3, 5, '2024-03-12');

insert into emprestimo (id_emprestimo, id_livro, id_usuario, data_emprestimo, data_devolucao) values
(3, 3, 2, '2000-06-20', '2000-07-25'),
(5, 1, 4, '2023-03-12', '2023-03-15');

-- exercicio 6

update emprestimo set data_devolucao = '2024-03-22' where id_usuario = 3;

update emprestimo set data_devolucao = '2024-03-21' where id_usuario = 5;

update endereco set rua = 'Rua Benjamin Constant', numero = 1200, bairro = 'Bairro Centro', cidade = 'Suzano', estado = 'São Paulo', cep = '34343434' where id_endereco = 4;

desc emprestimo;
select * from emprestimo;

-- exercicio 9 chorei

-- autores

insert into autor (id_autor, nome, nacionalidade) values
(4, 'Sir Arthur Conan Doyle', 'Britânica'),
(6, 'Naoko Takeuchi', 'Japonesa');

insert into autor (id_autor, nome, nacionalidade, pseudonimo) values
(5, 'Eric Arthur Blair', 'Britânico', 'George Orwell');

-- livros

insert into livro (id_livro, id_autor, titulo, ano_publicacao, genero) values
(5, 4, 'As Aventuras de Sherlock Holmes', 1812, 'Mistério'),
(6, 4, 'Um Estudo em Vermelho', 1887, 'Mistério'),
(7, 4, 'O Signo dos Quatro', 1890, 'Mistério'),
(8, 4, 'As Memórias de Sherlock Holmes', 1893, 'Mistério'),
(9, 4, 'O Cão dos Baskerville', 1902, 'Mistério'),
(10, 4, 'O Último Adeus de Sherlock Holmes', 1917, 'Mistério'),
(11, 4, 'O Vale do Medo', 1915, 'Mistério'),
(12, 4, 'A Volta de Sherlock Holmes', 1905, 'Mistério'),
(13, 5, 'A Revolução dos Bichos', 1945, 'Distopia'),
(14, 5, '1984', 1948, 'Distopia'),
(15, 6, 'Chocolate Christmas', 1988, 'Shoujo'),
(16, 6, 'Maria', 1990, 'Shoujo'),
(17, 6, 'The Cherry Project', 1991, 'Shoujo'),
(18, 6, 'Codename: Sailor V', 1997, 'Shoujo'),
(19, 6, 'Pretty Soldier Sailor Moon', 1997, 'Shoujo'),
(20, 6, 'Miss Rain', 1993, 'Shoujo'),
(21, 6, 'Prism Time', 1997, 'Shoujo'),
(22, 6, 'PQ Angels', 1997, 'Shoujo'),
(23, 6, 'Love Witch', 2002, 'Shoujo'),
(24, 6, 'Toki☆Meka!', 2001, 'Shoujo');

select * from livro;

-- endereco

insert into endereco (id_endereco, rua, numero, bairro, cidade, estado, cep) values
(6, 'Rua das Palmeiras', 234, 'Centro', 'São Paulo', 'São Paulo', '01020000'),
(7, 'Avenida Atlântica', 123, 'Copacabana', 'Rio de Janeiro', 'Rio de Janeiro', '22070001'),
(8, 'Rua Barata Ribeiro', 789, 'Copacabana', 'Rio de Janeiro', 'Rio de Janeiro', '22040002'),
(9, 'Rua das Laranjeiras', 321, 'Laranjeiras', 'Rio de Janeiro', 'Rio de Janeiro', '22240003'),
(10, 'Avenida Brasil', 987, 'Centro', 'Rio de Janeiro', 'Rio de Janeiro', '20040004'),
(11, 'Avenida Paulista', 1000, 'Bela Vista', 'São Paulo', 'São Paulo', '01310100'),
(12, 'Rua Oscar Freire', 1001, 'Jardins', 'São Paulo', 'São Paulo', '01426100'),
(13, 'Avenida Boa Viagem', 1002, 'Boa Viagem', 'Recife', 'Pernambuco', '51021000'),
(14, 'Rua da Paz', 1003, 'Centro', 'Curitiba', 'Paraná', '80060080'),
(15, 'Avenida Beira Mar', 1004, 'Meireles', 'Fortaleza', 'Ceará', '60165100');

-- usuarios

insert into usuario (id_usuario, nome, email, id_endereco) values
(6, 'Mariana', 'mariana@example.com', 6),
(7, 'Sabrina', 'sabrina@example.com', 7),
(8, 'Elton', 'elton@example.com', 8),
(9, 'Murilo', 'murilo@example.com', 9),
(10, 'Yoshida', 'yoshida@example.com', 10),
(11, 'Eduardo', 'eduardo@example.com', 11),
(12, 'Marcelo', 'marcelo@example.com', 12),
(13, 'Willian', 'willian@example.com', 13),
(14, 'João', 'joao@example.com', 14),
(15, 'Keite', 'keite@example.com', 15);

-- emprestimos

select * from usuario;
insert into emprestimo (id_emprestimo, id_livro, id_usuario, data_emprestimo, data_devolucao) values
(6, 5, 6, '2000-06-20', '200-07-25'),
(7, 6, 7, '2000-06-20', '200-07-26'),
(8, 7, 8, '2000-06-20', '200-07-27'),
(9, 8, 9, '2000-06-20', '200-07-28'),
(10, 9, 10, '2000-06-20', '200-07-29'),
(11, 10, 11, '2000-06-20', '200-07-30'),
(12, 11, 12, '2000-06-20', '200-08-01'),
(13, 12, 13, '2000-06-20', '200-08-02'),
(14, 13, 14, '2000-06-20', '200-08-03'),
(15, 14, 15, '2000-06-20', '200-08-04');

select * from emprestimo;

-- exercicio 10

insert into usuario (id_usuario, nome, email, id_endereco) values
(16, 'Mayara', 'mariana@example.com', 2);

delete from usuario where id_usuario = 16;