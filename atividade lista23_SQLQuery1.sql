use sistema_biblioteca
/*
1. Retornar todos os Livros de sociologia*/
select LIVRO.TITULO from LIVRO LIVRO
JOIN SOCIOLOGIA ON
SOCIOLOGIA.numero_registro = livro.numero_registro;

/* 
2.Listar o nome de funcionários que são Bibliotecarios*/
select * from BIBLIOTECARIO


/* 
3.Exibir os Títulos dos livros publicados antes de 2000
*/
SELECT Titulo FROM Livro where ano_publicacao < 2000;

/*
4.Mostrar o número total de livros em cada Biblioteca
*/


