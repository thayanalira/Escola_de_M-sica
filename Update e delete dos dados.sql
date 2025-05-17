-- 1
UPDATE musico
SET nome = 'Alexandre Guimarães'
WHERE idMusico = 25;
-- 2
UPDATE orquestra
SET pais = 'Alemanha'
WHERE idOrquestra = 10;
-- 3
DELETE FROM musico
WHERE Orquestra_idOrquestra IS NULL;
-- 4
DELETE FROM Sinfonia
WHERE dataCriacao < '1900-01-01';
-- 5
UPDATE Endereco
SET complemento = 'Sem complemento'
WHERE complemento IS NULL;
-- 6
UPDATE Instrumento
SET nome = 'Viola'
WHERE idInstrumento = '110';
-- 7
UPDATE Musico
SET nacionalidade = (
    SELECT pais
    FROM Orquestra
    WHERE Orquestra.idOrquestra = Musico.Orquestra_idOrquestra
)
WHERE Musico.Orquestra_idOrquestra IN (SELECT idOrquestra FROM Orquestra);
-- 8
UPDATE Orquestra
SET nome = UPPER(nome);
-- 9
DELETE FROM Musico
WHERE idMusico IN (
    SELECT Musico_idMusico
    FROM Musico_has_FuncaoDoMusico
    GROUP BY Musico_idMusico
    HAVING COUNT(FuncaoDoMusico_idFuncao) > 3
);
-- 10
DELETE FROM Orquestra
WHERE idOrquestra NOT IN (
    SELECT DISTINCT Orquestra_idOrquestra
    FROM Musico
    WHERE Orquestra_idOrquestra IS NOT NULL
);
-- 11
DELETE FROM Instrumento
WHERE idInstrumento NOT IN (
    SELECT DISTINCT Instrumento_idInstrumento
    FROM FuncaoDoMusico
    WHERE Instrumento_idInstrumento IS NOT NULL
)
AND idInstrumento NOT IN (
    SELECT DISTINCT idInstrumento
    FROM Instrumento
    WHERE Musico_idMusico IS NOT NULL
);
-- 12
DELETE FROM Musico
WHERE idMusico NOT IN (
  SELECT DISTINCT Musico_idMusico FROM Instrumento
);
-- 13
UPDATE Endereco
SET CEP = LPAD(CEP, 8, '0')
WHERE LENGTH(CEP) < 8;
-- 14
DELETE E1 FROM Endereco E1
JOIN Endereco E2 
  ON E1.idEndereco > E2.idEndereco 
 AND E1.rua = E2.rua 
 AND E1.numero = E2.numero
 AND E1.bairro = E2.bairro 
 AND E1.estado = E2.estado;
-- 15
UPDATE Orquestra
SET pais = 'Internacional'
WHERE dataCriacao > '2000-01-01';
-- 16
DELETE FROM FuncaoDoMusico
WHERE nome IS NULL OR nome = '';
-- 17
UPDATE Musico
SET nome = UPPER(nome);
-- 18
UPDATE Sinfonia
SET compositor = 'Desconhecido'
WHERE compositor IS NULL OR compositor = '';
-- 19
DELETE M1 FROM Musico_has_FuncaoDoMusico M1
JOIN Musico_has_FuncaoDoMusico M2 
  ON M1.Musico_idMusico = M2.Musico_idMusico 
 AND M1.FuncaoDoMusico_idFuncao = M2.FuncaoDoMusico_idFuncao
 AND M1 != M2;
-- 20
UPDATE Orquestra
SET nome = CONCAT('Orq. ', nome)
WHERE nome NOT LIKE 'Orq.%';
