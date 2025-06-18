USE EscolaDeMusica;
DELIMITER $$

-- 1. Procedure: Adiciona novo músico com instrumento e telefone
CREATE PROCEDURE sp_adicionar_musico_completo (
    IN p_nome VARCHAR(45),
    IN p_dataNasc DATE,
    IN p_identidade VARCHAR(14),
    IN p_nacionalidade VARCHAR(14),
    IN p_idOrquestra INT,
    IN p_instrumento VARCHAR(45),
    IN p_telefone VARCHAR(45)
)
BEGIN
    DECLARE idM INT;
    DECLARE idI INT;

    INSERT INTO Musico (nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra)
    VALUES (p_nome, p_dataNasc, p_identidade, p_nacionalidade, p_idOrquestra);

    SET idM = LAST_INSERT_ID();

    INSERT INTO Instrumento (nome, Musico_idMusico)
    VALUES (p_instrumento, idM);

    SET idI = LAST_INSERT_ID();

    INSERT INTO Telefone (numero, Musico_idMusico)
    VALUES (p_telefone, idM);

    SELECT idM AS novo_musico_id, idI AS novo_instrumento_id;
END$$

-- 2. Procedure: Atualiza função de um músico
CREATE PROCEDURE sp_atualizar_funcao_musico (
    IN p_idMusico INT,
    IN p_nova_funcao VARCHAR(45)
)
BEGIN
    DECLARE idFuncaoAtual INT;
    
    SELECT MF.FuncaoDoMusico_idFuncao INTO idFuncaoAtual
    FROM Musico_has_FuncaoDoMusico MF
    WHERE MF.Musico_idMusico = p_idMusico
    LIMIT 1;

    UPDATE FuncaoDoMusico
    SET nome = p_nova_funcao
    WHERE idFuncao = idFuncaoAtual;

    SELECT M.nome, F.nome AS funcao_atualizada
    FROM Musico M
    JOIN Musico_has_FuncaoDoMusico MF ON MF.Musico_idMusico = M.idMusico
    JOIN FuncaoDoMusico F ON F.idFuncao = MF.FuncaoDoMusico_idFuncao
    WHERE M.idMusico = p_idMusico;
END$$

-- 3. Procedure: Excluir músico e dados relacionados
CREATE PROCEDURE sp_excluir_musico_completo (
    IN p_idMusico INT
)
BEGIN
    DELETE FROM Telefone WHERE Musico_idMusico = p_idMusico;
    DELETE FROM Endereco WHERE Musico_idMusico = p_idMusico;
    DELETE FROM Musico_has_FuncaoDoMusico WHERE Musico_idMusico = p_idMusico;
    DELETE FROM Instrumento WHERE Musico_idMusico = p_idMusico;
    DELETE FROM Musico WHERE idMusico = p_idMusico;
END$$

-- 4. Procedure: Lista músicos por orquestra e instrumento
CREATE PROCEDURE sp_musicos_por_orquestra_instrumento (
    IN p_orquestra_id INT
)
BEGIN
    SELECT M.nome AS musico, I.nome AS instrumento, O.nome AS orquestra
    FROM Musico M
    JOIN Orquestra O ON O.idOrquestra = M.Orquestra_idOrquestra
    LEFT JOIN Instrumento I ON I.Musico_idMusico = M.idMusico
    WHERE M.Orquestra_idOrquestra = p_orquestra_id;
END$$

-- 5. Procedure: Cadastrar nova sinfonia e associar a orquestra
CREATE PROCEDURE sp_nova_sinfonia (
    IN p_nome VARCHAR(45),
    IN p_compositor VARCHAR(45),
    IN p_dataCriacao DATE,
    IN p_idOrquestra INT
)
BEGIN
    INSERT INTO Sinfonia (idSinfonia, nome, compositor, dataCriacao, Orquestra_idOrquestra)
    VALUES (NULL, p_nome, p_compositor, p_dataCriacao, p_idOrquestra);

    SELECT * FROM Sinfonia
    WHERE nome = p_nome AND compositor = p_compositor;
END$$

-- 6. Procedure: Relatório completo do músico
CREATE PROCEDURE sp_detalhes_musico (
    IN p_idMusico INT
)
BEGIN
    SELECT * FROM Musico WHERE idMusico = p_idMusico;

    SELECT * FROM Endereco WHERE Musico_idMusico = p_idMusico;

    SELECT * FROM Telefone WHERE Musico_idMusico = p_idMusico;

    SELECT F.nome AS funcao, I.nome AS instrumento
    FROM Musico_has_FuncaoDoMusico MF
    JOIN FuncaoDoMusico F ON F.idFuncao = MF.FuncaoDoMusico_idFuncao
    JOIN Instrumento I ON I.idInstrumento = F.Instrumento_idInstrumento
    WHERE MF.Musico_idMusico = p_idMusico;
END$$

-- 7. Procedure: Adiciona endereço para orquestra
CREATE PROCEDURE sp_adicionar_endereco_orquestra (
    IN p_rua VARCHAR(60),
    IN p_numero INT,
    IN p_bairro VARCHAR(20),
    IN p_estado VARCHAR(20),
    IN p_CEP VARCHAR(14),
    IN p_complemento VARCHAR(45),
    IN p_idOrquestra INT
)
BEGIN
    INSERT INTO Endereco (
        rua, numero, bairro, estado, CEP, complemento, Orquestra_idOrquestra
    ) VALUES (
        p_rua, p_numero, p_bairro, p_estado, p_CEP, p_complemento, p_idOrquestra
    );

    SELECT * FROM Endereco
    WHERE Orquestra_idOrquestra = p_idOrquestra;
END$$

-- 8. Procedure: Atualizar telefone do músico
CREATE PROCEDURE sp_atualizar_telefone (
    IN p_idMusico INT,
    IN p_novoTelefone VARCHAR(45)
)
BEGIN
    UPDATE Telefone
    SET numero = p_novoTelefone
    WHERE Musico_idMusico = p_idMusico;

    SELECT M.nome, T.numero
    FROM Musico M
    JOIN Telefone T ON T.Musico_idMusico = M.idMusico
    WHERE M.idMusico = p_idMusico;
END$$

DELIMITER ;
