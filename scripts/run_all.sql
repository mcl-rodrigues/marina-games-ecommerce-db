-- =========================
-- DATABASE
-- =========================
SOURCE schema/001_create_database.sql;

-- =========================
-- TABLES
-- =========================
SOURCE schema/002_tables/001_usuarios.sql;
SOURCE schema/002_tables/002_catalogo.sql;
SOURCE schema/002_tables/003_estoque.sql;
SOURCE schema/002_tables/004_pedidos.sql;
SOURCE schema/002_tables/005_pagamentos.sql;
SOURCE schema/002_tables/006_servicos.sql;

-- =========================
-- SEED (RESET + DATA)
-- =========================
SOURCE seed/000_clear_data.sql;
SOURCE seed/001_usuarios.sql;
SOURCE seed/002_catalogo.sql;
SOURCE seed/003_estoque.sql;
SOURCE seed/004_pedidos.sql;
SOURCE seed/005_pagamentos.sql;
SOURCE seed/006_servicos.sql;
