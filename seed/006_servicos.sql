-- =========================
-- SERVIÇOS
-- =========================
INSERT INTO ordem_servico_status (nome) VALUES
('aberto'),
('em andamento'),
('concluido');

INSERT INTO ordens_servico (usuario_id, status_id, descricao, valor) VALUES
(2, 1, 'Controle com drift no analógico', 150.00),
(1, 2, 'Troca de pasta térmica e limpeza completa do console', 180.00),
(3, 3, 'Substituição de HD por SSD', 320.00),
(4, 1, 'Console não liga (possível fonte)', 200.00),
(2, 3, 'Reparo em entrada HDMI', 250.00),
(1, 2, 'Atualização de firmware e configuração geral', 120.00),
(3, 1, 'Barulho excessivo no cooler', 140.00),
(4, 3, 'Troca de bateria interna', 90.00),
(2, 2, 'Limpeza interna + troca de thermal pads', 220.00),
(1, 3, 'Reparo em botão travado do controle', 80.00),
(3, 2, 'Superaquecimento após uso prolongado', 210.00),
(4, 1, 'Leitor de disco não reconhece mídia', 260.00),
(2, 3, 'Substituição de conector USB', 130.00),
(1, 1, 'Console desligando sozinho', 190.00),
(3, 3, 'Upgrade de armazenamento interno', 400.00),
(4, 2, 'Problema intermitente de vídeo', 170.00),
(2, 1, 'Controle não conecta via bluetooth', 110.00),
(1, 3, 'Troca de analógico completo', 160.00),
(3, 2, 'Sistema corrompido (reinstalação)', 150.00),
(4, 3, 'Manutenção preventiva completa', 300.00);
