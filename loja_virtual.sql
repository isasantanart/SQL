-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:17
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `Endereco` text DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Estado` varchar(2) DEFAULT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `DataCadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `ID_ItemPedido` int(11) NOT NULL,
  `ID_Pedido` int(11) NOT NULL,
  `ID_Produto` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `PrecoUnitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_Pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `DataPedido` datetime NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT 'Pendente',
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preco` double NOT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `Estoque` int(11) NOT NULL,
  `DataCriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`ID_ItemPedido`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Produto` (`ID_Produto`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_Pedido`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `ID_ItemPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_Produto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedidos` (`ID_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`ID_Produto`) REFERENCES `produtos` (`ID_Produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
