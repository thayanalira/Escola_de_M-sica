USE EscolaDeMusica;

-- 1. Testar fn_idade_musico
-- Supondo que exista um músico com idMusico = 1
SELECT fn_idade_musico(1) AS idade_do_musico;

-- 2. Testar fn_total_musicos_orquestra
-- Supondo que exista uma orquestra com idOrquestra = 1
SELECT fn_total_musicos_orquestra(1) AS total_musicos_na_orquestra;

-- 3. Testar fn_total_instrumentos_por_musico
-- Supondo que exista um músico com idMusico = 1
SELECT fn_total_instrumentos_por_musico(1) AS instrumentos_do_musico;

-- 4. Testar fn_total_funcoes_em_sinfonia
-- Supondo que exista uma sinfonia com idSinfonia = 1
SELECT fn_total_funcoes_em_sinfonia(1) AS total_funcoes_sinfonia;

-- 5. Testar fn_verifica_telefone_musico
-- Supondo que exista um músico com idMusico = 1 e telefone cadastrado
SELECT fn_verifica_telefone_musico(1) AS telefone_do_musico;

-- 6. Testar fn_nome_completo_sinfonia
-- Supondo que exista uma sinfonia com idSinfonia = 1
SELECT fn_nome_completo_sinfonia(1) AS nome_completo_sinfonia;
