-- =========================
-- USUÁRIOS
-- =========================
CREATE TABLE usuarios (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE enderecos (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT UNSIGNED NOT NULL,
    cep VARCHAR(10) NOT NULL,
    rua VARCHAR(150) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_enderecos_usuario
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- CATÁLOGO
-- =========================
CREATE TABLE categorias (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE item_condicoes (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE itens (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    categoria_id BIGINT UNSIGNED NOT NULL,
    condicao_id BIGINT UNSIGNED,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    tipo ENUM('produto', 'servico') NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_itens_categoria
        FOREIGN KEY (categoria_id) REFERENCES categorias(id),

    CONSTRAINT fk_itens_condicao
        FOREIGN KEY (condicao_id) REFERENCES item_condicoes(id)
        ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE item_imagens (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    item_id BIGINT UNSIGNED NOT NULL,
    url VARCHAR(255) NOT NULL,
    principal BOOLEAN DEFAULT FALSE,

    CONSTRAINT fk_item_imagens_item
        FOREIGN KEY (item_id) REFERENCES itens(id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- ESTOQUE
-- =========================
CREATE TABLE estoque (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    item_id BIGINT UNSIGNED NOT NULL UNIQUE,
    quantidade INT UNSIGNED NOT NULL DEFAULT 0,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_estoque_item
        FOREIGN KEY (item_id) REFERENCES itens(id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- PEDIDOS
-- =========================
CREATE TABLE pedidos (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT UNSIGNED NOT NULL,
    endereco_id BIGINT UNSIGNED NOT NULL,
    status ENUM('pendente', 'pago', 'enviado', 'concluido', 'cancelado') DEFAULT 'pendente',
    total DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_pedidos_usuario
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id),

    CONSTRAINT fk_pedidos_endereco
        FOREIGN KEY (endereco_id) REFERENCES enderecos(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE pedido_itens (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pedido_id BIGINT UNSIGNED NOT NULL,
    item_id BIGINT UNSIGNED NOT NULL,
    quantidade INT UNSIGNED NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_pedido_itens_pedido
        FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_pedido_itens_item
        FOREIGN KEY (item_id) REFERENCES itens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- PAGAMENTOS
-- =========================
CREATE TABLE metodos_pagamento (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE pagamentos (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pedido_id BIGINT UNSIGNED NOT NULL,
    metodo_id BIGINT UNSIGNED NOT NULL,
    status ENUM('pendente', 'aprovado', 'recusado') DEFAULT 'pendente',
    valor DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_pagamentos_pedido
        FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_pagamentos_metodo
        FOREIGN KEY (metodo_id) REFERENCES metodos_pagamento(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- SERVIÇOS
-- =========================
CREATE TABLE ordem_servico_status (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE ordens_servico (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT UNSIGNED NOT NULL,
    status_id BIGINT UNSIGNED NOT NULL,
    descricao TEXT NOT NULL,
    valor DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_ordens_usuario
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id),

    CONSTRAINT fk_ordens_status
        FOREIGN KEY (status_id) REFERENCES ordem_servico_status(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;