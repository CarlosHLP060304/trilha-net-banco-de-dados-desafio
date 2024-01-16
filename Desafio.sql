USE Filmes;


--1

SELECT Nome, Ano FROM  dbo.Filmes;

--2

SELECT Nome, Ano FROM  dbo.Filmes ORDER BY Ano;

--3

SELECT Nome,Ano,Duracao FROM dbo.Filmes WHERE Nome = 'De Volta Para o Futuro';

--4

SELECT * FROM dbo.Filmes WHERE Ano = 1997;

--5

SELECT * FROM dbo.Filmes WHERE Ano>2000;

--6

SELECT * FROM dbo.Filmes WHERE Duracao > 100 AND Duracao <150 ORDER BY Duracao;

--7 

SELECT Ano,COUNT(Ano) Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC; 

--8
SELECT PrimeiroNome,UltimoNome FROM dbo.Atores WHERE Genero = 'M' ;

--9
SELECT PrimeiroNome,UltimoNome FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10
SELECT Nome,Genero FROM FilmesGenero FG
JOIN Filmes F ON FG.IdFilme = F.Id 
JOIN Generos G ON FG.IdGenero = G.Id; 
;

--11
SELECT Nome,Genero FROM FilmesGenero FG
JOIN Filmes F ON FG.IdFilme = F.Id 
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'
; 

--12
SELECT F.Nome,A.PrimeiroNome,A.UltimoNome,EF.Papel FROM ElencoFilme EF
JOIN Filmes F ON EF.IdFilme = F.Id 
JOIN Atores A ON EF.IdAtor= A.Id
; 




