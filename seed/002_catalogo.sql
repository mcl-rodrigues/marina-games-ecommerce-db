-- =========================
-- CATÁLOGO
-- =========================
INSERT INTO categorias (nome) VALUES
('Consoles'),
('Jogos'),
('Acessórios'),
('Serviços');

INSERT INTO itens (categoria_id, nome, descricao, preco, tipo, condicao) VALUES
(1, 'PlayStation 5', 'Console novo lacrado', 4500.00, 'produto', 'novo'),
(2, 'The Last of Us Part II', 'Jogo usado em ótimo estado', 120.00, 'produto', 'usado'),
(3, 'Controle Xbox Series', 'Controle sem fio', 350.00, 'produto', 'novo'),
(4, 'Conserto de Controle', 'Reparo completo de controle', 150.00, 'servico', NULL);

INSERT INTO item_imagens (item_id, url, principal) VALUES
(1, 'https://exemplo.com/ps5.jpg', TRUE),
(2, 'https://exemplo.com/tlou2.jpg', TRUE),
(3, 'https://exemplo.com/controle.jpg', TRUE);
