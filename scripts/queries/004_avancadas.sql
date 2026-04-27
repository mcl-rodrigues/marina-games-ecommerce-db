-- Usuários que já fizeram pedido
SELECT nome
FROM usuarios
WHERE id IN (
  SELECT DISTINCT usuario_id FROM pedidos
);

-- Itens mais caros que a média
SELECT nome, preco
FROM itens
WHERE preco > (
  SELECT AVG(preco) FROM itens
);
