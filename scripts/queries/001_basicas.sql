-- Listar usuários
SELECT id, nome, email FROM usuarios;

-- Itens ativos ordenados por preço
SELECT nome, preco
FROM itens
WHERE ativo = TRUE
ORDER BY preco DESC;

-- Pedidos mais recentes
SELECT *
FROM pedidos
ORDER BY created_at DESC
LIMIT 10;
