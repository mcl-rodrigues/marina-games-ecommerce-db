-- Top 5 itens mais vendidos
SELECT i.nome, SUM(pi.quantidade) AS total_vendido
FROM pedido_itens pi
JOIN itens i ON i.id = pi.item_id
GROUP BY i.id
ORDER BY total_vendido DESC
LIMIT 5;

-- Faturamento total
SELECT SUM(total) AS faturamento
FROM pedidos
WHERE status IN ('pago', 'concluido');

-- Itens sem estoque
SELECT i.nome
FROM itens i
LEFT JOIN estoque e ON e.item_id = i.id
WHERE e.quantidade = 0 OR e.quantidade IS NULL;

-- Pedidos com pagamento recusado
SELECT p.id, u.nome, pag.status
FROM pagamentos pag
JOIN pedidos p ON p.id = pag.pedido_id
JOIN usuarios u ON u.id = p.usuario_id
WHERE pag.status = 'recusado';

-- Pedidos com pagamento recusado
SELECT p.id, u.nome, pag.status
FROM pagamentos pag
JOIN pedidos p ON p.id = pag.pedido_id
JOIN usuarios u ON u.id = p.usuario_id
WHERE pag.status = 'recusado';

-- Usuários que mais compraram
SELECT u.nome, COUNT(p.id) AS total_pedidos
FROM usuarios u
JOIN pedidos p ON p.usuario_id = u.id
GROUP BY u.id
ORDER BY total_pedidos DESC
LIMIT 3;

-- Ordens de serviço por status
SELECT s.nome AS status, COUNT(*) AS total
FROM ordens_servico o
JOIN ordem_servico_status s ON s.id = o.status_id
GROUP BY s.id;
