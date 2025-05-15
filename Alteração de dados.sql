ALTER TABLE musico
ADD COLUMN email VARCHAR(100) NULL;

ALTER TABLE Instrumento
MODIFY COLUMN nome VARCHAR(60) NOT NULL;

ALTER TABLE Musico
ADD CONSTRAINT unique_identidade UNIQUE (identidade);

-- Verificar erro
ALTER TABLE Sinfonia
ADD CONSTRAINT check_dataCriacao_futura CHECK (dataCriacao <= CURDATE());