-- =========================
-- PAGAMENTOS
-- =========================
INSERT INTO metodos_pagamento (nome) VALUES
('Cartão de Crédito'),
('Pix');

INSERT INTO pagamentos (pedido_id, metodo_id, status, valor) VALUES
(1, 1, 'pendente', 4620.00);
