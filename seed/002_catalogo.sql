-- =========================
-- CATÁLOGO
-- =========================
INSERT INTO categorias (nome) VALUES
('Consoles'),
('Jogos'),
('Acessórios'),
('Serviços');

-- =========================
-- PLATAFORMAS
-- =========================
INSERT INTO plataformas (nome) VALUES
('PlayStation 5'),
('PlayStation 4'),
('PlayStation 3'),
('PlayStation 2'),
('PlayStation 1'),
('PS One'),
('PSP'),
('PlayStation Vita'),
('Xbox Series X'),
('Xbox Series S'),
('Xbox One'),
('Xbox One S'),
('Xbox One X'),
('Xbox 360'),
('Xbox (Original)'),
('Nintendo Switch'),
('Nintendo Switch OLED'),
('Nintendo Switch Lite'),
('Nintendo Wii U'),
('Nintendo Wii'),
('Nintendo GameCube'),
('Nintendo 64'),
('Super Nintendo'),
('NES'),
('Game Boy'),
('Game Boy Color'),
('Game Boy Advance'),
('Nintendo DS'),
('Nintendo 3DS'),
('PC'),
('Steam Deck'),
('Sega Genesis'),
('Sega Mega Drive'),
('Sega Saturn'),
('Sega Dreamcast'),
('Sega Game Gear'),
('Atari 2600'),
('Atari 5200'),
('Atari 7800'),
('Atari Jaguar'),
('Neo Geo');

-- =========================
-- ITENS
-- =========================
INSERT INTO itens (categoria_id, plataforma_id, nome, descricao, preco, tipo, condicao) VALUES
(1, 1, 'PlayStation 5 Slim', 'Console versão slim com 1TB de armazenamento', 3999.90, 'produto', 'novo'),
(1, 4, 'Xbox Series X', 'Console potente com 1TB SSD', 4299.90, 'produto', 'novo'),
(1, 5, 'Xbox Series S', 'Console digital compacto', 2499.90, 'produto', 'novo'),
(1, 8, 'Nintendo Switch OLED', 'Console híbrido com tela OLED', 2899.90, 'produto', 'novo'),
(1, 2, 'PlayStation 4 Usado', 'Console usado em bom estado', 1800.00, 'produto', 'usado'),
(1, 6, 'Xbox One Usado', 'Console usado com controle incluso', 1500.00, 'produto', 'usado'),
(2, 1, 'Spider-Man 2', 'Exclusivo PS5, mídia física', 299.90, 'produto', 'novo'),
(2, 1, 'Demons Souls Remake', 'Versão remake PS5', 249.90, 'produto', 'novo'),
(2, 2, 'God of War Ragnarok', 'Jogo usado PS4', 180.00, 'produto', 'usado'),
(2, 4, 'Halo Infinite', 'Jogo Xbox Series X', 199.90, 'produto', 'novo'),
(2, 6, 'Forza Horizon 5', 'Jogo de corrida Xbox One', 149.90, 'produto', 'novo'),
(2, 8, 'The Legend of Zelda: Tears of the Kingdom', 'Exclusivo Switch', 349.90, 'produto', 'novo'),
(2, 8, 'Super Mario Odyssey', 'Jogo clássico Switch', 249.90, 'produto', 'novo'),
(2, 12, 'Cyberpunk 2077', 'Versão PC digital', 119.90, 'produto', 'novo'),
(2, 2, 'FIFA 23', 'Jogo usado PS4', 90.00, 'produto', 'usado'),
(2, 1, 'Call of Duty Modern Warfare III', 'FPS para PS5', 279.90, 'produto', 'novo'),
(3, 30, 'Teclado Mecânico RGB Compacto', 'Switch vermelho com resposta rapida', 279.90, 'produto', 'novo'),
(3, 30, 'Mouse Gamer Ultraleve', 'Alta precisao para jogos competitivos', 199.90, 'produto', 'novo'),
(3, 30, 'Headset Gamer Surround', 'Audio imersivo para jogos no PC', 249.90, 'produto', 'novo'),
(3, NULL, 'Carregador Duplo de Controles', 'Dock para recarga simultanea', 179.90, 'produto', 'novo'),
(3, NULL, 'HD Externo 2TB', 'Armazenamento adicional USB', 399.90, 'produto', 'novo'),
(3, 30, 'SSD NVMe 1TB', 'Alta velocidade para jogos e sistema', 499.90, 'produto', 'novo'),
(4, 30, 'Instalacao de Drivers', 'Configuracao completa do sistema', 80.00, 'servico', NULL),
(4, 30, 'Limpeza Completa PC', 'Remocao de poeira e manutencao interna', 150.00, 'servico', NULL),
(4, 30, 'Formatacao com Otimizacao', 'Sistema limpo e configurado', 120.00, 'servico', NULL),
(4, 1, 'Conserto de Console PS5', 'Limpeza e reparo geral', 250.00, 'servico', NULL),
(4, 2, 'Conserto de Console PS4', 'Troca de pasta térmica e limpeza', 200.00, 'servico', NULL),
(4, 4, 'Conserto de Xbox Series X', 'Reparo completo', 260.00, 'servico', NULL),
(4, 6, 'Conserto de Xbox One', 'Manutenção geral', 180.00, 'servico', NULL),
(4, 8, 'Conserto Nintendo Switch', 'Troca de tela e manutenção', 220.00, 'servico', NULL);

-- =========================
-- IMAGENS
-- =========================
INSERT INTO item_imagens (item_id, url, principal) VALUES
(1, 'https://exemplo.com/ps5.jpg', TRUE),
(2, 'https://exemplo.com/tlou2-ps4.jpg', TRUE),
(3, 'https://exemplo.com/controle-xbox.jpg', TRUE);