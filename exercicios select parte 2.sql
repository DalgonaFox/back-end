use mercado;

-- 1
select idProduto, valorUnitario from produto where valorUnitario =
(select MAX(valorUnitario) from produto);

-- 2
select idProduto, quantidade from produto where quantidade =
(select MIN(quantidade) from produto);

-- 3
select COUNT(idFuncionario), sexo from funcionario where demissao = 1 group by sexo;

-- 4
select AVG(salario) from funcionario where demissao = 0;

-- 5
select SUM(salario) from funcionario where demissao = 0;

-- 6
select COUNT(idFuncionario), idDepartamento from deptfunc where dataSaidaDept is null group by idDepartamento;

-- 7
select AVG(idade) from cliente where idCliente in
(select idCliente from compra where year(dataCompra) = 2024 and month(dataCompra) between 07 and 09);

-- 8
select count(idFuncionario), month(dataContratacao) from funcionario group by month(dataContratacao);

-- 9
select COUNT(idProduto), idCategoria from produto group by idCategoria;

-- 10
select COUNT(idProduto), idCategoria from produto where idCategoria =
(select idCategoria from Categoria where nome = 'Petshop');

-- 11
select COUNT(idFuncionario), idSupervisor from funcionario where idSupervisor <> idFuncionario group by idSupervisor;

-- 12
select sum(valorTotalCompra) from compra where year (dataCompra) > 2023;

-- 13
select count(idCompra) from compra group by formaPagamento;

-- 14
select count(idCompra), idCliente from compra group by idCliente order by count(idCompra) desc;

-- 15
select count(idDependente) from dependente group by idFuncionario;

-- 16
select sum(quantidade) from itemcompra group by idProduto order by (sum(quantidade)) desc;

-- 17
select count(idCompra) from compra group by idCliente having (count(idCompra)) > 2;

-- 18
select idFuncionario, salario from funcionario where salario >
(select avg(salario) from funcionario);
   
-- 19
select count(idProduto) from produto group by idFornecedor having (count(idProduto)) > 2;

-- 20
select distinct idCliente from compra where valorTotalCompra >
(select avg(valorTotalCompra) from compra);
   
-- 21
select count(idFuncionario), idSupervisor from funcionario group by idSupervisor
having count(idFuncionario) > 5;
