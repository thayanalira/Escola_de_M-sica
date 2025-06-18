USE EscolaDeMusica;

-- 1. Testar sp_adicionar_musico_completo
CALL sp_adicionar_musico_completo(
    'Lucas Almeida', '1995-08-20', '12345678901', 'Brasileira',
    1, 'Violino', '11999999999'
);

-- 2. Testar sp_atualizar_funcao_musico
-- Supondo que o músico 1 já esteja vinculado a uma função
CALL sp_atualizar_funcao_musico(1, 'Solista Principal');

-- 3. Testar sp_excluir_musico_completo
-- Supondo que o músico 2 exista
CALL sp_excluir_musico_completo(2);

-- 4. Testar sp_musicos_por_orquestra_instrumento
CALL sp_musicos_por_orquestra_instrumento(1);

-- 5. Testar sp_nova_sinfonia
CALL sp_nova_sinfonia(
    'Sinfonia da Luz', 'Beethoven', '2020-05-10', 1
);

-- 6. Testar sp_detalhes_musico
CALL sp_detalhes_musico(1);

-- 7. Testar sp_adicionar_endereco_orquestra
CALL sp_adicionar_endereco_orquestra(
    'Rua das Flores', 123, 'Centro', 'SP',
    '12345-678', 'Prédio Azul', 1
);

-- 8. Testar sp_atualizar_telefone
CALL sp_atualizar_telefone(1, '11988888888');
