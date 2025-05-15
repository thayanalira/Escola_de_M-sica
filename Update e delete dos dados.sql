UPDATE musico
SET nome = 'Alexandre Guimarães'
WHERE idMusico = 25;

UPDATE orquestra
SET pais = 'Alemanha'
WHERE idOrquestra = 10;

DELETE FROM musico
WHERE Orquestra_idOrquestra IS NULL;

DELETE FROM Sinfonia
WHERE dataCriacao < '1900-01-01';

UPDATE Endereco
SET complemento = 'Sem complemento'
WHERE complemento IS NULL;