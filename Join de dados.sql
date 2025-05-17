-- 1.Quais músicos pertencem a cada orquestra?
SELECT
    o.nome AS NomeOrquestra,
    m.nome AS NomeMusico
FROM
    Orquestra o
JOIN
    Musico m ON o.idOrquestra = m.Orquestra_idOrquestra
ORDER BY
    o.nome, m.nome;

-- 2.Quais músicos tocam mais de 3 instrumentos?    
SELECT
    m.nome AS NomeMusico,
    COUNT(mhf.FuncaoDoMusico_idFuncao) AS NumeroDeInstrumentos
FROM
    Musico m
JOIN
    Musico_has_FuncaoDoMusico mhf ON m.idMusico = mhf.Musico_idMusico
GROUP BY
    m.idMusico, m.nome
HAVING
    COUNT(mhf.FuncaoDoMusico_idFuncao) > 3;

-- 3.Qual a função mais comum entre os músicos?
SELECT
    nome AS NomeFuncao,
    COUNT(*) AS NumeroDeOcorrencias
FROM
    FuncaoDoMusico
GROUP BY
    nome
ORDER BY
    NumeroDeOcorrencias DESC
LIMIT 1;
-- 4.Quais musicos tem mais de 40 anos?
SELECT nome, YEAR(CURDATE()) - YEAR(dataNasc) AS idade
FROM Musico
WHERE YEAR(CURDATE()) - YEAR(dataNasc) > 40;
-- 5.Lista de sinfonias com compositores e orquestra
SELECT s.nome AS Sinfonia, s.compositor, o.nome AS Orquestra
FROM Sinfonia s
JOIN Orquestra o ON s.Orquestra_idOrquestra = o.idOrquestra;
-- 6.Quais os endereços dos musicos?
SELECT m.nome, e.rua, e.numero, e.bairro, e.estado, e.CEP
FROM Musico m
JOIN Endereco e ON m.idMusico = e.Musico_idMusico;
-- 7.Quais telefones dos musicos?
SELECT m.nome AS Musico, t.numero AS Telefone
FROM Musico m
JOIN Telefone t ON m.idMusico = t.Musico_idMusico;
-- 8.Quais instrumentos cada musico toca?
SELECT m.nome AS Musico, i.nome AS Instrumento
FROM Musico m
JOIN Instrumento i ON m.idMusico = i.Musico_idMusico;
-- 9.Quais as funçoes em cada sinfonia?
SELECT s.nome AS Sinfonia, f.nome AS Funcao
FROM Sinfonia s
JOIN Sinfonia_has_FuncaoDoMusico sf ON s.idSinfonia = sf.Sinfonia_idSinfonia
JOIN FuncaoDoMusico f ON sf.FuncaoDoMusico_idFuncao = f.idFuncao;
-- 10.Quais musicos tocam mais de um instrumento?
SELECT m.nome, COUNT(i.idInstrumento) AS QtdeInstrumentos
FROM Musico m
JOIN Instrumento i ON m.idMusico = i.Musico_idMusico
GROUP BY m.idMusico
HAVING COUNT(i.idInstrumento) > 1;
-- 11.Qual o numero de musicos por orquestra?
SELECT o.nome AS Orquestra, COUNT(m.idMusico) AS QtdeMusicos
FROM Orquestra o
LEFT JOIN Musico m ON o.idOrquestra = m.Orquestra_idOrquestra
GROUP BY o.idOrquestra;
-- 12.Quais sinfonias foram criadas antes dos anos 2000?
SELECT nome, dataCriacao
FROM Sinfonia
WHERE dataCriacao < '2000-01-01';
-- 13.Lista de orquestras e seus respectivos endereços
SELECT o.nome AS Orquestra, e.rua, e.numero, e.bairro, e.estado
FROM Orquestra o
JOIN Endereco e ON o.idOrquestra = e.Orquestra_idOrquestra
WHERE e.Musico_idMusico IS NULL;
-- 14.Quais intrumentos nao estao associados a nenhum musico?
SELECT nome
FROM Instrumento
WHERE Musico_idMusico IS NULL;
-- 15.Qual o numero total de sinfonias por orquestra?
SELECT o.nome AS Orquestra, COUNT(s.idSinfonia) AS QtdeSinfonias
FROM Orquestra o
LEFT JOIN Sinfonia s ON o.idOrquestra = s.Orquestra_idOrquestra
GROUP BY o.idOrquestra;
-- 16.Quais musicos tem mais de uma funcao?
SELECT m.nome, COUNT(mf.FuncaoDoMusico_idFuncao) AS QtdeFuncoes
FROM Musico m
JOIN Musico_has_FuncaoDoMusico mf ON m.idMusico = mf.Musico_idMusico
GROUP BY m.idMusico
HAVING COUNT(mf.FuncaoDoMusico_idFuncao) > 1;
-- 17.Quais sinfonias tem de 5 funçoes?
SELECT s.nome, COUNT(sf.FuncaoDoMusico_idFuncao) AS QtdeFuncoes
FROM Sinfonia s
JOIN Sinfonia_has_FuncaoDoMusico sf ON s.idSinfonia = sf.Sinfonia_idSinfonia
GROUP BY s.idSinfonia
HAVING COUNT(sf.FuncaoDoMusico_idFuncao) > 5;
-- 18.Músicos com o mesmo nome, mas identidades diferentes.
SELECT m1.idMusico, m1.nome, m1.identidade
FROM Musico m1
JOIN Musico m2 
  ON m1.nome = m2.nome 
  AND m1.identidade <> m2.identidade
  AND m1.idMusico < m2.idMusico
ORDER BY m1.nome;
-- 19. Média de idade dos músicos por orquestra.
SELECT 
  o.nome AS Orquestra,
  ROUND(AVG(TIMESTAMPDIFF(YEAR, m.dataNasc, CURDATE())), 2) AS Media_Idade
FROM Musico m
JOIN Orquestra o ON m.Orquestra_idOrquestra = o.idOrquestra
GROUP BY o.idOrquestra, o.nome
ORDER BY Media_Idade DESC;
-- 20. Quais músicos tocam os mesmos instrumentos em diferentes orquestras?
SELECT 
  i1.nome AS Nome_Instrumento,
  m1.nome AS Musico1,
  o1.nome AS Orquestra1,
  m2.nome AS Musico2,
  o2.nome AS Orquestra2
FROM Instrumento i1
JOIN Musico m1 ON i1.Musico_idMusico = m1.idMusico
JOIN Orquestra o1 ON m1.Orquestra_idOrquestra = o1.idOrquestra

JOIN Instrumento i2 ON i1.nome = i2.nome AND i1.idInstrumento <> i2.idInstrumento
JOIN Musico m2 ON i2.Musico_idMusico = m2.idMusico
JOIN Orquestra o2 ON m2.Orquestra_idOrquestra = o2.idOrquestra

WHERE m1.idMusico <> m2.idMusico
  AND o1.idOrquestra <> o2.idOrquestra
ORDER BY Nome_Instrumento, Musico1, Musico2;

