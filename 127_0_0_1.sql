-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 08-Jun-2023 às 10:34
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_degmap`
--
CREATE DATABASE IF NOT EXISTS `bd_degmap` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bd_degmap`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `deg`
--

DROP TABLE IF EXISTS `deg`;
CREATE TABLE IF NOT EXISTS `deg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(32) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `comuna` varchar(32) DEFAULT NULL,
  `bairro` varchar(32) DEFAULT NULL,
  `rua` varchar(32) DEFAULT NULL,
  `estado` varchar(32) DEFAULT NULL,
  `intervencao` varchar(16) DEFAULT NULL,
  `altitude` varchar(32) DEFAULT NULL,
  `longitude` varchar(32) DEFAULT NULL,
  `fk_usuario_id` int(11) DEFAULT NULL,
  `data_registo` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `deg`
--

INSERT INTO `deg` (`id`, `nome`, `descricao`, `comuna`, `bairro`, `rua`, `estado`, `intervencao`, `altitude`, `longitude`, `fk_usuario_id`, `data_registo`) VALUES
(33, 'Prédio', 'Pilares em degradação', 'Cuito', 'Catemo', 'Rua da Escola 15', 'Baixo', 'Nenhuma', '1', '2', 46, '2023-06-06 17:24:00'),
(32, 'Ponte', 'Atravessa a floresta', 'Cuito', 'Azul', 'Rua do IMPAG', 'Alto', 'Em andamento', '1', '2', 45, '2023-06-06 16:58:47'),
(34, 'Ravina perigosa', 'Está a nascer uma ravina na estrada que vai em direção ao aeroporto.', 'Cuito', 'Cambulucuto', 'Rua da escola 13', 'Estágio Inicial', 'Nenhuma', '1', '2', 45, '2023-06-07 05:51:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

DROP TABLE IF EXISTS `imagens`;
CREATE TABLE IF NOT EXISTS `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(48) DEFAULT NULL,
  `fk_deg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`id`, `nome`, `fk_deg_id`) VALUES
(1, NULL, NULL),
(31, '32d9bea2a710fc9426db34b03e5307d1.jpg', 33),
(30, '28d3673fd4b2d0ea5416b0262218edee.jpg', 32),
(32, 'abd6802c0cfb60faef909ed3923b659e.jpg', 34);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessoes`
--

DROP TABLE IF EXISTS `sessoes`;
CREATE TABLE IF NOT EXISTS `sessoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actividade` varchar(255) DEFAULT NULL,
  `fk_usuario_id` int(11) DEFAULT NULL,
  `data_registo` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `sessoes`
--

INSERT INTO `sessoes` (`id`, `actividade`, `fk_usuario_id`, `data_registo`) VALUES
(89, 'A degradação (asdsfghj) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:53:25'),
(90, 'A degradação (asdsfghj) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:54:41'),
(88, 'A degradação (asdsfghj) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:52:41'),
(87, 'A degradação (fa) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:49:58'),
(86, 'A degradação (fa) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:49:44'),
(85, 'A degradação (fa) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:48:01'),
(84, 'A degradação (fa) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:46:53'),
(83, 'A degradação (fa) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:45:44'),
(82, 'A degradação (Abílio jey) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:44:49'),
(81, 'A degradação (Abílio jey) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 16:44:10'),
(80, 'A degradação () foi eliminado pelo usuario 45', 45, '2023-06-06 14:44:45'),
(79, 'A degradação () foi eliminado pelo usuario 45', 45, '2023-06-06 14:44:40'),
(78, 'A degradação () foi eliminado pelo usuario 45', 45, '2023-06-06 14:44:08'),
(77, 'A degradação (testando) foi eliminado pelo usuario 45', 45, '2023-06-06 14:43:25'),
(76, 'A degradação (Abílio jey) foi eliminado pelo usuario 45', 45, '2023-06-06 14:43:22'),
(75, 'A degradação (Abílio jey 🙄⭐) foi eliminado pelo usuario 45', 45, '2023-06-06 14:43:16'),
(74, 'A degradação (Abílio jey 🙄⭐hh) foi eliminado pelo usuario 45', 45, '2023-06-06 14:43:10'),
(73, 'A degradação (Jey) foi eliminado pelo usuario 45', 45, '2023-06-06 14:43:06'),
(72, 'A degradação (Abílio jey 🙄⭐hhm) foi eliminado pelo usuario 45', 45, '2023-06-06 14:42:48'),
(71, 'A degradação (Abílio je) foi eliminado pelo usuario 45', 45, '2023-06-06 14:42:45'),
(70, 'A degradação (Abílio j) foi eliminado pelo usuario 45', 45, '2023-06-06 14:42:41'),
(69, 'A degradação (jl) foi eliminado pelo usuario 45', 45, '2023-06-06 14:42:37'),
(68, 'A degradação (jll) foi eliminado pelo usuario 45', 45, '2023-06-06 14:42:31'),
(67, 'A degradação (jlla) foi eliminado pelo usuario 45', 45, '2023-06-06 14:42:27'),
(66, 'A degradação (Abílio) foi cadastrada pelo usuario com id ->45', 45, '2023-06-06 14:16:39'),
(65, 'A degradação (asdsfghj) foi cadastrada pelo usuario com id ->45', 45, '2023-06-06 14:04:21'),
(64, 'O usuário com id 45 terminou sessão.', 45, '2023-06-05 10:53:46'),
(63, 'A degradação (fa) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 10:44:35'),
(62, 'A degradação (jlla) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 10:37:15'),
(61, 'A degradação (jll) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 10:35:32'),
(60, 'A degradação (jl) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 10:33:51'),
(59, 'A degradação (Abílio j) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 08:01:48'),
(58, 'A degradação (Abílio je) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 07:58:09'),
(57, 'A degradação (Abílio jey 🙄⭐hhm) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 07:55:43'),
(56, 'A degradação (Abílio jey 🙄⭐hh) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 07:53:33'),
(55, 'A degradação (Abílio jey 🙄⭐) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 07:46:24'),
(54, 'A degradação (Abílio jey) foi cadastrada pelo usuario com id ->45', 45, '2023-06-05 07:39:46'),
(53, 'O usuário com id  terminou sessão.', NULL, '2023-06-05 07:32:31'),
(91, 'A degradação (asdsfghj) foi eliminado pelo usuario 45', 45, '2023-06-06 16:57:10'),
(92, 'A degradação (Ponte) foi cadastrada pelo usuario com id ->45', 45, '2023-06-06 16:58:47'),
(93, 'O usuário com id 45 terminou sessão.', 45, '2023-06-06 17:20:24'),
(94, 'A degradação (Prédio) foi cadastrada pelo usuario com id ->46', 46, '2023-06-06 17:24:00'),
(95, 'O usuário com id 46 terminou sessão.', 46, '2023-06-06 17:24:50'),
(96, 'A degradação (Prédio) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 17:33:26'),
(97, 'A degradação (Prédio) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 17:34:49'),
(98, 'A degradação (Prédio) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 17:53:13'),
(99, 'A degradação (Angolanamente) foi Editada pelo usuario com id ->45', NULL, '2023-06-06 17:57:48'),
(100, 'O usuário com id 45 terminou sessão.', 45, '2023-06-06 18:08:00'),
(101, 'A degradação (Prédio) foi Editada pelo usuario com id ->45', NULL, '2023-06-07 04:38:07'),
(102, 'A degradação (Abílio jey) foi eliminado pelo usuario 45', 45, '2023-06-07 05:48:55'),
(103, 'A degradação (Ravina) foi cadastrada pelo usuario com id ->45', 45, '2023-06-07 05:51:56'),
(104, 'O usuário com id 45 terminou sessão.', 45, '2023-06-07 06:02:44'),
(105, 'O usuário com id 46 terminou sessão.', 46, '2023-06-07 09:08:18'),
(106, 'A degradação (Ravina Enorme) foi Editada pelo usuario com id ->45', NULL, '2023-06-07 13:21:54'),
(107, 'A degradação (Ravina perigosa) foi Editada pelo usuario com id ->45', 45, '2023-06-07 14:44:32'),
(108, 'O usuário com id 45 terminou sessão.', 45, '2023-06-07 17:07:22'),
(109, 'A degradação (Angolanamente) foi eliminado pelo admin 45', 45, '2023-06-07 22:56:40'),
(110, 'O usuário com id 45 terminou sessão.', 45, '2023-06-07 22:56:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(42) DEFAULT NULL,
  `telefone` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `senha` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_registo` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `telefone`, `email`, `senha`, `data_registo`) VALUES
(45, 'Abílio jey', '123456789', 'abilio@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-04 20:52:09'),
(46, 'Outro Abílio', '9234567', 'jey@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-06 17:22:50'),
(47, 'testando', '1234567', 'aj@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-07 23:04:28');
--
-- Banco de dados: `canalti`
--
CREATE DATABASE IF NOT EXISTS `canalti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `canalti`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

DROP TABLE IF EXISTS `livro`;
CREATE TABLE IF NOT EXISTS `livro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `nome`) VALUES
(1, 'Code Clean'),
(2, 'Engenharia de Software'),
(3, 'Domain Driven Design'),
(4, 'Livro teste');
--
-- Banco de dados: `crupdo`
--
CREATE DATABASE IF NOT EXISTS `crupdo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `crupdo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `email`, `telefone`) VALUES
(12, 'Abílio jey', 'j@hotmail.com', '947264097'),
(15, 'Jey', 'jey@hotmail.com', '947264097');
--
-- Banco de dados: `empresas`
--
CREATE DATABASE IF NOT EXISTS `empresas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `empresas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `area` varchar(50) DEFAULT (_utf8mb4'Fisacalização,Construção,Prestação de serviços'),
  `ano` date DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nome`, `email`, `area`, `ano`) VALUES
(17, 'Abílio jey  5⭐', 'j11@hotmail.com', 'Fiscalização', '2022-02-17'),
(18, 'Russia Friends-РОССИЯ Друзья', 'yyy@hotmail.com', 'ИЯ Друзья', '2022-02-07');
--
-- Banco de dados: `gabinete`
--
CREATE DATABASE IF NOT EXISTS `gabinete` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gabinete`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `observacao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `costrucao`
--

DROP TABLE IF EXISTS `costrucao`;
CREATE TABLE IF NOT EXISTS `costrucao` (
  `fk_empresas_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_empresas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

DROP TABLE IF EXISTS `empresas`;
CREATE TABLE IF NOT EXISTS `empresas` (
  `categoria` varchar(50) DEFAULT NULL,
  `numero_cadastro` varchar(50) DEFAULT NULL,
  `ano` date DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`categoria`, `numero_cadastro`, `ano`, `nome`, `id`) VALUES
('Fiscalização', 'JEYLTDA/2023', '2023-05-08', 'Jey Ltda', 16),
('Fiscalização', 'EDYLDT/2023', '2023-05-24', 'EdyLdt', 17),
('Construção', 'OMATAPALO/2023', '2023-05-21', 'Omatapalo', 20),
('Construção', 'ANILC/2023', '2023-05-25', 'Anil Construções', 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiscalizacao`
--

DROP TABLE IF EXISTS `fiscalizacao`;
CREATE TABLE IF NOT EXISTS `fiscalizacao` (
  `fk_empresas_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_empresas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

DROP TABLE IF EXISTS `imagens`;
CREATE TABLE IF NOT EXISTS `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `fk_obra_id` int(11) DEFAULT NULL,
  `fk_usuario_id` int(11) DEFAULT NULL,
  `fk_relatorio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_imagens_2` (`fk_obra_id`),
  KEY `FK_imagens_3` (`fk_relatorio_id`),
  KEY `FK_imagens_4` (`fk_usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`id`, `nome`, `fk_obra_id`, `fk_usuario_id`, `fk_relatorio_id`) VALUES
(32, '0f63fa95e090c6f8200ddb9bf3997b2a.jpg', 24, NULL, NULL),
(31, 'dc2922ee454440e51f8b30b02e5beb3b.jpg', NULL, NULL, 9),
(30, '623fc14e18160e5b9d40fee7c824e935.jpg', NULL, NULL, 9),
(33, '581b222d42fd391a472bac7c69f0b4d5.jpg', 25, NULL, NULL),
(28, 'f0ea7d4dbbf4ddc5cc5cb944654ce8b7.jpg', NULL, NULL, 8),
(27, '70d2f5f2c63737fc1bb1659f0cd2afdf.jpg', NULL, NULL, 8),
(26, '82b663e1e9804f849146114fc3d58205.jpg', NULL, NULL, 8),
(25, '1e11a9a36636575ecd0e90d0851d9fac.jpg', NULL, NULL, 7),
(23, 'fa2f3ddb43f4c74a24dff39757cff919.jpg', NULL, NULL, 6),
(22, 'e449475fe590c036a703a2d440c6496a.jpg', NULL, NULL, 6),
(24, 'ae4bf24e47d37572ac5e04bb6a422dac.jpg', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `id_medico` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `especialidade` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `dataa` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`id_medico`, `nome`, `email`, `especialidade`, `telefone`, `dataa`, `hora`) VALUES
(1, 'Mateus Orlando', 'joao12@gmail.com', 'OrtopÃ©dico', '987643557', '2023-05-22', '13:07:00'),
(2, 'Mateus Orlando', 'medico1@gmail.com', 'Dentista', '987643557', '2023-05-24', '11:13:00'),
(3, 'Artur Paulo', 'medico2@gmail.com', 'Ginecologista', '933354456', '2023-05-23', '13:16:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra`
--

DROP TABLE IF EXISTS `obra`;
CREATE TABLE IF NOT EXISTS `obra` (
  `duracao` smallint(6) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `orcamento` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `fk_fiscalizacao_id` int(11) DEFAULT NULL,
  `fk_costrucao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_obra_2` (`fk_fiscalizacao_id`),
  KEY `FK_obra_3` (`fk_costrucao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `obra`
--

INSERT INTO `obra` (`duracao`, `nome`, `orcamento`, `id`, `estado`, `fk_fiscalizacao_id`, `fk_costrucao_id`) VALUES
(4, 'Estrada 250', '12,435,345.999', 22, 'Em construção', 16, 21),
(5, 'testando123', '12.435.345,999', 25, 'Em construção', 17, 21),
(3, 'testando', '12.435.345,999', 24, 'Em construção', 17, 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `id_paciente` int(11) NOT NULL,
  `motivo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `morada` varchar(45) NOT NULL,
  `idade` int(11) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `profissao` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
CREATE TABLE IF NOT EXISTS `relatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) DEFAULT NULL,
  `ponto_situacao` varchar(255) DEFAULT NULL,
  `irregularidades` varchar(255) DEFAULT NULL,
  `recomendacoes` varchar(255) DEFAULT NULL,
  `exec_financeira` int(11) DEFAULT NULL,
  `exec_fisica` int(11) DEFAULT NULL,
  `fk_obra_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_relatorio_2` (`fk_obra_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `relatorio`
--

INSERT INTO `relatorio` (`id`, `nome`, `ponto_situacao`, `irregularidades`, `recomendacoes`, `exec_financeira`, `exec_fisica`, `fk_obra_id`) VALUES
(7, 'Relatório1', 'Ponto1; Ponto2; Ponto3; Ponto4', 'Ponto1; Ponto2; Ponto3; Ponto4', 'Ponto1; Ponto2; Ponto3; Ponto4', 22, 35, 22),
(8, 'relatório2', 'Este é um ponto de situação; Este é outro ponto de situação; Este também é um  ponto de situação.', 'Este é um ponto de irregularidade; Este é outro ponto de irregularidade; Este também é um  ponto de irregularidade.', 'Este é um ponto de recomendação; Este é outro ponto de recomendação; Este também é um  ponto de recomendação.', 31, 50, 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `secretaria`
--

DROP TABLE IF EXISTS `secretaria`;
CREATE TABLE IF NOT EXISTS `secretaria` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `seccao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secretaria`
--

INSERT INTO `secretaria` (`id`, `nome`, `email`, `telefone`, `seccao`) VALUES
(1, 'Manuela Antunes', 'manuela@gmail.com', '987643557', 'SecÃ§Ã£o1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `senha` varchar(99) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `senha`, `email`) VALUES
(5, 'Ab&iacute;lio jey', 'e10adc3949ba59abbe56e057f20f883e', 'jey@hotmail.com'),
(3, 'testando', 'e10adc3949ba59abbe56e057f20f883e', 'j@hotmail.com'),
(4, 'Ab&iacute;lio jeyy', 'e10adc3949ba59abbe56e057f20f883e', 'aj@hotmail.com');
--
-- Banco de dados: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `telefone`, `email`, `senha`) VALUES
(2, 'Abílio jey', '999990998', 'aj@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'testando', '999990998', 'j@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'ABILIO', '947264097', 'ajey@jey.com', 'e10adc3949ba59abbe56e057f20f883e');
--
-- Banco de dados: `marcacao_consulta`
--
CREATE DATABASE IF NOT EXISTS `marcacao_consulta` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `marcacao_consulta`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `observacao` varchar(45) NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `especialidade` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `dataa` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`id_medico`, `nome`, `email`, `especialidade`, `telefone`, `dataa`, `hora`) VALUES
(1, 'Mateus Orlando', 'joao12@gmail.com', 'OrtopÃ©dico', '987643557', '2023-05-22', '13:07:00'),
(2, 'Mateus Orlando', 'medico1@gmail.com', 'Dentista', '987643557', '2023-05-24', '11:13:00'),
(3, 'Artur Paulo', 'medico2@gmail.com', 'Ginecologista', '933354456', '2023-05-23', '13:16:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `morada` varchar(45) NOT NULL,
  `idade` int(11) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `profissao` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secretaria`
--

DROP TABLE IF EXISTS `secretaria`;
CREATE TABLE IF NOT EXISTS `secretaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `seccao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secretaria`
--

INSERT INTO `secretaria` (`id`, `nome`, `email`, `telefone`, `seccao`) VALUES
(1, 'Manuela Antunes', 'manuela@gmail.com', '987643557', 'SecÃ§Ã£o1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `profissao` varchar(45) NOT NULL,
  `idade` int(11) NOT NULL,
  `morada` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `passwordd` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `sexo`, `email`, `profissao`, `idade`, `morada`, `telefone`, `passwordd`) VALUES
(1, 'João Fernando Matias', 'Masculino', 'admin@gmail.com', 'Administrador', 25, 'Luanda', '939390070', 'Joao2023'),
(2, 'admin', 'Masculino', 'joao12@gmail.com', 'Carpinteiro/a', 25, 'Cuito', '939390070', 'vvvvv'),
(3, 'admin', 'Masculino', 'joao12@gmail.com', 'Estudante', 25, 'Cuito', '939390070', '7777'),
(4, 'admin', 'Masculino', 'joao12@gmail.com', 'Professor/a', 25, 'Katabola', 'mm', '6666'),
(5, 'admin', 'Masculino', 'joao12@gmail.com', 'Professor/a', 25, 'Chitembo', '987643557', 'mm'),
(6, 'Mateus Orlando', 'Feminino', 'fff', 'MÃ©dico/a', 22, 'Kunje', 'mm', '8888'),
(7, 'mmm', 'Masculino', 'nnnnnn', 'Professor/a', 25, 'Nharea', '933354456', 'nn'),
(8, 'admin', 'Feminino', 'nnnnnn', 'Carpinteiro/a', 11, 'Nharea', '987643557', 'cccc'),
(9, 'Joaquim', 'Masculino', 'kaka@gmail.com', 'Estudante', 22, 'Kunje', '22222', '1234'),
(10, 'Teresa Miguel', 'Feminino', 'teresa@gmail.com', 'MÃ©dico/a', 23, 'Cuito', '2445533', '1234'),
(11, 'Setosse', 'Masculino', 'kaka@gmail.com', 'Estudante', 24, 'Kunje', '1111111', '1234');
--
-- Banco de dados: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` text,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`id`, `id_usuario`, `titulo`, `texto`, `data_criacao`) VALUES
(16, 23, 'Tittle', 'Olá!! este é o primeiro comentário que eu faço! Tudo bom? Como vocês estão? Como têm passado? como está vossas famílias? Por onde têm andado todos vocês?', '2022-08-10 00:04:11'),
(14, 18, 'SOU EU', 'OLÁ TUDO BEM?\r\nCOMO VAI?\r\nE A FAMÍLIA? COMO ESTÁ?', '2022-08-01 15:35:45'),
(9, 1, 'jey CAMPOS', 'mais jey', '2022-07-26 06:34:10'),
(8, 1, 'jey', 'mais jey', '2022-07-26 06:03:13'),
(12, 18, 'Desportos e saúde', 'Desportos são de extrema importância para a nossa sociedade e não só.', '2022-07-27 09:58:22'),
(15, 18, 'WDEFW', 'WFAWGREGERG', '2022-08-01 16:49:23'),
(18, 24, 'ola!', 'eu sou Abílio Campos', '2023-06-03 20:28:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `data_criacao`) VALUES
(1, 'Abílio jey', 'a@a.a', '$2y$10$Y6BNvMTb40CUDwZV2wCfZuxVt', '2022-07-26 22:19:35'),
(27, 'testando', 'a@a.ao', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-04 18:17:05'),
(24, 'Abílio jey', 'jj@jj.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-03 20:26:06'),
(25, 'testando', 'abilio@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-04 15:28:41'),
(26, 'testando', 'q@q.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-04 17:09:56'),
(28, 'testando', 'aa@aa.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-06-04 19:33:44'),
(23, 'Jey', 'e@e.e', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-10 00:01:18');
--
-- Banco de dados: `primeiro`
--
CREATE DATABASE IF NOT EXISTS `primeiro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `primeiro`;
--
-- Banco de dados: `projecto2`
--
CREATE DATABASE IF NOT EXISTS `projecto2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `projecto2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `immagens`
--

DROP TABLE IF EXISTS `immagens`;
CREATE TABLE IF NOT EXISTS `immagens` (
  `id_imagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome_imagem` varchar(40) DEFAULT NULL,
  `fk_id_produto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imagem`),
  KEY `fk_id_produto` (`fk_id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `immagens`
--

INSERT INTO `immagens` (`id_imagem`, `nome_imagem`, `fk_id_produto`) VALUES
(11, '9ec6ef7dd47a19a57ba95f0800f7b6d3.jpg', 9),
(9, '61fbd53afd7013d7f4d670fb8f5c4ce0.jpg', 9),
(10, '37a8082c19fd6a91380b9fc9f85e6dba.jpg', 9),
(12, 'dbeba9cb22b5631be8b36967ce6e83dd.jpg', 9),
(13, '1c2522620ff1208db1f06afc61c3aaf1.jpg', 10),
(14, 'ad55a815253d9c4ea640b6096b1b9e8b.jpg', 10),
(15, '086c422a074b3272089d2a40de7e9ec7.jpg', 10),
(16, '3812d52c5b7b1d04f13ac0c5b92288fb.jpg', 10),
(17, '55c5e67822462cae9c91abe727aa5ea1.jpg', 11),
(18, '73cb3529e25e5a7f3ab3d9ae6ca24b0a.jpg', 11),
(19, 'eec307f7dec1c3a1382d55fa4e56bc65.jpg', 12),
(20, '5715b85615ba35bbbaa8ef18986b0ceb.jpg', 12),
(21, 'f2754bcd06b557c70a2a6a015ef6d7a5.jpg', 12),
(22, 'befb9a90d6e3254b6711d1d9ce7dd21b.jpg', 12),
(23, 'c55cb6f45eacff09b494a9d477abcb17.jpg', 12),
(24, 'c228959a8fe3da560b4a5975ae91b25e.jpg', 13),
(25, '25d95435113362fbb08665d89f83f3f3.jpg', 13),
(26, '9273485a1e6ede659953aa33c467c04b.jpg', 13),
(27, '04b9660d4cf95a10389ffeca598dcf16.jpg', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(40) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome_produto`, `descricao`) VALUES
(12, 'Jey', 'É meigo e carismático!'),
(13, 'Abílio jeyy', 'Sou fodido!'),
(11, 'Abílio jey', 'qualquer');
--
-- Banco de dados: `projecto5`
--
CREATE DATABASE IF NOT EXISTS `projecto5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `projecto5`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(400) DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `horario` varchar(5) DEFAULT NULL,
  `fk_id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_usuario` (`fk_id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `dia`, `horario`, `fk_id_usuario`) VALUES
(12, 'Ricos seguem o curso das pessoas, não o dos ricos', '2009-12-29', '04:00', 1),
(16, 'O crescimento é necessário, mas nunca deixe de viver de forma alegre 🙂', '2022-05-23', '09:45', 3),
(14, 'É bom ser bom!', '2022-05-22', '00:26', 3),
(10, 'Seja um homem incomum', '2009-11-29', '04:00', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Ab&iacute;lio jey', 'abilio@jey.jey', 'ec6a6536ca304edf844d1d248a4f08dc'),
(2, 'Paulo', 'jey@abilio.jey', '1f32aa4c9a1d2ea010adcf2348166a04'),
(3, 'Jeyson Campos', 'abilio@abilio.jey', '1f32aa4c9a1d2ea010adcf2348166a04'),
(4, 'Jana Campos', 'abilio@abilio.abilio', 'ec6a6536ca304edf844d1d248a4f08dc');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
