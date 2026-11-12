-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/11/2026 às 12:23
-- Versão do servidor: 8.0.42-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `id_proprietario` int DEFAULT NULL,
  `tipo_imovel` varchar(40) DEFAULT NULL,
  `tipo_negocio` varchar(40) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `endereco`, `estado`, `cidade`, `bairro`, `id_proprietario`, `tipo_imovel`, `tipo_negocio`, `valor`) VALUES
(1, 'rua paranapanema, 5045', 'PR', 'sao paulo', 'centro', NULL, 'casa', 'aluguel', NULL),
(2, 'rua paranapanema, 13', 'PR', 'sao paulo', 'centro', NULL, 'casa', 'venda', 110589000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `negocios`
--

CREATE TABLE `negocios` (
  `id` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  `contrato` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(38) DEFAULT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `fone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `email`, `senha`, `endereco`, `cpf`, `fone`) VALUES
(1, 'luiz eduardo ramos', 'luiz@gmail.com', 'p4$$@w0rd1', 'rua das lagartixas, 3950', '12945789612', '44 9999888787'),
(2, 'josefina dos santos', 'josefina@email.com', '512*#A32010*', 'maria helena', '14356912370', '44999633864'),
(3, 'josefa dos santos', 'josefa@email.com', '512*#yt354210*', 'mato grosso', '19356242370', '449996664864'),
(4, 'helena dos santos', 'helena@email.com', '297#A32010*', 'umuarama', '14356212370', '44988633964'),
(5, 'anderson da silva', 'anderson@email.com', '998T010*', 'sao paulo', '1435691675', '44999633762'),
(6, 'thiffany almeida', 'thiffany@email.com', '784=9810*', 'rio de janeiro', '273419912370', '44997636964'),
(7, 'luiz henrique', 'henrique@email.com', '512*DTR2010*', 'estados unidos', '9876543210', '44986754213'),
(8, 'anna almeida', 'anna@email.com', 'vpn2010*', 'estados unidos', '143576589', '44988542334'),
(9, 'evandro de souza', 'evandro@email.com', '512*#A32010*', 'umuarama', '14356912370', '4499968923'),
(10, 'pedro da silva', 'pedro@email.com', '512*#A32010*', 'aparecida', '539268912370', '44788633864'),
(11, 'eduardo costa', 'eduardo@email.com', '512*#A32010*', 'rua helena', '14356912370', '44886543864'),
(12, 'valeria pinto', 'valeria@email.com', '875#A32010*', 'umuarama', '143598578370', '44235698674');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relacao_pessoas`
--

CREATE TABLE `relacao_pessoas` (
  `id_pessoa` int NOT NULL,
  `id_tipo_pessoa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `relacao_pessoas`
--

INSERT INTO `relacao_pessoas` (`id_pessoa`, `id_tipo_pessoa`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_pessoa`
--

CREATE TABLE `tipo_pessoa` (
  `id` int NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_pessoa`
--

INSERT INTO `tipo_pessoa` (`id`, `tipo`) VALUES
(1, 'cliente'),
(2, 'usuario'),
(3, 'proprietario');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `relacao_pessoas`
--
ALTER TABLE `relacao_pessoas`
  ADD PRIMARY KEY (`id_pessoa`,`id_tipo_pessoa`);

--
-- Índices de tabela `tipo_pessoa`
--
ALTER TABLE `tipo_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tipo_pessoa`
--
ALTER TABLE `tipo_pessoa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
