-- Remover tabelas de relacionamento (muitos-para-muitos)
DROP TABLE IF EXISTS EscolaDeMusica.Musico_has_FuncaoDoMusico;
DROP TABLE IF EXISTS EscolaDeMusica.Sinfonia_has_FuncaoDoMusico;

-- Remover tabelas que dependem de outras
DROP TABLE IF EXISTS EscolaDeMusica.FuncaoDoMusico;
DROP TABLE IF EXISTS EscolaDeMusica.Instrumento;
DROP TABLE IF EXISTS EscolaDeMusica.Telefone;
DROP TABLE IF EXISTS EscolaDeMusica.Endereco;
DROP TABLE IF EXISTS EscolaDeMusica.Sinfonia;
DROP TABLE IF EXISTS EscolaDeMusica.Musico;

-- Remover a tabela que não tem dependências diretas neste grupo
DROP TABLE IF EXISTS EscolaDeMusica.Orquestra;