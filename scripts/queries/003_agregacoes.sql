-- Total gasto por usuário
SELECT u.nome, SUM(p.total) AS total_gasto
FROM usuarios u
JOIN pedidos p ON p.usuario_id = u.id
WHERE p.status != 'cancelado'
GROUP BY u.id
ORDER BY total_gasto DESC;

-- Quantidade de pedidos por status
SELECT status, COUNT(*) AS total
FROM pedidos
GROUP BY status;

-- Ticket médio
SELECT AVG(total) AS ticket_medio
FROM pedidos
WHERE status = 'concluido';
