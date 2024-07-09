-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2024 pada 15.41
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si-periksa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_periksa`
--

CREATE TABLE `tb_periksa` (
  `id_periksa` varchar(15) NOT NULL,
  `id_pasien` varchar(15) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `keluhan` text NOT NULL,
  `catatan` text NOT NULL,
  `status` enum('BL','D','S','BTL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_periksa`
--

INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES
('A001QiADwG', 'P018YFQcN0', '42', '2024-07-09', 'nj', '', 'BL'),
('A002jBCjfJ', 'P022jfvCjf', '22', '2024-07-09', 'g', '', 'BL'),
('A0031YVbVy', 'P026CWwgVp', '48', '2024-07-09', 'j', '', 'BL'),
('A004N5CoFj', 'P058gQUNtO', '75', '2024-07-09', 'l', '', 'BL'),
('A005B3IKZ1', 'P049TuVVe0', '67', '2024-07-09', 'j', '', 'BL'),
('A006Mqr9pq', 'P009KHLuHH', '65', '2024-07-09', 'j', '', 'BL'),
('A0072DuIuA', 'P004106mmk', '70', '2024-07-09', 'm', '', 'BL');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_periksa`
--
ALTER TABLE `tb_periksa`
  ADD PRIMARY KEY (`id_periksa`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_periksa`
--
ALTER TABLE `tb_periksa`
  ADD CONSTRAINT `tb_periksa_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
