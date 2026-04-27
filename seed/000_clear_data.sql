USE marina_games_ecommerce;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE pagamentos;
TRUNCATE TABLE pedido_itens;
TRUNCATE TABLE pedidos;

TRUNCATE TABLE estoque;

TRUNCATE TABLE item_imagens;
TRUNCATE TABLE itens;
TRUNCATE TABLE categorias;

TRUNCATE TABLE ordens_servico;
TRUNCATE TABLE ordem_servico_status;

TRUNCATE TABLE enderecos;
TRUNCATE TABLE usuarios;

TRUNCATE TABLE metodos_pagamento;

SET FOREIGN_KEY_CHECKS = 1;
