-- =========================
-- SERVIÇOS
-- =========================
INSERT INTO ordem_servico_status (nome) VALUES
('aberto'),
('em andamento'),
('concluido');

INSERT INTO ordens_servico (usuario_id, status_id, descricao, valor) VALUES
(2, 1, 'Controle com drift no analógico', 150.00);
