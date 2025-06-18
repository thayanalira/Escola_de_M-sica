USE EscolaDeMusica;

-- 1. View: Músicos com suas orquestras
CREATE OR REPLACE VIEW vw_musicos_orquestras AS
SELECT M.nome AS musico, O.nome AS orquestra
FROM Musico M
JOIN Orquestra O ON M.Orquestra_idOrquestra = O.idOrquestra;

-- 2. View: Músicos com seus instrumentos
CREATE OR REPLACE VIEW vw_musicos_instrumentos AS
SELECT M.nome AS musico, I.nome AS instrumento
FROM Musico M
JOIN Instrumento I ON I.Musico_idMusico = M.idMusico;

-- 3. View: Músico, função e instrumento
CREATE OR REPLACE VIEW vw_funcao_musico_instrumento AS
SELECT M.nome AS musico, F.nome AS funcao, I.nome AS instrumento
FROM Musico M
JOIN Musico_has_FuncaoDoMusico MF ON M.idMusico = MF.Musico_idMusico
JOIN FuncaoDoMusico F ON F.idFuncao = MF.FuncaoDoMusico_idFuncao
JOIN Instrumento I ON I.idInstrumento = F.Instrumento_idInstrumento;

-- 4. View: Sinfonias com orquestras
CREATE OR REPLACE VIEW vw_sinfonias_orquestras AS
SELECT S.nome AS sinfonia, S.compositor, O.nome AS orquestra
FROM Sinfonia S
LEFT JOIN Orquestra O ON S.Orquestra_idOrquestra = O.idOrquestra;

-- 5. View: Telefones dos músicos
CREATE OR REPLACE VIEW vw_telefones_musicos AS
SELECT M.nome AS musico, T.numero AS telefone
FROM Musico M
JOIN Telefone T ON T.Musico_idMusico = M.idMusico;

-- 6. View: Endereços de músicos
CREATE OR REPLACE VIEW vw_enderecos_musicos AS
SELECT M.nome AS musico, E.rua, E.numero, E.bairro, E.estado, E.CEP
FROM Musico M
JOIN Endereco E ON E.Musico_idMusico = M.idMusico;

-- 7. View: Funções dos músicos por sinfonia
CREATE OR REPLACE VIEW vw_funcao_sinfonia_musico AS
SELECT S.nome AS sinfonia, M.nome AS musico, F.nome AS funcao
FROM Sinfonia S
JOIN Sinfonia_has_FuncaoDoMusico SF ON SF.Sinfonia_idSinfonia = S.idSinfonia
JOIN FuncaoDoMusico F ON F.idFuncao = SF.FuncaoDoMusico_idFuncao
JOIN Musico_has_FuncaoDoMusico MF ON MF.FuncaoDoMusico_idFuncao = F.idFuncao
JOIN Musico M ON M.idMusico = MF.Musico_idMusico;

-- 8. View: Quantidade de músicos por orquestra
CREATE OR REPLACE VIEW vw_qtd_musicos_por_orquestra AS
SELECT O.nome AS orquestra, COUNT(M.idMusico) AS total_musicos
FROM Orquestra O
LEFT JOIN Musico M ON M.Orquestra_idOrquestra = O.idOrquestra
GROUP BY O.idOrquestra;

-- 9. View: Músicos com mais de uma função
CREATE OR REPLACE VIEW vw_musicos_multifuncoes AS
SELECT M.idMusico, M.nome, COUNT(MF.FuncaoDoMusico_idFuncao) AS total_funcoes
FROM Musico M
JOIN Musico_has_FuncaoDoMusico MF ON M.idMusico = MF.Musico_idMusico
GROUP BY M.idMusico
HAVING total_funcoes > 1;

-- 10. View: Instrumentos usados por sinfonia
CREATE OR REPLACE VIEW vw_instrumentos_por_sinfonia AS
SELECT DISTINCT S.nome AS sinfonia, I.nome AS instrumento
FROM Sinfonia S
JOIN Sinfonia_has_FuncaoDoMusico SF ON S.idSinfonia = SF.Sinfonia_idSinfonia
JOIN FuncaoDoMusico F ON F.idFuncao = SF.FuncaoDoMusico_idFuncao
JOIN Instrumento I ON I.idInstrumento = F.Instrumento_idInstrumento;
