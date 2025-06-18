USE EscolaDeMusica;
DELIMITER $$

-- 1. Trigger: Impede INSERT de músico com data de nascimento futura
CREATE TRIGGER trg_prevent_future_birthdate
BEFORE INSERT ON Musico
FOR EACH ROW
BEGIN
  IF NEW.dataNasc > CURDATE() THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Data de nascimento inválida: está no futuro.';
  END IF;
END$$

-- 2. Trigger: Loga criação de sinfonias em tabela de auditoria
CREATE TABLE IF NOT EXISTS LogSinfonia (
  idLog INT AUTO_INCREMENT PRIMARY KEY,
  nomeSinfonia VARCHAR(45),
  compositor VARCHAR(45),
  dataCriacaoLog DATETIME
);

CREATE TRIGGER trg_log_sinfonia_insert
AFTER INSERT ON Sinfonia
FOR EACH ROW
BEGIN
  INSERT INTO LogSinfonia (nomeSinfonia, compositor, dataCriacaoLog)
  VALUES (NEW.nome, NEW.compositor, NOW());
END$$

-- 3. Trigger: Registra backup do músico antes de ser excluído
CREATE TABLE IF NOT EXISTS MusicoBackup (
  idMusico INT,
  nome VARCHAR(45),
  identidade VARCHAR(14),
  dataExclusao DATETIME
);

CREATE TRIGGER trg_backup_musico_delete
BEFORE DELETE ON Musico
FOR EACH ROW
BEGIN
  INSERT INTO MusicoBackup (idMusico, nome, identidade, dataExclusao)
  VALUES (OLD.idMusico, OLD.nome, OLD.identidade, NOW());
END$$

-- 4. Trigger: Autoatribui 'Brasil' como país da orquestra se NULL
CREATE TRIGGER trg_default_pais_orquestra
BEFORE INSERT ON Orquestra
FOR EACH ROW
BEGIN
  IF NEW.pais IS NULL OR NEW.pais = '' THEN
    SET NEW.pais = 'Brasil';
  END IF;
END$$

-- 5. Trigger: Previne duplicidade de identidade de músico
CREATE TRIGGER trg_prevent_duplicate_identidade
BEFORE INSERT ON Musico
FOR EACH ROW
BEGIN
  IF EXISTS (
    SELECT 1 FROM Musico WHERE identidade = NEW.identidade
  ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Identidade já cadastrada para outro músico.';
  END IF;
END$$

-- 6. Trigger: Atualiza tabela auxiliar com total de músicos por orquestra
CREATE TABLE IF NOT EXISTS OrquestraResumo (
  idOrquestra INT PRIMARY KEY,
  totalMusicos INT DEFAULT 0
);

-- Gatilho de insert
CREATE TRIGGER trg_update_resumo_insert
AFTER INSERT ON Musico
FOR EACH ROW
BEGIN
  INSERT INTO OrquestraResumo (idOrquestra, totalMusicos)
  VALUES (NEW.Orquestra_idOrquestra, 1)
  ON DUPLICATE KEY UPDATE totalMusicos = totalMusicos + 1;
END$$

-- Gatilho de delete
CREATE TRIGGER trg_update_resumo_delete
AFTER DELETE ON Musico
FOR EACH ROW
BEGIN
  UPDATE OrquestraResumo
  SET totalMusicos = totalMusicos - 1
  WHERE idOrquestra = OLD.Orquestra_idOrquestra;
END$$

DELIMITER ;
