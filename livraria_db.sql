-- Tabela para armazenar os produtos da livraria
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(150),
    genero VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT DEFAULT 0
);

-- Tabela para registrar os pedidos dos clientes
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    nome_cliente VARCHAR(255) NOT NULL,
    data_pedido DATE,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserindo 3 registros na tabela de produtos
INSERT INTO produtos (titulo, autor, genero, preco, estoque) VALUES
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Fantasia', 59.90, 15),
('O Guia do Mochileiro das Galáxias', 'Douglas Adams', 'Ficção Científica', 39.90, 25),
('Dom Casmurro', 'Machado de Assis', 'Romance', 29.90, 30);

-- Inserindo 3 registros na tabela de pedidos
INSERT INTO pedidos (id_produto, nome_cliente, data_pedido, quantidade) VALUES
(1, 'Ana Silva', '2025-06-10', 1),
(3, 'Carlos Souza', '2025-06-12', 2),
(2, 'Mariana Costa', '2025-06-15', 1);
