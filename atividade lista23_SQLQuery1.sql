use sistema_biblioteca
/*
1. Retornar todos os Livros de sociologia*/
select LIVRO.TITULO from LIVRO LIVRO
JOIN SOCIOLOGIA ON
SOCIOLOGIA.numero_registro = livro.numero_registro;

/* 
2.Listar o nome de funcion�rios que s�o Bibliotecarios*/
select * from BIBLIOTECARIO


/* 
3.Exibir os T�tulos dos livros publicados antes de 2000
*/
SELECT Titulo FROM Livro where ano_publicacao < 2000;

/*
4.Mostrar o n�mero total de livros em cada Biblioteca
*/


