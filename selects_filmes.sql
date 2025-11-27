-- Mostrando a Tabela toda 
SELECT * FROM filmes


-- 1. Filmes com melhor avaliação
SELECT titulo, diretor, nota_imdb 
FROM filmes 
ORDER BY nota_imdb DESC 
LIMIT 10;

-- 2. Filmes por década
SELECT 
    (ano_lancamento / 10) * 10 as decada,
    COUNT(*) as total_filmes,
    AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY decada 
ORDER BY decada;

-- 3. Diretores com mais filmes na lista
SELECT diretor, COUNT(*) as total_filmes, AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY diretor 	
HAVING COUNT(*) > 1
ORDER BY total_filmes DESC;

-- 4. Gêneros mais populares
SELECT genero, COUNT(*) as total, AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY genero 
ORDER BY total DESC;

-- 5. Filmes mais longos
SELECT titulo, duracao_minutos, genero
FROM filmes 
ORDER BY duracao_minutos DESC 
LIMIT 10;

-- 6. Eu quero saber quais são os filmes do Diretor Christopher Nolan
	SELECT * FROM filmes where diretor = "Christopher Nolan"
-- 7. Eu quero saber quais são os filmes do James Gunn
	SELECT * FROM filmes WHERE  diretor = "James Gunn"
-- 8. Eu quero saber quais os filmes de ação lançados em 2016
	SELECT * FROM filmes WHERE genero = "Ação" and ano_lancamento = 2016
-- 9. Eu quero saber quais os filmes do batman e quais os diretores
	SELECT diretor, titulo FROM filmes WHERE titulo like "%Batman%"
-- 10. Eu quero saber quais os filmes de terror e drama lançado entre 1980 e 2002
	SELECT * FROM filmes WHERE genero in ("Terror","Drama") AND ano_lancamento BETWEEN 1980 and 2002 ORDER by ano_lancamento
-- 11. Eu quero Saber quantos filmes foram lançados em 1999
	SELECT count(titulo) as total_filmes FROM filmes WHERE ano_lancamento = 1999
-- 12. Eu quero saber quantos filmes tem o diretor Quentin Tarantino
	SELECT count(titulo) as total_filmes FROM filmes WHERE diretor = "Quentin Tarantino"
-- 13. Eu quero saber quais os filmes do James Cameron e quais os generos deles
	SELECT titulo, genero FROM filmes WHERE diretor = "James Cameron"
-- 14. Por fim vamos adiconar as informações do seu filme favorito na tabela.
	INSERT INTO filmes (titulo, genero,ano_lancamento,duracao_minutos,diretor,nota_imdb) VALUES
	('Madacascar 3','Animação',2012, 93,'Tom McGrath, Eric Darnell, Conrad Verson', 6.8)
-- 15. Vamos adiconar as informações do filme que o professor odeia.
	INSERT INTO filmes (titulo,genero,ano_lancamento, duracao_minutos,diretor,nota_imdb) VALUES
	('Homen-Aranha: Longe de Casa', 'Ação', 2019,130, 'Jon Watts',7.4)
-- 16. Vamos deletar esse filme que o professor detesta.
	DELETE FROM filmes WHERE id = 103
	SELECT * FROM filmes ORDER by id DESC


