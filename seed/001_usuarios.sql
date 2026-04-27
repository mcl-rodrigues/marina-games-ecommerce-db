-- =========================
-- USUÁRIOS
-- =========================
INSERT INTO usuarios (nome, email, senha, telefone) VALUES
('José da Silva', 'jose@naoexisteesseemail.com.br', '123456', '11999999999'),
('Maria Gamer', 'maria@sojogo.com', '123456', '11988888888');

INSERT INTO enderecos (usuario_id, cep, rua, numero, complemento, bairro, cidade, estado) VALUES
(1, '01000-000', 'Rua dos Bugs', '404', NULL, 'Centro', 'São Paulo', 'SP'),
(2, '02000-000', 'Avenida Lagada', '500', 'Apto 42', 'Zona Norte', 'São Paulo', 'SP');
