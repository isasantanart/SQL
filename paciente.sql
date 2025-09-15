-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:55
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'Maria Oliveira', '1985-09-23', '3333-4444', 'Rua B,456', NULL, 'maria@gmail.com'),
(2, 'Pedro Santos', '2000-07-15', '4444-5555', 'Rua C,789', NULL, 'pedro@gmail.com'),
(3, 'Ana Souza', '1995-02-20', '5555-6666', 'Rua D,101', NULL, 'ana@gmail.com'),
(4, 'Carla Lima', '1988-11-30', '6666-7777', 'Rua E,202', NULL, 'carla@gmail.com'),
(5, 'Eduarda Silva', '1999-12-13', '7777-8888', 'Rua F,112', NULL, 'eduarda@gmail.com'),
(6, 'Mateus Fernades', '2002-11-01', '8888-9999', 'Rua G,364', NULL, 'mateus@gmail.com'),
(7, 'Julia Azevedo', '2000-04-03', '9999-4444', 'Rua H,998', NULL, 'julia@gmail.com'),
(8, 'Antonio Pereira', '1988-02-11', '1010-9999', 'Rua I,333', NULL, 'antonio@gmail.com'),
(9, 'Giovana Garcia', '2001-09-04', '2121-8888', 'Rua J,046', NULL, 'giovana@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
