-- =========================
-- PEDIDOS
-- =========================
INSERT INTO pedidos (usuario_id, endereco_id, status, total) VALUES
(1, 1, 'pendente', 4620.00);

INSERT INTO pedido_itens (pedido_id, item_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 4500.00),
(1, 2, 1, 120.00);
