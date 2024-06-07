insert into Categoria(idCategoria, nome) values
(106, 'Jardinagem'),
(107, 'Livros'),
(108, 'Papelaria');

insert into fornecedor(idFornecedor, nomeFornecedor) values
(106, 'Famastil'),
(107, 'Nove54'),
(109, 'Hammer'),
(110, 'Zahar'),
(111, 'Companhia das Letras'),
(112, 'Record'),
(113, 'Principis'),
(114, 'Tilibra'),
(115, 'Faber Castell'),
(116, 'Casio'),
(117, 'Up4You'),
(118, 'Primafer');

insert into Produto(idProduto, idFornecedor, idCategoria, nome, quantidade, valorUnitario) values
(106, 106, 106, 'Kit de Pás', 100, 38.70),
(107, 107, 106, 'Regador', 200, 17.90),
(108, 11, 106, 'Tesoura de Poda', 100, 25.90),
(109, 109, 106, 'Pulverizador Spray', 200, 23.00),
(110, 118, 106, 'Luvas de Jardinagem', 100, 34.80),
(111, 110, 107, 'As Aventuras de Sherlock Holmes', 50, 25.00),
(112, 111, 107, 'Capitães da Areia', 150, 67.00),
(113, 112, 107, 'Vidas Secas', 200, 75.00),
(114, 113, 107, 'Quincas Borba', 50, 25.00),
(115, 113, 107, 'Dom Casmurro', 70, 18.00),
(116, 114, 108, 'Caderno', 300, 30.00),
(117, 115, 108, 'Kit Lápis de Cor', 200, 50.00),
(118, 115, 108, 'Kit Canetinha', 200, 31.60),
(119, 116, 108, 'Calculadora', 100, 80.00),
(120, 117, 108, 'Estojo', 200, 35.00);

insert into cidade(idCidade, uf, nome) values
(106, 'PE', 'Gravatá'),
(107, 'SP', 'Suzano'),
(108, 'MG', 'Alagoa'),
(109, 'RJ', 'Paraty'),
(110, 'BA', 'Jacobina');

insert into bairro(idbairro, idcidade, nome) values
(106, 106, 'Gravatá Centro'),
(107, 107, 'Jardim Leblon'),
(108, 108, 'Centro'),
(109, 109, 'Centro Histórico'),
(110, 110, 'Junco');

insert into tipoendereco(idtipoendereco, nome) values
(17, 'avenida'),
(2, 'residencial'),
(3, 'comercial'),
(4, 'apartamento'),
(5, 'condomínio');

insert into endereco(idendereco, nome, numero, cep, idtipoendereco, idbairro) values
(106, '1ª Travessa Santo Amaro', 10, '55641-012', 17, 106),
(107, 'Antônio Frederiso Ozanam', 16, '08655-157', 4, 107),
(108, 'Feliciade', 34, '37458-959', 3, 108),
(109, 'Domingos Gonçalves de Abreu', 406, '23970-959', 2, 109),
(110, 'Sete de Setembro', 234, '44706-970', 3, 110);

insert into cliente(idcliente, idendereco, nome, sexo, idade) values
(106, 106, 'João Pedro Yoshida', 'M', 24),
(107, 107, 'Mariângela da Silva', 'F', 39),
(108, 108, 'Zelda Almeida Fernandes', 'F', 28),
(109, 109, 'Saiko Oliveira Mendes', 'M', 22),
(110, 110, 'Mario Colombo Ferrari', 'M', 47);

insert into funcionario(idfuncionario, idsupervisor, idendereco, nome, idade, sexo, datacontratacao, datademissao, demissao, salario) values
(108, 108, 108, 'Kirby Rodrigues', 21, 'M', '2022-08-30', '2023-10-30', 1, 1900);

insert into funcionario(idfuncionario, idsupervisor, idendereco, nome, idade, sexo, datacontratacao, demissao, salario) values
(107, 108, 107, 'Walter Marinho', 55, 'M', '2018-10-03', 0, 8500),
(106, 107, 106, 'Winston Ferreira', 45, 'M', '2019-03-22', 0, 2700),
(109, 106, 109, 'Jubisclayton de Oliveira', 37, 'M', '2019-06-26', 0, 28000),
(110, 109, 110, 'Patrícia Poeta', 34, 'F', '2021-11-15', 0, 7000);

-------------------------------------------------

insert into dependente(iddependente, idfuncionario, nome, parentesco, sexo, idade) values
(106, 106, 'Guilherme Oliveira', 'Filho', 'M', 3),
(107, 107, 'Kaelyn Rocha', 'Filha' 'F', 15),
(108, 108, 'Samantha Filomeno', 'Filha' 'F', 11),
(109, 109, 'Aparecida de Oliveira', 'Mãe' 'F', 82),
(110, 110, 'Nikki Marx', 'Filha' 'F', 6);

insert into telefone(IDCLIENTE, IDFUNCIONARIO, numerotelefone, idtelefone) values
(106, NULL, '8148273821', 106),
(NULL, 107, '1186329841', 106),
(108, NULL, '3117503875', 106),
(NULL, 109, '2129863745', 106),
(110, NULL, '7710926573', 106);

select * from telefone where idcliente=106;

------------------------------------

insert into compra(idCompra, idCliente, idFuncionario, dataCompra, valorTotalCompra, finalizada, formaPagamento) values
(106, 106, '8148273821', 106),
(107, 107, '1186329841', 106),
(108, 108, '3117503875', 106),
(109, 109, '2129863745', 106),
(110, 110, '7710926573', 106);

insert into itemcompra(idcompra, idproduto, quantidade, valortotal, iditemcompra) values
(106, 106, '8148273821', 106),
(107, 107, '1186329841', 106),
(108, 108, '3117503875', 106),
(109, 109, '2129863745', 106),
(110, 110, '7710926573', 106);

insert into deptfunc(iddeptfunc, idfuncionario, iddepartamento, dataentradadept, datasaidadept) values
(106, 106, '8148273821', 106),
(107, 107, '1186329841', 106),
(108, 108, '3117503875', 106),
(109, 109, '2129863745', 106),
(110, 110, '7710926573', 106);