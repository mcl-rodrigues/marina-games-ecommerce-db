-- =========================
-- USUÁRIOS
-- =========================
CREATE INDEX idx_usuarios_email ON usuarios(email);

-- =========================
-- ENDEREÇOS
-- =========================
CREATE INDEX idx_enderecos_usuario_id ON enderecos(usuario_id);
CREATE INDEX idx_enderecos_cidade_estado ON enderecos(cidade, estado);

-- =========================
-- ITENS
-- =========================
CREATE INDEX idx_itens_categoria_id ON itens(categoria_id);
CREATE INDEX idx_itens_plataforma_id ON itens(plataforma_id);
CREATE INDEX idx_itens_tipo ON itens(tipo);
CREATE INDEX idx_itens_ativo ON itens(ativo);

-- =========================
-- ESTOQUE
-- =========================
CREATE INDEX idx_estoque_quantidade ON estoque(quantidade);

-- =========================
-- PEDIDOS
-- =========================
CREATE INDEX idx_pedidos_usuario_id ON pedidos(usuario_id);
CREATE INDEX idx_pedidos_status ON pedidos(status);
CREATE INDEX idx_pedidos_created_at ON pedidos(created_at);

-- =========================
-- PEDIDO ITENS
-- =========================
CREATE INDEX idx_pedido_itens_pedido_id ON pedido_itens(pedido_id);
CREATE INDEX idx_pedido_itens_item_id ON pedido_itens(item_id);

-- =========================
-- PAGAMENTOS
-- =========================
CREATE INDEX idx_pagamentos_pedido_id ON pagamentos(pedido_id);
CREATE INDEX idx_pagamentos_status ON pagamentos(status);

-- =========================
-- ORDENS DE SERVIÇO
-- =========================
CREATE INDEX idx_ordens_usuario_id ON ordens_servico(usuario_id);
CREATE INDEX idx_ordens_status_id ON ordens_servico(status_id);