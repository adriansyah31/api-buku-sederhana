-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 03:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `tempat_terbit` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `pengarang`, `penerbit`, `tahun`, `tempat_terbit`, `jenis`, `created_at`) VALUES
(1, 'Administrasi Pembangunan', 'Prof. Dr. Sondang P. Siagian, M.PA', 'Bumi Aksara', '2009', 'Jakarta', 'Administrasi', '2024-12-15 03:41:00'),
(2, 'Aids disekeliling kita', 'Bisma Raga Waluya', 'Plonir Jaya', '2000', 'Bandung', 'Umum', '2024-12-15 03:58:48'),
(3, 'Analisis data untuk penelitian kesehatan', 'Danang Sunyolo', 'Nuha Medika', '2011', 'Yogyakarta', 'Statistik', '2024-12-15 03:58:48'),
(4, 'An english-indonesia dictionary', 'John M. Echols', 'Gramedia Pustaka Utama', '2003', 'Jakarta', 'Umum', '2024-12-15 03:58:48'),
(5, 'Analisis dan aspek kesehatan bahan tambahan pangan', 'Dr. Ir. Wisnu Cahyadi M.Si', 'Bumi Aksara', '2009', 'Jakarta', 'Ilmu Gizi', '2024-12-15 03:58:48'),
(6, 'Analisis data kesehatan', 'Sutanto Priyo Hastono', 'FKMUI', '2007', 'Jakata', 'Statistik', '2024-12-15 03:58:48'),
(7, 'Analisis data pada penelitian kualitatif', 'H. Boy S. Sabarguna', 'UI Press', '2008', 'Jakarta', 'Statistik', '2024-12-15 03:58:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
