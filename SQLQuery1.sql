-- Usuários de Banco de dados

use sistema_biblioteca; 
--Mostrando todos os Funcionarios
select * from funcionario;
-- Selecione todos os Funcionários que são atendentes
select * from ATENDENTE
-- todos os nomes ds Funcionários
select * from FUNCIONARIO order by nome;
--todos os nomes que comecam com CA
select * from FUNCIONARIO where nome like 'ca%';  -- Mostrar uma coluna de total de Funcionarios
--Retornar Total de funcionários
select count(*) as todos_funcionarios from FUNCIONARIO
--achar sobrenome Silva
select *from FUNCIONARIO where nome like '%Silva';
-- Mostrar o que tem na tabela Livros
select * from LIVRO;
-- Ordenar os livros pelo ano de Publicacao
select * from LIVRO order by ano_publicacao
--Em ordem decrescente
select * from livro order by ano_publicacao desc;
-- ordenar o Autor
select * from livro order by autor;