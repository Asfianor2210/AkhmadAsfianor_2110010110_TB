-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2024 pada 09.24
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyewaanpc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` bigint(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `nama`, `no_hp`, `alamat`) VALUES
('B001', 'Zen', 81241213141, 'JL.Kayu Tangi'),
('C002', 'HUSEIN', 80808080808, 'GG. SUMBEREJO'),
('C003', 'Asfianor', 81250183293, 'Jl Handil Bakti'),
('C004', 'Taufik', 81259812131, 'Jl.Vetran'),
('C006', 'Akhmad Asfianor', 81250183294, 'Jl. Handil Bakti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pc`
--

CREATE TABLE `data_pc` (
  `id` varchar(50) NOT NULL,
  `pc` varchar(50) NOT NULL,
  `harga_per_jam` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pc`
--

INSERT INTO `data_pc` (`id`, `pc`, `harga_per_jam`) VALUES
('PC001', 'ASUS', 30000),
('PC002', 'ACER', 25000),
('PC003', 'Lenovo', 50000),
('PC004', 'HP', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pc` varchar(25) NOT NULL,
  `harga_per_jam` bigint(100) NOT NULL,
  `lama_sewa` int(100) NOT NULL,
  `tanggal_sewa` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(15) NOT NULL,
  `total_harga` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `nama`, `no_hp`, `alamat`, `pc`, `harga_per_jam`, `lama_sewa`, `tanggal_sewa`, `tanggal_selesai`, `total_harga`) VALUES
('B001', 'Zen', 81241213141, 'JL.Kayu Tangi', 'ACER', 25000, 5, '27/12/2023', '27/12/2023', 125000),
('C002', 'Akhmad', 8121312131, 'GG. Kelayan', 'ACER', 20000, 5, '15/01/2023', '15/01/2023', 100000),
('C003', 'Asfi', 81250183293, 'Jl Handil Bakti', 'ACER', 25000, 2, '21/12/2023', '21/12/2023', 50000),
('C004', 'Taufik', 81259812131, 'Jl.Vetran', 'ASUS', 30000, 5, '21/12/2023', '21/12/2023', 150000),
('C006', 'Akhmad Asfianor', 81250183294, 'Jl. Kayu Tangi', 'Lenovo', 50000, 5, '05/01/2024', '05/01/2024', 250000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pc`
--
ALTER TABLE `data_pc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
