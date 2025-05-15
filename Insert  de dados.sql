-- Insert da tabela orquestra
INSERT INTO Orquestra (idOrquestra, dataCriacao, nome, pais) VALUES
(1, '1990-03-15', 'Orquestra Filarmônica de Viena', 'Áustria'),
(2, '1882-11-01', 'Orquestra Sinfônica de Berlim', 'Alemanha'),
(3, '1930-05-20', 'Orquestra Filarmônica de Londres', 'Reino Unido'),
(4, '1946-09-05', 'Orquestra Sinfônica de Tóquio', 'Japão'),
(5, '1928-02-14', 'Orquestra Filarmônica de Nova York', 'EUA'),
(6, '1962-07-10', 'Orquestra de Câmara da Europa', 'Suíça'),
(7, '1954-10-22', 'Orquestra Nacional da França', 'França'),
(8, '1995-04-12', 'Orquestra Jovem do Brasil', 'Brasil'),
(9, '1970-06-08', 'Orquestra Sinfônica de São Paulo', 'Brasil'),
(10, '2001-01-01', 'Orquestra Experimental de Repertório', 'Brasil'),
(11, '1985-08-30', 'Orquestra Sinfônica de Pequim', 'China'),
(12, '1918-03-10', 'Orquestra Real de Estocolmo', 'Suécia'),
(13, '1937-12-19', 'Orquestra Filarmônica de Los Angeles', 'EUA'),
(14, '2007-11-07', 'Orquestra de Câmara de Viena', 'Áustria'),
(15, '1975-09-18', 'Orquestra Sinfônica de Moscou', 'Rússia');

-- Insert da tabela musico
INSERT INTO Musico (idMusico, nome, dataNasc, identidade, nacionalidade, Orquestra_idOrquestra) VALUES
(1, 'Ana Souza', '1985-04-12', 'ID12345678901', 'Brasileira', 1),
(2, 'Carlos Mendes', '1990-08-25', 'ID23456789012', 'Brasileira', 2),
(3, 'Laura Silva', '1982-12-01', 'ID34567890123', 'Portuguesa', 3),
(4, 'Marcos Lima', '1975-09-17', 'ID45678901234', 'Brasileira', 4),
(5, 'Juliana Reis', '1993-03-08', 'ID56789012345', 'Brasileira', 5),
(6, 'Fernando Alves', '1988-07-22', 'ID67890123456', 'Brasileira', 6),
(7, 'Patrícia Rocha', '1995-01-14', 'ID78901234567', 'Brasileira', 7),
(8, 'Ricardo Torres', '1981-11-03', 'ID89012345678', 'Chileno', 8),
(9, 'Joana Prado', '1990-05-19', 'ID90123456789', 'Brasileira', 9),
(10, 'Pedro Cunha', '1979-06-21', 'ID01234567890', 'Brasileira', 10),

(11, 'Lucas Martins', '1992-08-11', 'ID12312312312', 'Brasileira', 11),
(12, 'Camila Pires', '1987-10-30', 'ID23423423423', 'Brasileira', 12),
(13, 'Thiago Costa', '1980-02-18', 'ID34534534534', 'Brasileira', 13),
(14, 'Sofia Nunes', '1991-12-27', 'ID45645645645', 'Brasileira', 14),
(15, 'Daniel Moraes', '1984-03-03', 'ID56756756756', 'Brasileira', 15),
(16, 'Aline Ribeiro', '1989-09-09', 'ID67867867867', 'Brasileira', 1),
(17, 'Eduardo Teixeira', '1994-07-05', 'ID78978978978', 'Brasileira', 2),
(18, 'Luciana Gomes', '1996-06-17', 'ID89089089089', 'Brasileira', 3),
(19, 'Bruno Ferreira', '1977-05-12', 'ID90190190190', 'Brasileira', 4),
(20, 'Tatiane Dias', '1986-01-30', 'ID01201201201', 'Brasileira', 5),

(21, 'Paulo Antunes', '1993-04-15', 'ID14725836900', 'Brasileira', 6),
(22, 'Marina Lopes', '1997-10-19', 'ID25836914700', 'Brasileira', 7),
(23, 'Gustavo Barros', '1983-02-22', 'ID36914725800', 'Brasileira', 8),
(24, 'Renata Castro', '1995-08-09', 'ID12378945600', 'Brasileira', 9),
(25, 'Vinícius Leal', '1982-11-11', 'ID98765432100', 'Brasileira', 10),
(26, 'Helena Duarte', '1990-12-31', 'ID45678912300', 'Brasileira', 11),
(27, 'Fábio Azevedo', '1978-01-16', 'ID32165498700', 'Brasileira', 12),
(28, 'Cecília Carvalho', '1986-06-03', 'ID65498732100', 'Brasileira', 13),
(29, 'Henrique Brito', '1981-04-25', 'ID78945612300', 'Brasileira', 14),
(30, 'Vanessa Neves', '1992-03-14', 'ID98732165400', 'Brasileira', 15),

(31, 'Murilo Ramos', '1994-09-23', 'ID74185296300', 'Brasileira', 1),
(32, 'Isabela Fontes', '1985-12-10', 'ID85296374100', 'Brasileira', 2),
(33, 'Rafael Amorim', '1979-07-18', 'ID96374185200', 'Brasileira', 3),
(34, 'Beatriz Leme', '1988-02-28', 'ID15975345600', 'Brasileira', 4),
(35, 'Danilo Rocha', '1991-11-07', 'ID35715945600', 'Brasileira', 5),
(36, 'Nathalia Queiroz', '1996-05-02', 'ID75315985200', 'Brasileira', 6),
(37, 'Marcelo Silva', '1980-03-29', 'ID95135745600', 'Brasileira', 7),
(38, 'Raquel Tavares', '1983-10-05', 'ID35745695100', 'Brasileira', 8),
(39, 'André Mendes', '1987-06-11', 'ID45695135700', 'Brasileira', 9),
(40, 'Cláudia Gama', '1995-01-19', 'ID65478912300', 'Brasileira', 10),

(41, 'Vitor Fagundes', '1986-12-20', 'ID32178965400', 'Brasileira', 11),
(42, 'Larissa Porto', '1992-02-03', 'ID85214796300', 'Brasileira', 12),
(43, 'João Passos', '1990-09-27', 'ID74196325800', 'Brasileira', 13),
(44, 'Débora Sena', '1984-05-15', 'ID96325874100', 'Brasileira', 14),
(45, 'Rodrigo Sales', '1993-07-31', 'ID15935745600', 'Brasileira', 15),
(46, 'Sabrina Ferraz', '1991-03-08', 'ID75395185200', 'Brasileira', 1),
(47, 'Igor Camargo', '1982-10-17', 'ID35745612300', 'Brasileira', 2),
(48, 'Lívia Barreto', '1997-04-06', 'ID65432198700', 'Brasileira', 3),
(49, 'Mateus Neri', '1989-11-25', 'ID14736925800', 'Brasileira', 4),
(50, 'Yasmin Rocha', '1994-06-13', 'ID96325814700', 'Brasileira', 5);

-- Insert da tabela sifonia
-- Orquestras com 2 sinfonias cada (IDs: 1 a 5)
INSERT INTO Sinfonia (idSinfonia, nome, compositor, dataCriacao, Orquestra_idOrquestra) VALUES
(1, 'Sinfonia da Aurora', 'Ludwig van Beethoven', '1801-03-15', 1),
(2, 'Eco das Estrelas', 'Wolfgang A. Mozart', '1785-06-20', 1),

(3, 'Maré Harmoniosa', 'Johannes Brahms', '1876-10-10', 2),
(4, 'Céu de Viena', 'Franz Schubert', '1822-11-03', 2),

(5, 'Noturno do Sul', 'Antonín Dvořák', '1893-12-28', 3),
(6, 'Brisa do Oriente', 'Claude Debussy', '1905-05-14', 3),

(7, 'Chama de Inverno', 'Pyotr Tchaikovsky', '1877-03-24', 4),
(8, 'Som da Aurora', 'Igor Stravinsky', '1910-06-25', 4),

(9, 'Encanto Andino', 'Heitor Villa-Lobos', '1930-08-17', 5),
(10, 'Ritmo das Cores', 'Maurice Ravel', '1908-09-21', 5);

-- Orquestras com 1 sinfonia cada (IDs: 6 a 15)
INSERT INTO Sinfonia (idSinfonia, nome, compositor, dataCriacao, Orquestra_idOrquestra) VALUES
(11, 'Hino da Esperança', 'Jean Sibelius', '1899-12-08', 6),
(12, 'Ventos de Praga', 'Bedřich Smetana', '1874-04-03', 7),
(13, 'Noite na Toscana', 'Ottorino Respighi', '1920-10-11', 8),
(14, 'Luz do Deserto', 'Camille Saint-Saëns', '1875-07-18', 9),
(15, 'Viagem do Herói', 'Richard Strauss', '1897-11-27', 10),
(16, 'Sombras da Floresta', 'Edward Elgar', '1900-03-22', 11),
(17, 'Ressonância Latina', 'Carlos Gomes', '1880-05-19', 12),
(18, 'Horizontes do Norte', 'Jean-Philippe Rameau', '1745-09-10', 13),
(19, 'Caminho de Fogo', 'Modest Mussorgsky', '1874-10-03', 14),
(20, 'Alvorada Paulista', 'Francisco Mignone', '1935-06-07', 15);

-- Insert tabela instrumento
-- Músicos 1 a 10: 5 instrumentos cada (total: 50)
INSERT INTO Instrumento (idInstrumento, nome, Musico_idMusico) VALUES
(1, 'Violino', 1), (2, 'Viola', 1), (3, 'Violoncelo', 1), (4, 'Contrabaixo', 1), (5, 'Harpa', 1),
(6, 'Violino', 2), (7, 'Viola', 2), (8, 'Violoncelo', 2), (9, 'Contrabaixo', 2), (10, 'Harpa', 2),
(11, 'Flauta', 3), (12, 'Oboé', 3), (13, 'Clarinete', 3), (14, 'Fagote', 3), (15, 'Trompa', 3),
(16, 'Flauta', 4), (17, 'Oboé', 4), (18, 'Clarinete', 4), (19, 'Fagote', 4), (20, 'Trompa', 4),
(21, 'Trompete', 5), (22, 'Trombone', 5), (23, 'Tuba', 5), (24, 'Percussão', 5), (25, 'Tímpano', 5),
(26, 'Trompete', 6), (27, 'Trombone', 6), (28, 'Tuba', 6), (29, 'Percussão', 6), (30, 'Tímpano', 6),
(31, 'Piano', 7), (32, 'Celesta', 7), (33, 'Címbalos', 7), (34, 'Gongo', 7), (35, 'Tambor', 7),
(36, 'Piano', 8), (37, 'Celesta', 8), (38, 'Címbalos', 8), (39, 'Gongo', 8), (40, 'Tambor', 8),
(41, 'Oboé d’amore', 9), (42, 'Clarinete Baixo', 9), (43, 'Saxofone', 9), (44, 'Corneta', 9), (45, 'Flautim', 9),
(46, 'Oboé d’amore', 10), (47, 'Clarinete Baixo', 10), (48, 'Saxofone', 10), (49, 'Corneta', 10), (50, 'Flautim', 10);

-- Músicos 11 a 20: 3 instrumentos cada (total: 30)
INSERT INTO Instrumento (idInstrumento, nome, Musico_idMusico) VALUES
(51, 'Violino', 11), (52, 'Viola', 11), (53, 'Harpa', 11),
(54, 'Flauta', 12), (55, 'Oboé', 12), (56, 'Trompa', 12),
(57, 'Trombone', 13), (58, 'Tuba', 13), (59, 'Percussão', 13),
(60, 'Piano', 14), (61, 'Celesta', 14), (62, 'Tambor', 14),
(63, 'Violoncelo', 15), (64, 'Fagote', 15), (65, 'Gongo', 15),
(66, 'Flautim', 16), (67, 'Corneta', 16), (68, 'Saxofone', 16),
(69, 'Clarinete', 17), (70, 'Címbalos', 17), (71, 'Oboé', 17),
(72, 'Tambor', 18), (73, 'Flauta', 18), (74, 'Gongo', 18),
(75, 'Violino', 19), (76, 'Piano', 19), (77, 'Harpa', 19),
(78, 'Tuba', 20), (79, 'Trompete', 20), (80, 'Tímpano', 20);

-- Músicos 21 a 30: 2 instrumentos cada (total: 20)
INSERT INTO Instrumento (idInstrumento, nome, Musico_idMusico) VALUES
(81, 'Violino', 21), (82, 'Viola', 21),
(83, 'Flauta', 22), (84, 'Oboé', 22),
(85, 'Trompa', 23), (86, 'Tuba', 23),
(87, 'Clarinete', 24), (88, 'Fagote', 24),
(89, 'Piano', 25), (90, 'Tambor', 25),
(91, 'Celesta', 26), (92, 'Címbalos', 26),
(93, 'Corneta', 27), (94, 'Saxofone', 27),
(95, 'Gongo', 28), (96, 'Tímpano', 28),
(97, 'Percussão', 29), (98, 'Trombone', 29),
(99, 'Harpa', 30), (100, 'Violoncelo', 30);

-- Músicos 31 a 45: 1 instrumento cada (total: 15)
INSERT INTO Instrumento (idInstrumento, nome, Musico_idMusico) VALUES
(101, 'Violino', 31),
(102, 'Flauta', 32),
(103, 'Trompete', 33),
(104, 'Piano', 34),
(105, 'Tímpano', 35),
(106, 'Tambor', 36),
(107, 'Harpa', 37),
(108, 'Gongo', 38),
(109, 'Saxofone', 39),
(110, 'Oboé', 40),
(111, 'Clarinete', 41),
(112, 'Celesta', 42),
(113, 'Corneta', 43),
(114, 'Címbalos', 44),
(115, 'Fagote', 45);

-- Insert tabela funcao do musico
INSERT INTO FuncaoDoMusico (idFuncao, dataFuncao, nome, Instrumento_idInstrumento) VALUES
(1, '2022-01-15', 'Solista de Violino', 1),
(2, '2022-02-10', 'Viola de Câmara', 2),
(3, '2022-03-05', 'Violoncelista', 3),
(4, '2022-04-01', 'Baixista Clássico', 4),
(5, '2022-05-20', 'Harpista Principal', 5),
(6, '2022-06-18', 'Flautista', 11),
(7, '2022-07-12', 'Oboísta', 12),
(8, '2022-08-07', 'Clarinetista', 13),
(9, '2022-09-14', 'Fagotista', 14),
(10, '2022-10-03', 'Trompista', 15),
(11, '2022-10-20', 'Trompetista', 21),
(12, '2022-11-05', 'Trombonista', 22),
(13, '2022-11-25', 'Tubista', 23),
(14, '2022-12-01', 'Percussionista', 24),
(15, '2023-01-10', 'Timpanista', 25),
(16, '2023-02-15', 'Pianista', 31),
(17, '2023-03-12', 'Celestista', 32),
(18, '2023-04-09', 'Cimbalista', 33),
(19, '2023-05-04', 'Gonguista', 34),
(20, '2023-06-11', 'Tamborista', 35),
(21, '2023-07-18', 'Cornetista', 44),
(22, '2023-08-23', 'Saxofonista', 43);

-- Insert musico_has_funcao
-- 5 funções para músicos 1 a 10
INSERT INTO Musico_has_FuncaoDoMusico (Musico_idMusico, FuncaoDoMusico_idFuncao) VALUES
(1, 1), (1, 6), (1, 14), (1, 11), (1, 15),
(2, 2), (2, 7), (2, 12), (2, 16), (2, 14),
(3, 3), (3, 8), (3, 9), (3, 13), (3, 4),
(4, 4), (4, 14), (4, 15), (4, 5), (4, 10),
(5, 5), (5, 6), (5, 16), (5, 17), (5, 18),
(6, 1), (6, 11), (6, 12), (6, 19), (6, 20),
(7, 2), (7, 7), (7, 8), (7, 9), (7, 10),
(8, 3), (8, 11), (8, 13), (8, 21), (8, 22),
(9, 4), (9, 10), (9, 15), (9, 20), (9, 5),
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5);

-- 3 funções para músicos 11 a 20
INSERT INTO Musico_has_FuncaoDoMusico (Musico_idMusico, FuncaoDoMusico_idFuncao) VALUES
(11, 1), (11, 6), (11, 11),
(12, 2), (12, 7), (12, 12),
(13, 3), (13, 8), (13, 13),
(14, 4), (14, 9), (14, 14),
(15, 5), (15, 10), (15, 15),
(16, 6), (16, 11), (16, 16),
(17, 7), (17, 12), (17, 17),
(18, 8), (18, 13), (18, 18),
(19, 9), (19, 14), (19, 19),
(20, 10), (20, 15), (20, 20);

-- 2 funções para músicos 21 a 40
INSERT INTO Musico_has_FuncaoDoMusico (Musico_idMusico, FuncaoDoMusico_idFuncao) VALUES
(21, 1), (21, 6),
(22, 2), (22, 7),
(23, 3), (23, 8),
(24, 4), (24, 9),
(25, 5), (25, 10),
(26, 6), (26, 11),
(27, 7), (27, 12),
(28, 8), (28, 13),
(29, 9), (29, 14),
(30, 10), (30, 15),
(31, 11), (31, 16),
(32, 12), (32, 17),
(33, 13), (33, 18),
(34, 14), (34, 19),
(35, 15), (35, 20),
(36, 16), (36, 21),
(37, 17), (37, 22),
(38, 1), (38, 2),
(39, 3), (39, 4),
(40, 5), (40, 6);

-- 1 função para músicos 41 a 50
INSERT INTO Musico_has_FuncaoDoMusico (Musico_idMusico, FuncaoDoMusico_idFuncao) VALUES
(41, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 6),
(47, 7),
(48, 8),
(49, 9),
(50, 10);

-- Insert sinfonia_has_funcao
-- Sinfonia 1 a 30 (30 sinfonias geradas anteriormente)
-- Para cada sinfonia, serão associadas de 5 a 8 funções diferentes.

INSERT INTO Sinfonia_has_FuncaoDoMusico (Sinfonia_idSinfonia, FuncaoDoMusico_idFuncao) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
(3, 11), (3, 12), (3, 13), (3, 14), (3, 15),
(4, 16), (4, 17), (4, 18), (4, 19), (4, 20),
(5, 21), (5, 22), (5, 1), (5, 2), (5, 3),
(6, 4), (6, 5), (6, 6), (6, 7), (6, 8),
(7, 9), (7, 10), (7, 11), (7, 12), (7, 13),
(8, 14), (8, 15), (8, 16), (8, 17), (8, 18),
(9, 19), (9, 20), (9, 21), (9, 22), (9, 1),
(10, 2), (10, 3), (10, 4), (10, 5), (10, 6),

(11, 7), (11, 8), (11, 9), (11, 10), (11, 11),
(12, 12), (12, 13), (12, 14), (12, 15), (12, 16),
(13, 17), (13, 18), (13, 19), (13, 20), (13, 21),
(14, 22), (14, 1), (14, 2), (14, 3), (14, 4),
(15, 5), (15, 6), (15, 7), (15, 8), (15, 9),
(16, 10), (16, 11), (16, 12), (16, 13), (16, 14),
(17, 15), (17, 16), (17, 17), (17, 18), (17, 19),
(18, 20), (18, 21), (18, 22), (18, 1), (18, 2),
(19, 3), (19, 4), (19, 5), (19, 6), (19, 7),
(20, 8), (20, 9), (20, 10), (20, 11), (20, 12),

(21, 13), (21, 14), (21, 15), (21, 16), (21, 17),
(22, 18), (22, 19), (22, 20), (22, 21), (22, 22),
(23, 1), (23, 3), (23, 5), (23, 7), (23, 9),
(24, 2), (24, 4), (24, 6), (24, 8), (24, 10),
(25, 11), (25, 13), (25, 15), (25, 17), (25, 19),
(26, 12), (26, 14), (26, 16), (26, 18), (26, 20),
(27, 21), (27, 22), (27, 1), (27, 2), (27, 3),
(28, 4), (28, 5), (28, 6), (28, 7), (28, 8),
(29, 9), (29, 10), (29, 11), (29, 12), (29, 13),
(30, 14), (30, 15), (30, 16), (30, 17), (30, 18);

-- Insert da tabela endereco
-- Inserindo endereços para os músicos
INSERT INTO Endereco (idEndereco, rua, numero, bairro, estado, CEP, complemento, Orquestra_idOrquestra, Musico_idMusico) VALUES
(301, 'Rua dos Lírios', 501, 'Jardim Botânico', 'SP', '04578-000', NULL, NULL, 1),
(302, 'Avenida Beira Mar', 1150, 'Flamengo', 'RJ', '22210-000', 'Apto 302', NULL, 2),
(303, 'Rua da Serra', 210, 'Anchieta', 'MG', '30310-020', NULL, NULL, 3),
(304, 'Avenida Mauá', 888, 'Centro Histórico', 'RS', '90030-080', 'Casa Esq.', NULL, 4),
(305, 'Rua da Praia', 15, 'Farol da Barra', 'BA', '40140-000', NULL, NULL, 5),
(306, 'Rua Brigadeiro Faria Lima', 3000, 'Itaim Bibi', 'SP', '04538-132', 'Conj. 45', NULL, 6),
(307, 'Avenida Brasil', 2000, 'Savassi', 'MG', '30140-003', NULL, NULL, 7),
(308, 'Rua Tonelero', 101, 'Copacabana', 'RJ', '22030-000', 'Fundos', NULL, 8),
(309, 'Avenida Carlos Gomes', 555, 'Auxiliadora', 'RS', '90480-000', NULL, NULL, 9),
(310, 'Rua das Palmeiras', 77, 'Graça', 'BA', '40150-010', 'Cobertura', NULL, 10),

(311, 'Rua Hélio Pellegrino', 900, 'Vila Olímpia', 'SP', '04552-070', NULL, NULL, 11),
(312, 'Avenida das Nações Unidas', 12901, 'Brooklin', 'SP', '04578-000', 'Torre Norte', NULL, 12),
(313, 'Rua dos Timbiras', 1500, 'Lourdes', 'MG', '30180-060', NULL, NULL, 13),
(314, 'Avenida Cristóvão Colombo', 400, 'Moinhos de Vento', 'RS', '90130-001', 'Apto 11', NULL, 14),
(315, 'Rua da Bahia', 123, 'Comércio', 'BA', '40010-000', NULL, NULL, 15),
(316, 'Rua Tabapuã', 1111, 'Itaim Bibi', 'SP', '04533-004', 'Sala 10A', NULL, 16),
(317, 'Avenida Atlântica', 1900, 'Ipanema', 'RJ', '22421-001', NULL, NULL, 17),
(318, 'Rua Cláudio Manoel', 600, 'Funcionários', 'MG', '30140-030', 'Casa 2', NULL, 18),
(319, 'Avenida Goethe', 200, 'Bom Fim', 'RS', '90040-000', NULL, NULL, 19),
(320, 'Rua Chile', 333, 'Vitória', 'BA', '40070-000', 'Cobertura', NULL, 20),

(321, 'Rua Augusta', 2000, 'Consolação', 'SP', '01304-002', NULL, NULL, 21),
(322, 'Avenida Afonso Pena', 1200, 'Centro', 'MG', '30130-002', 'Apto 501', NULL, 22),
(323, 'Rua da República', 300, 'Cidade Baixa', 'RS', '90050-320', NULL, NULL, 23),
(324, 'Avenida Sete de Setembro', 1000, 'Barra', 'BA', '40130-001', NULL, NULL, 24),
(325, 'Rua Oscar Freire', 1000, 'Cerqueira César', 'SP', '01426-000', 'Sala 3B', NULL, 25),
(326, 'Rua das Laranjeiras', 500, 'Laranjeiras', 'RJ', '22240-000', NULL, NULL, 26),
(327, 'Avenida Brasil', 1500, 'Centro', 'MG', '30170-010', 'Casa 7', NULL, 27),
(328, 'Rua Farrapos', 700, 'Navegantes', 'RS', '90230-000', NULL, NULL, 28),
(329, 'Rua Carlos Gomes', 400, 'Rio Vermelho', 'BA', '41950-000', 'Cobertura', NULL, 29),
(330, 'Rua Bela Cintra', 800, 'Consolação', 'SP', '01415-000', NULL, NULL, 30),

(331, 'Rua Haddock Lobo', 1500, 'Jardins', 'SP', '01414-001', NULL, NULL, 31),
(332, 'Avenida Vieira Souto', 2000, 'Ipanema', 'RJ', '22420-000', 'Apto 101', NULL, 32),
(333, 'Rua Fernandes Tourinho', 450, 'Savassi', 'MG', '30112-001', NULL, NULL, 33),
(334, 'Avenida Cristóvão Colombo', 900, 'Floresta', 'RS', '90220-000', 'Casa 5', NULL, 34),
(335, 'Rua da Bahia', 150, 'Pituba', 'BA', '41830-000', NULL, NULL, 35),
(336, 'Rua Teodoro Sampaio', 1200, 'Pinheiros', 'SP', '05405-050', 'Sala 12B', NULL, 36),
(337, 'Avenida Olegário Maciel', 1100, 'Lourdes', 'MG', '30180-120', NULL, NULL, 37),
(338, 'Rua Conde de Bonfim', 1600, 'Tijuca', 'RJ', '20520-050', NULL, NULL, 38),
(339, 'Avenida Protásio Alves', 1800, 'Bom Jesus', 'RS', '91420-001', NULL, NULL, 39),
(340, 'Rua da Fonte Nova', 300, 'Nazaré', 'BA', '40050-400', 'Cobertura', NULL, 40),

(341, 'Rua Frei Caneca', 1300, 'Consolação', 'SP', '01307-003', NULL, NULL, 41),
(342, 'Avenida Getúlio Vargas', 1700, 'Savassi', 'MG', '30112-022', 'Apto 203', NULL, 42),
(343, 'Rua da República', 350, 'Cidade Baixa', 'RS', '90050-321', NULL, NULL, 43),
(344, 'Avenida Sete de Setembro', 1100, 'Vitória', 'BA', '40080-003', 'Casa 8', NULL, 44),
(345, 'Rua Artur de Azevedo', 250, 'Pinheiros', 'SP', '05404-011', NULL, NULL, 45),
(346, 'Rua Marquês de São Vicente', 600, 'Gávea', 'RJ', '22451-042', 'Sala 7A', NULL, 46),
(347, 'Avenida do Contorno', 800, 'Savassi', 'MG', '30110-064', NULL, NULL, 47),
(348, 'Rua da Praia de Belas', 1100, 'Praia de Belas', 'RS', '90110-001', 'Sobrado', NULL, 48),
(349, 'Avenida da Bahia', 1300, 'Comércio', 'BA', '40010-111', NULL, NULL, 49),
(350, 'Rua Vergueiro', 1500, 'Paraíso', 'SP', '04002-061', 'Cobertura', NULL, 50),

-- Inserindo endereços para as orquestras
INSERT INTO Endereco (idEndereco, rua, numero, bairro, estado, CEP, complemento, Orquestra_idOrquestra, Musico_idMusico) VALUES
(401, 'Musikvereinsplatz', 1, 'Innere Stadt', 'Viena', '1010', NULL, 1, NULL),
(402, 'Herbert-von-Karajan-Straße', 1, 'Tiergarten', 'Berlim', '10785', NULL, 2, NULL),
(403, 'Southbank Centre', 'Belvedere Road', 'Lambeth', 'Londres', 'SE1 9TF', NULL, 3, NULL),
(404, 'Ueno Park', '8-15', 'Taito-ku', 'Tóquio', '110-0007', NULL, 4, NULL),
(405, 'David Geffen Hall', 132, 'West 65th Street', 'Nova York', 'NY 10023', NULL, 5, NULL),
(406, 'The Barbican Centre', 'Silk St', 'Londres', 'EC2Y 8DS', NULL, 6, NULL),
(407, 'Avenue Montaigne', 15, 'Champs-Élysées', 'Paris', '75008', NULL, 7, NULL),
(408, 'Rua da Consolação', 3027, 'Cerqueira César', 'São Paulo', '01416-001', NULL, 8, NULL),
(409, 'Praça Ramos de Azevedo', 's/n', 'Centro', 'São Paulo', '01003-070', NULL, 9, NULL),
(410, 'Rua Bento de Andrade', 651, 'Jardim Paulista', 'São Paulo', '01407-000', NULL, 10, NULL),
(411, 'Zhongshan Park', 'No. 4', 'Zhongshan Park Street', 'Pequim', '100031', NULL, 11, NULL),
(412, 'Konserthuset Stockholm', 'Hötorget 8', 'Norrmalm', 'Estocolmo', 'SE-103 87', NULL, 12, NULL),
(413, 'Walt Disney Concert Hall', 111, 'South Grand Avenue', 'Los Angeles', 'CA 90012', NULL, 13, NULL),
(414, 'Johannesgasse', 4, 'Innere Stadt', 'Viena', '1010', NULL, 14, NULL),
(415, 'Tchaikovsky Concert Hall', 4, 'Triumfalnaya Square', 'Moscou', '125009', NULL, 15, NULL);
-- Insert tabela de telefone

