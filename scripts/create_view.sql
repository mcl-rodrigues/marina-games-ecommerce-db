-- Pedidos completos
CREATE VIEW view_pedidos_completos AS
SELECT
    p.id AS pedido_id,
    u.nome AS usuario,
    u.email,
    p.status,
    p.total,
    p.created_at,
    e.cidade,
    e.estado
FROM pedidos p
JOIN usuarios u ON u.id = p.usuario_id
JOIN enderecos e ON e.id = p.endereco_id;

-- Itens com categoria e plataforma
CREATE VIEW view_itens_detalhados AS
SELECT
    i.id,
    i.nome,
    i.preco,
    i.tipo,
    i.condicao,
    i.ativo,
    c.nome AS categoria,
    p.nome AS plataforma
FROM itens i
JOIN categorias c ON c.id = i.categoria_id
LEFT JOIN plataformas p ON p.id = i.plataforma_id;

-- Estoque completo
CREATE VIEW view_estoque_detalhado AS
SELECT
    i.nome,
    e.quantidade,
    i.preco,
    (e.quantidade * i.preco) AS valor_total
FROM estoque e
JOIN itens i ON i.id = e.item_id;

-- Pagamentos com info do pedido
CREATE VIEW view_pagamentos_detalhados AS
SELECT
    pg.id,
    pg.valor,
    pg.status,
    pg.created_at,
    mp.nome AS metodo_pagamento,
    p.id AS pedido_id,
    u.nome AS usuario
FROM pagamentos pg
JOIN metodos_pagamento mp ON mp.id = pg.metodo_id
JOIN pedidos p ON p.id = pg.pedido_id
JOIN usuarios u ON u.id = p.usuario_id;

-- Ordens de serviço detalhadas
CREATE VIEW view_ordens_servico_detalhadas AS
SELECT
    os.id,
    u.nome AS usuario,
    oss.nome AS status,
    os.descricao,
    os.valor,
    os.created_at
FROM ordens_servico os
JOIN usuarios u ON u.id = os.usuario_id
JOIN ordem_servico_status oss ON oss.id = os.status_id;

-- Itens por pedido
CREATE VIEW view_pedido_itens_detalhado AS
SELECT
    p.id AS pedido_id,
    i.nome AS item,
    pi.quantidade,
    pi.preco_unitario,
    (pi.quantidade * pi.preco_unitario) AS subtotal
FROM pedido_itens pi
JOIN pedidos p ON p.id = pi.pedido_id
JOIN itens i ON i.id = pi.item_id;
