-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Set-2018 às 13:03
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbvendasbl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `pk_id_cliente` bigint(20) UNSIGNED NOT NULL,
  `cli_nome` varchar(300) NOT NULL,
  `cli_endereco` varchar(350) NOT NULL,
  `cli_bairro` varchar(300) NOT NULL,
  `cli_cidade` varchar(200) NOT NULL,
  `cli_uf` varchar(2) NOT NULL,
  `cli_cep` varchar(9) NOT NULL,
  `cli_telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`pk_id_cliente`, `cli_nome`, `cli_endereco`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_telefone`) VALUES
(1, 'Cliente 1 PDV', 'rua 1', '1', '1', 'PR', '11111-111', '1111'),
(2, 'Luiz Guilherme Pereira', 'Rua Quarenta e quatro', 'Abranches', 'Curitiba', 'PR', '82300-666', '(41)3335-3535'),
(4, 'Zeca do crediário', 'Rua 333', 'trestrestres', 'trestres', 'RJ', '83333-300', '33-99173-3333'),
(5, 'Patricia Penchiari', 'Rua Theodoro Gbur', 'Tingui', 'Curitiba', 'PR', '82600-280', '41-3151-6710'),
(6, 'Marina Penchiari Pereira', 'Rua Sete, 120', 'Pontal', 'Maricá', 'RJ', '97120-000', '21-9999-8888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_forma_pagamento`
--

CREATE TABLE `tbl_forma_pagamento` (
  `pk_id_for_pag` bigint(20) UNSIGNED NOT NULL,
  `for_pag_descricao` varchar(255) NOT NULL,
  `for_pag_desconto` float NOT NULL,
  `for_pag_parcela` int(11) NOT NULL,
  `for_pag_situacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_forma_pagamento`
--

INSERT INTO `tbl_forma_pagamento` (`pk_id_for_pag`, `for_pag_descricao`, `for_pag_desconto`, `for_pag_parcela`, `for_pag_situacao`) VALUES
(1, 'DINHEIRO', -5, 1, 1),
(2, 'CARTAO DEBITO', -3, 1, 1),
(3, 'CARTAO CREDITO 1X', 0, 1, 1),
(4, 'CARTAO CREDITO 2X', 1.5, 2, 1),
(5, 'CARTAO CREDITO 3X', 3, 3, 1),
(6, 'CARTAO CREDITO 4X', 3, 4, 1),
(7, 'CARTAO CREDITO 5X', 3, 5, 1),
(8, 'CARTAO CREDITO 6X', 5, 6, 1),
(9, 'CARTAO CREDITO 7X', 5, 7, 1),
(10, 'CARTAO CREDITO 8X', 5, 8, 1),
(11, 'CARTAO CREDITO 9X', 6, 9, 1),
(12, 'CARTAO CREDITO 10X', 6, 10, 1),
(14, 'CARTAO CREDITO 11X', 7, 11, 1),
(15, 'CARTAO CREDITO 12X', 8, 12, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_produto`
--

CREATE TABLE `tbl_produto` (
  `pk_id_produto` bigint(20) UNSIGNED NOT NULL,
  `pro_nome` varchar(300) NOT NULL,
  `pro_valor` double NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_barcode` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_produto`
--

INSERT INTO `tbl_produto` (`pk_id_produto`, `pro_nome`, `pro_valor`, `pro_estoque`, `pro_barcode`) VALUES
(1, 'GRAVADOR DE EPROM MINI PRO 866', 189.99, 8, 9),
(2, 'PLACA DE DIAGNOSTICO PC NOTEBOOK', 153.49, 8, 2),
(3, 'CAIXAS DE SOM 5.1 CREATIVE 100 WATT RMS', 249.99, 48, 3),
(4, 'YOYO COM PISCA-PISCA COLORIDO ROLAMENTADO', 12.99, 42, 4),
(5, 'JOYSTICK VOLANTE LOGITECH G29 PC/PLAYSTATION4', 999.99, 8, 5),
(6, 'SSD 120GB KINGSTON A400', 169.99, 17, 6),
(9, 'VGA NVIDIA GEFORCE 1070 TI - EVGA', 2249.9, 9, 8),
(10, 'RADIO RELOGIO DESPERTADOR COM SIRENE/LANTERNA 4 PILHAS AA', 39, 12, 1),
(11, 'TABLET MULTILASER 7\"', 100, 37, 11),
(12, 'NETBOOK ACER  10\"', 656.77, 19, 12),
(13, 'CARREGADOR UNIVERSAL 5V - 12V', 49, 17, 13),
(14, 'TV SAMSUNG 42\" 4K', 4999.99, 4, 14),
(15, 'CARREGADOR DE NOTEBOOK 12V - 24V UNIVERSAL', 59.9, 18, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `pk_id_usuario` bigint(20) UNSIGNED NOT NULL,
  `usu_nome` varchar(150) NOT NULL,
  `usu_login` varchar(100) NOT NULL,
  `usu_senha` varchar(20) NOT NULL,
  `usu_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`pk_id_usuario`, `usu_nome`, `usu_login`, `usu_senha`, `usu_admin`) VALUES
(1, 'Desenvolvedor e Testador', '', '', 1),
(2, 'José Carlos Albuquerque de Bragança', '2', '2', 0),
(4, 'Erico Rocha', '3', '3', 0),
(5, 'Gerente Irresponsável de Senha', '1', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_vendas`
--

CREATE TABLE `tbl_vendas` (
  `pk_id_vendas` bigint(20) UNSIGNED NOT NULL,
  `fk_cliente` bigint(20) UNSIGNED NOT NULL,
  `ven_data_venda` date NOT NULL,
  `ven_valor_liquido` double NOT NULL,
  `ven_valor_bruto` double NOT NULL,
  `ven_desc` double NOT NULL,
  `ven_usuario` varchar(100) NOT NULL,
  `ven_pagamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_vendas`
--

INSERT INTO `tbl_vendas` (`pk_id_vendas`, `fk_cliente`, `ven_data_venda`, `ven_valor_liquido`, `ven_valor_bruto`, `ven_desc`, `ven_usuario`, `ven_pagamento`) VALUES
(1, 1, '2018-08-18', 37.05, 39, 1.95, 'Desenvolvedor e Testador', 'DINHEIRO'),
(2, 1, '2018-08-18', 6281.3, 6281.3, 0, 'José Carlos Albuquerque de Bragança', 'CARTAO CREDITO 1X'),
(3, 4, '2018-08-18', 267.48, 249.99, -17.49, 'Desenvolvedor e Testador', 'CARTAO CREDITO 12X'),
(4, 6, '2018-08-19', 12.34, 12.99, 0.65, 'Desenvolvedor e Testador', 'DINHEIRO'),
(5, 2, '2018-08-19', 333.18, 343.48, 10.3, 'Desenvolvedor e Testador', 'CARTAO DEBITO'),
(6, 5, '2018-08-19', 97, 100, 3, 'Desenvolvedor e Testador', 'CARTAO DEBITO'),
(7, 4, '2018-08-19', 61.7, 59.900000000000006, -1.8, 'Desenvolvedor e Testador', 'CARTAO CREDITO 5X'),
(8, 1, '2018-08-19', 1020.42, 1051.98, 31.56, 'José Carlos Albuquerque de Bragança', 'CARTAO DEBITO'),
(10, 1, '2018-08-19', 482.51, 468.46, -14.05, 'Desenvolvedor e Testador', 'CARTAO CREDITO 3X'),
(11, 2, '2018-08-19', 346.12, 323.48, -22.64, 'Desenvolvedor e Testador', 'CARTAO CREDITO 12X'),
(13, 6, '2018-08-19', 37.05, 39, 1.95, 'Desenvolvedor e Testador', 'DINHEIRO'),
(14, 1, '2018-08-19', 457.41, 481.48, 24.07, 'Desenvolvedor e Testador', 'DINHEIRO'),
(15, 1, '2018-08-19', 10626.17, 9931, -695.17, 'Desenvolvedor e Testador', 'CARTAO CREDITO 12X');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_vendas_produtos`
--

CREATE TABLE `tbl_vendas_produtos` (
  `pk_id_venda_produto` bigint(20) UNSIGNED NOT NULL,
  `fk_produto` bigint(20) UNSIGNED NOT NULL,
  `fk_vendas` bigint(20) UNSIGNED NOT NULL,
  `ven_pro_valor` double NOT NULL,
  `ven_pro_quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_vendas_produtos`
--

INSERT INTO `tbl_vendas_produtos` (`pk_id_venda_produto`, `fk_produto`, `fk_vendas`, `ven_pro_valor`, `ven_pro_quantidade`) VALUES
(1, 10, 1, 39, 1),
(2, 10, 2, 39, 1),
(3, 11, 2, 100, 1),
(4, 12, 2, 656.77, 1),
(5, 1, 2, 10.1, 1),
(6, 13, 2, 49, 1),
(7, 14, 2, 4999.99, 1),
(8, 2, 2, 10.2, 1),
(9, 3, 2, 249.99, 1),
(10, 4, 2, 12.99, 1),
(11, 5, 2, 45.78, 1),
(12, 6, 2, 18.6, 1),
(13, 9, 2, 88.88, 1),
(14, 3, 3, 249.99, 1),
(15, 4, 4, 12.99, 1),
(16, 1, 5, 189.99, 1),
(17, 2, 5, 153.49, 1),
(18, 11, 6, 100, 1),
(20, 15, 7, 59.9, 1),
(21, 5, 8, 999.99, 1),
(22, 10, 8, 39, 1),
(23, 4, 8, 12.99, 1),
(38, 10, 10, 39, 1),
(39, 2, 10, 153.49, 1),
(40, 3, 10, 249.99, 1),
(41, 4, 10, 12.99, 2),
(45, 6, 11, 169.99, 1),
(46, 2, 11, 153.49, 1),
(50, 10, 13, 39, 1),
(51, 10, 14, 39, 1),
(52, 2, 14, 153.49, 1),
(53, 3, 14, 249.99, 1),
(54, 10, 14, 39, 1),
(55, 10, 14, 39, 1),
(56, 2, 14, 153.49, 1),
(57, 3, 14, 249.99, 1),
(58, 10, 14, 39, 1),
(59, 10, 15, 39, 1),
(60, 2, 15, 153.49, 1),
(61, 3, 15, 249.99, 1),
(62, 4, 15, 12.99, 1),
(63, 5, 15, 999.99, 1),
(64, 6, 15, 169.99, 1),
(65, 9, 15, 2249.9, 1),
(66, 1, 15, 189.99, 1),
(67, 11, 15, 100, 1),
(68, 12, 15, 656.77, 1),
(69, 13, 15, 49, 1),
(70, 14, 15, 4999.99, 1),
(71, 15, 15, 59.9, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`pk_id_cliente`),
  ADD UNIQUE KEY `id_cliente` (`pk_id_cliente`);

--
-- Indexes for table `tbl_forma_pagamento`
--
ALTER TABLE `tbl_forma_pagamento`
  ADD PRIMARY KEY (`pk_id_for_pag`);

--
-- Indexes for table `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD PRIMARY KEY (`pk_id_produto`),
  ADD UNIQUE KEY `pro_cod_barras` (`pro_barcode`);

--
-- Indexes for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`pk_id_usuario`);

--
-- Indexes for table `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD PRIMARY KEY (`pk_id_vendas`),
  ADD KEY `fkcliente` (`fk_cliente`);

--
-- Indexes for table `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  ADD PRIMARY KEY (`pk_id_venda_produto`),
  ADD KEY `fkprodutos` (`fk_produto`),
  ADD KEY `fkvendas` (`fk_vendas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `pk_id_cliente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_forma_pagamento`
--
ALTER TABLE `tbl_forma_pagamento`
  MODIFY `pk_id_for_pag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_produto`
--
ALTER TABLE `tbl_produto`
  MODIFY `pk_id_produto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `pk_id_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  MODIFY `pk_id_vendas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  MODIFY `pk_id_venda_produto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD CONSTRAINT `tbl_ven_fk1` FOREIGN KEY (`fk_cliente`) REFERENCES `tbl_cliente` (`pk_id_cliente`);

--
-- Limitadores para a tabela `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  ADD CONSTRAINT `tbl_ven_pro_fk1` FOREIGN KEY (`fk_produto`) REFERENCES `tbl_produto` (`pk_id_produto`),
  ADD CONSTRAINT `tbl_ven_pro_fk2` FOREIGN KEY (`fk_vendas`) REFERENCES `tbl_vendas` (`pk_id_vendas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
