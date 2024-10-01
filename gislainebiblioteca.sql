-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2024 às 23:25
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolucao`, `CodLivro`, `CodLeitor`) VALUES
(1, '2024-09-14', '2024-09-25', 1, 1),
(2, '2024-08-07', '2024-08-15', 2, 2),
(3, '2024-07-03', '2024-07-15', 6, 3),
(4, '2024-06-05', '2024-06-15', 7, 4),
(5, '2024-05-01', '2024-05-14', 5, 5),
(6, '2024-04-03', '2024-04-16', 2, 1),
(7, '2024-03-08', '2024-03-16', 6, 2),
(8, '2024-02-10', '2024-10-20', 6, 3),
(9, '2024-01-11', '2024-10-20', 7, 5),
(10, '2023-12-10', '2023-12-20', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'Gislaine Souza', '2006-09-14', '(81)988483655', 'gigisouzapereira18@gmail.com', 8683, 'Rua Triunfo', '60', 'Arthur Lundgren 1', 'PE'),
(4, 'Laís Vitória', '2007-07-26', '(81)988901939', 'laiscarvalho@gmail.com', 8981, 'Rua Cônego Costa Carvalho', '287', 'Maranguape 1', 'PE'),
(5, 'Shamara Karolina', '2007-05-21', '(81)983255207', 'shamarakarolina@gmail.com', 7472, 'Rua 42A', '65', 'Caetées 3', 'Abreu e Lima/PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 'Editora Carambaia', 'Emily Inglethorp, madrasta de John e Laurence Cavendish, herdou a propriedade de seu marido e tem todo o controle sobre patrimônio da família. Seu segundo marido é Alfred Inglethorp, vinte anos mais novo, cujo passado é nebuloso, o que causa enorme apreen', 1920, 'Romance, Ficção Policial, Mistério', 288),
(2, 'O Misterioso Caso Style', 'Agatha Christie', 'Livraria Civilização', 'Emily Inglethorp, madrasta de John e Laurence Cavendish, herdou a propriedade de seu marido e tem todo o controle sobre patrimônio da família. Seu segundo marido é Alfred Inglethorp, vinte anos mais novo, cujo passado é nebuloso, o que causa enorme apreen', 1920, 'Romance, Ficção Policial, Mistério', 288),
(5, 'Treze á Mesa', 'Agatha Christie', 'L&PM; 1ª edição (22 junho 2021))', 'A bela atriz americana Jane Wilkinson pede que o detetive Hercule Poirot a ajude a se divorciar do barão Edgware, um excêntrico antipático com quem ela viveu por pouco tempo. Jane quer se casar com um duque. Pouco depois, o barão é encontrado morto em sua', 1933, 'Romance Policial', 240),
(6, 'O Sol é Para Todos', 'Harper Lee', ' Grupo Editorial Record.', 'O filme é baseado no livro de Harper Lee sobre uma cidade cheia de preconceitos no sul dos Estados Unidos na década de 30. A história é contada sob a perspectiva de duas crianças cujo pai é um advogado liberal que defende um lavrador negro acusado de estu', 1960, 'Romance e Ficção Literária', 349),
(7, 'Percy Jackson: Ladrões de Raio', 'Rick Jordan', 'Intrínseca; 1ª edição (11 agosto 2014)', 'O raio-mestre de Zeus foi roubado, e é Percy quem deve resgatá-lo. Com a ajuda de novos amigos — um sátiro e a filha de uma deusa —, Percy tem dez dias para reaver o raio, que representa a destruição original, e restabelecer a paz no Olimpo. Para consegui', 2008, 'Ficção Científica', 400);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodLeitor` (`CodLeitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leitores`
--
ALTER TABLE `leitores`
  MODIFY `CodLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `CodLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
