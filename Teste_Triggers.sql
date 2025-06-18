USE EscolaDeMusica;

-- 🔁 Reset das tabelas auxiliares (caso queira repetir os testes)
DELETE FROM LogSinfonia;
DELETE FROM MusicoBackup;
DELETE FROM OrquestraResumo;

-- 1. ✅ Teste da Trigger: impedir data de nascimento futura
-- Esperado: erro de validação
-- DESCOMENTE PARA VER O ERRO:
-- INSERT INTO Musico (idMusico, nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra)
-- VALUES (100, 'Futuro Filho', '2100-01-01', '00011122233', 'Brasileira', 1);

-- 2. ✅ Teste da Trigger: auditoria de sinfonias
INSERT INTO Sinfonia (idSinfonia, nome, compositor, dataCriacao, Orquestra_idOrquestra)
VALUES (101, 'Sinfonia do Silêncio', 'Mozart', '2023-01-01', 1);
SELECT * FROM LogSinfonia;

-- 3. ✅ Teste da Trigger: backup ao excluir músico
INSERT INTO Musico (idMusico, nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra)
VALUES (200, 'Carlos Souza', '1990-03-12', '12345678999', 'Brasileira', 1);
DELETE FROM Musico WHERE idMusico = 200;
SELECT * FROM MusicoBackup;

-- 4. ✅ Teste da Trigger: país padrão 'Brasil' para orquestras
INSERT INTO Orquestra (idOrquestra, dataCriacao, nome, pais)
VALUES (999, '2020-01-01', 'Orq. Teste', NULL);
SELECT * FROM Orquestra WHERE idOrquestra = 999;

-- 5. ✅ Teste da Trigger: impedir identidade duplicada
-- Esperado: erro ao tentar inserir com identidade já existente
-- Primeiro insert válido:
INSERT INTO Musico (idMusico, nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra)
VALUES (201, 'Ana Clara', '1994-06-22', '44455566677', 'Brasileira', 1);

-- Segundo insert com mesma identidade (causará erro):
-- DESCOMENTE PARA TESTAR ERRO:
-- INSERT INTO Musico (idMusico, nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra)
-- VALUES (202, 'Outra Pessoa', '1995-07-11', '44455566677', 'Brasileira', 1);

-- 6. ✅ Teste da Trigger: atualização da tabela resumo por orquestra
-- Inserção: soma +1 em OrquestraResumo
INSERT INTO Musico (idMusico, nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra)
VALUES (203, 'Resumo Silva', '1985-04-30', '88877766655', 'Brasileira', 999);

-- Exclusão: subtrai -1 da mesma orquestra
DELETE FROM Musico WHERE idMusico = 203;

SELECT * FROM OrquestraResumo;
