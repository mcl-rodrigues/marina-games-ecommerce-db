-- Pedidos com nome do usuário
SELECT p.id 'Id Pedido', u.nome 'Nome Usuário', p.total 'Valor Total do Pedido', p.status AS 'Status do Pedido'
FROM pedidos p
INNER JOIN usuarios u ON u.id = p.usuario_id;

-- Pedido + itens
SELECT p.id AS pedido_id, i.nome, pi.quantidade, pi.preco_unitario
FROM pedido_itens pi
JOIN pedidos p ON p.id = pi.pedido_id
JOIN itens i ON i.id = pi.item_id;

-- Usuários mesmo sem pedidos (LEFT JOIN)
SELECT u.nome, p.id AS pedido_id
FROM usuarios u
LEFT JOIN pedidos p ON p.usuario_id = u.id;
