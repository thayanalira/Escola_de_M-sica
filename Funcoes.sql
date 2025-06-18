USE EscolaDeMusica;

-- 1. Função para calcular a idade do músico
DELIMITER //
CREATE FUNCTION fn_idade_musico(id INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE idade INT;
  SELECT TIMESTAMPDIFF(YEAR, dataNasc, CURDATE()) INTO idade
  FROM Musico WHERE idMusico = id;
  RETURN idade;
END;
//
DELIMITER ;

-- 2. Função que retorna o total de músicos em uma orquestra
DELIMITER //
CREATE FUNCTION fn_total_musicos_orquestra(idOrq INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM Musico
  WHERE Orquestra_idOrquestra = idOrq;
  RETURN total;
END;
//
DELIMITER ;

-- 3. Função que retorna a quantidade de instrumentos associados a um músico
DELIMITER //
CREATE FUNCTION fn_total_instrumentos_por_musico(idMus INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM Instrumento
  WHERE Musico_idMusico = idMus;
  RETURN total;
END;
//
DELIMITER ;

-- 4. Função que retorna o total de funções em uma sinfonia
DELIMITER //
CREATE FUNCTION fn_total_funcoes_em_sinfonia(idSinf INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM Sinfonia_has_FuncaoDoMusico
  WHERE Sinfonia_idSinfonia = idSinf;
  RETURN total;
END;
//
DELIMITER ;

-- 5. Função que retorna o número de telefone de um músico
DELIMITER //
CREATE FUNCTION fn_verifica_telefone_musico(idMus INT) RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
  DECLARE num VARCHAR(45);
  SELECT numero INTO num
  FROM Telefone
  WHERE Musico_idMusico = idMus
  LIMIT 1;
  RETURN num;
END;
//
DELIMITER ;

-- 6. Função que retorna o nome completo da sinfonia com o compositor
DELIMITER //
CREATE FUNCTION fn_nome_completo_sinfonia(id INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
  DECLARE resultado VARCHAR(100);
  SELECT CONCAT(nome, ' por ', compositor) INTO resultado
  FROM Sinfonia
  WHERE idSinfonia = id;
  RETURN resultado;
END;
//
DELIMITER ;
