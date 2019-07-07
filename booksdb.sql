-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 10:27 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booksdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `idbuku` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `imgfile` varchar(100) DEFAULT NULL,
  `sinopsis` text,
  `thnterbit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idbuku`, `judul`, `pengarang`, `penerbit`, `idkategori`, `imgfile`, `sinopsis`, `thnterbit`) VALUES
(4, 'Cara Install Ubuntu', 'Bowo', 'AISH', 1, '', '', 2019),
(6, 'Lupa Aku', 'AKU', 'RIA', 1, '', '', 2020),
(8, 'Daun Yang Jatuh Tak Pernah Membenci Angin', 'Tere Liye', 'Gramedia', 6, '', '', 2016),
(10, 'Nostalgia', 'Natalya Candrakirana', 'Erlangga', 6, '', '', 2007),
(13, 'Konservasi Berkelanjutan Kawasan Cagar Budaya Kauman Surakarta', 'Musyawaroh', '-', 5, '', '', 2018),
(14, 'Hubungan Keterlibatan Orangtua dengan Kesiapan Sekolah Anak Masuk SD', 'Fanny Ayustina Astari', 'FKIP', 3, '', '', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `kategori`) VALUES
(1, 'Buku Teks'),
(2, 'Majalah'),
(3, 'Skripsi'),
(4, 'Thesis'),
(5, 'Disertasi'),
(6, 'Novel'),
(9, 'Komik'),
(10, 'News');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `idrole` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `idrole`) VALUES
('admin', '123456', 'admin', 'admin'),
('Ria', '123', 'Chrisria', 'operator'),
('rosihanari', '123456', 'Rosihan Ari Yuana', 'Operator'),
('saya', '1010', 'Saya Chrisria', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idbuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
