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
('Xbox Series X'),
('Xbox One'),
('Nintendo Switch'),
('PC');

-- =========================
-- ITENS
-- =========================
INSERT INTO itens (categoria_id, plataforma_id, nome, descricao, preco, tipo, condicao) VALUES
(1, 1, 'PlayStation 5', 'Console novo lacrado', 4500.00, 'produto', 'novo'),
(2, 2, 'The Last of Us Part II', 'Jogo usado em ótimo estado', 120.00, 'produto', 'usado'),
(3, NULL, 'Controle Xbox Series', 'Controle sem fio', 350.00, 'produto', 'novo'),
(4, 1, 'Conserto de Controle', 'Reparo completo de controle de PS5', 150.00, 'servico', NULL);

-- =========================
-- IMAGENS
-- =========================
INSERT INTO item_imagens (item_id, url, principal) VALUES
(1, 'https://exemplo.com/ps5.jpg', TRUE),
(2, 'https://exemplo.com/tlou2-ps4.jpg', TRUE),
(3, 'https://exemplo.com/controle-xbox.jpg', TRUE);