-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2020 at 01:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(6, 'ホセ', 'jose', 'jose', 0, 0),
(11, 'アンヘラ', 'angela', 'angela', 1, 1),
(12, 'ダビッド', 'david', 'david', 0, 0),
(14, 'アルバロ', 'alvaro', 'alvaro', 0, 1),
(15, 'エレナ', 'helena', 'helena', 1, 0),
(24, 'シルビア', 'silvia', 'silvia', 1, 0),
(25, 'アントニオ', 'antonio', 'antonio', 0, 0),
(26, 'セルヒオ', 'sergio', 'sergio', 0, 0),
(27, 'ルイス', 'luis', 'luis', 0, 0),
(28, 'ソフィア', 'sofia', 'sofia', 1, 0),
(29, 'コンチータ', 'conchita', 'conchita', 1, 0),
(30, 'ピケ', 'pique', 'pique', 0, 0),
(31, 'アレハンドロ', 'alejandro', 'alejandro', 0, 0),
(32, 'アリシア', 'alicia', 'alicia', 1, 0),
(33, 'アナ', 'ana', 'ana', 1, 0),
(34, 'ダニエラ', 'daniela', 'daniela', 1, 0),
(35, 'ドロレス', 'dolores', 'dolores', 1, 0),
(36, 'ガブリエラ', 'gabriela', 'gabriela', 1, 0),
(37, 'アンヘル', 'angel', 'angel', 0, 0),
(38, 'エンリケ', 'enrique', 'enrique', 0, 0),
(39, 'フリオ', 'julio', 'jujio', 0, 0),
(40, 'エドゥアルド', 'eduardo', 'eduardo', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
