-- Active: 1680804391177@@127.0.0.1@3306
-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

SELECT * FROM pokemons WHERE speed > 60;

SELECT * FROM pokemons WHERE attack >= 60 AND special_attack >= 60;

SELECT * FROM pokemons WHERE name LIKE "%saur";

-- Prática guiada 2

SELECT * FROM pokemons;

-- MÉDIA SIMPLES DA COLUNA"HP"; 
SELECT AVG(hp) AS MédiaDaColunaHp FROM pokemons;

--BUSCA DO NÚMERO DE LINHAS DA TABELA;
SELECT COUNT(*) FROM pokemons;

--RENOMEANDO O NOME PARA MELHOR ENTENDIMENTO DO RESULTADO;
SELECT COUNT(*) AS numeroLinhasDaTAbela FROM pokemons;

--soma de uma coluna;
SELECT SUM(HP) AS somaDaColunaHp FROM pokemons;

-- PRÁTICA GUIADA 3

-- ORDENAR PELA COLUNA DE DEFENSE NA ORDEM DECRESCENTE;
SELECT * FROM pokemons ORDER BY defense DESC;

-- ORDEM CRESCENTE;
SELECT * FROM pokemons ORDER BY defense ASC;

-- SEPARA OS GRUPOS E CONTA A QUANTIDADE DE LINHAS EM CADA GRUPO;
SELECT COUNT(*) AS qtsPokemons, type FROM pokemons GROUP BY type;

-- MOSTRAR 3 LINHAS A PARTIR DA QUINTA LINHA;
SELECT * FROM pokemons LIMIT 3 OFFSET 4;

SELECT * FROM pokemons WHERE type="fire" OR type="grass" ORDER BY attack ASC LIMIT 3 OFFSET 2;

