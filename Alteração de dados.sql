-- 1.Adicionar coluna de email a musico
ALTER TABLE musico
ADD COLUMN email VARCHAR(100) NULL;

-- 2.Alterar nome de instrumento
ALTER TABLE Instrumento
MODIFY COLUMN nome VARCHAR(60) NOT NULL;

-- 3.Alterar identidade de musico
ALTER TABLE Musico
ADD CONSTRAINT unique_identidade UNIQUE (identidade);

-- 4.Alterar tamanho do nome em Orquestra
ALTER TABLE Orquestra
MODIFY COLUMN nome VARCHAR(100);

-- 5.Adicionar uma coluna "ativo" com valor padrão na tabela Orquestra
ALTER TABLE Orquestra
ADD COLUMN ativo BOOLEAN DEFAULT TRUE;

-- 6. Remover a coluna "complemento" da tabela Endereco
ALTER TABLE Endereco
DROP COLUMN complemento;

-- 7.Adicionar uma coluna "genero" na tabela Musico
ALTER TABLE Musico
ADD COLUMN genero ENUM('Masculino', 'Feminino', 'Outro') AFTER nacionalidade;

-- 8.Renomear a coluna "dataFuncao" para "dataInicio" na tabela FuncaoDoMusico
ALTER TABLE FuncaoDoMusico
CHANGE COLUMN dataFuncao dataInicio DATE;

-- 9.Adicionar índice na coluna "nome" da tabela Instrumento para otimizar busca
ALTER TABLE Instrumento
ADD INDEX idx_nome_instrumento (nome);

-- 10.Adicionar restrição de valor à coluna "numero" da tabela Endereco 
ALTER TABLE Endereco
ADD CONSTRAINT chk_numero_positive CHECK (numero > 0);
