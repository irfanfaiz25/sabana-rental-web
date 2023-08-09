-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2023 at 04:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sabana`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_rent` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_barang` int(15) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `harga_sewa` int(20) NOT NULL,
  `ket` varchar(35) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_rent`, `id_user`, `id_barang`, `nama`, `harga_sewa`, `ket`, `foto`, `jumlah`) VALUES
(15, 0, 17, 'Kompor', 10000, '-', '63db626e9e1b6.png', 2),
(17, 0, 13, 'Dome 2', 45000, 'Kap. 5-6', '63db5fc838a4a.png', 1),
(18, 0, 22, 'Matras', 5000, '-', '63e1a4809ad29.png', 1),
(20, 0, 12, 'Dome 1', 40000, 'Kap. 4-5', '63db5f910a484.png', 1),
(22, 0, 2, 'Tas Carrier Consina', 46000, '50Liter', '63da1e8b61edf.png', 3),
(23, 22, 0, 'Matras', 5000, '-', '63e1a4809ad29.png', 3),
(24, 21, 0, 'Flyshet', 10000, '-', '63e1932ba47f5.png', 1),
(25, 8, 3, 'Senter Ajaib', 5000, '-', '63da6d93d191b.png', 1),
(26, 0, 8, 'Senter Ajaib', 5000, '-', '63da6d93d191b.png', 1),
(28, 0, 21, 'Flyshet', 10000, '-', '63e1932ba47f5.png', 1),
(29, 0, 21, 'Flyshet', 10000, '-', '63e1932ba47f5.png', 1),
(31, 0, 9, 'Tas Carrier EIGER', 50000, '60L', '63db140562a86.png', 2),
(35, 3, 22, 'Matras', 5000, '-', '63e1a4809ad29.png', 1),
(46, 3, 8, 'Senter Ajaib', 5000, '-', '63da6d93d191b.png', 1),
(50, 3, 21, 'Flyshet', 10000, '-', '63e1932ba47f5.png', 1),
(52, 3, 20, 'Sepatu 3', 30000, '41-43', '63dbc7a078f62.png', 1),
(68, 2, 22, 'Matras', 5000, '-', '63e1a4809ad29.png', 1),
(69, 2, 22, 'Matras', 5000, '-', '63e1a4809ad29.png', 2),
(70, 2, 22, 'Matras', 5000, '-', '63e1a4809ad29.png', 3),
(71, 2, 21, 'Flyshet', 10000, '-', '63e1932ba47f5.png', 1),
(74, 2, 19, 'Sepatu 2', 30000, '42-44', '63dbc82402572.png', 1),
(75, 2, 13, 'Dome 2', 45000, 'Kap. 5-6', '63db5fc838a4a.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `daftarnilai`
--

CREATE TABLE `daftarnilai` (
  `nim` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kd_prodi` int(20) NOT NULL,
  `n_tugas` int(20) NOT NULL,
  `n_uts` int(20) NOT NULL,
  `n_uas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftarnilai`
--

INSERT INTO `daftarnilai` (`nim`, `nama`, `kd_prodi`, `n_tugas`, `n_uts`, `n_uas`) VALUES
(231243, 'ayu', 1, 32, 43, 60),
(232243, 'diah', 1, 67, 54, 31),
(3131332, 'affan', 1, 89, 76, 90),
(432423, 'adi', 2, 70, 85, 65),
(21443, 'dafa', 3, 56, 75, 80);

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `pesan` int(11) NOT NULL,
  `no_tujuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `pesan`, `no_tujuan`) VALUES
(0, 0, 2147483647),
(0, 0, 2147483647),
(0, 0, 2147483647),
(0, 0, 2147483647),
(0, 0, 2147483647),
(0, 0, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kd_prodi` int(10) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kd_prodi`, `prodi`) VALUES
(1, 'Informatika'),
(2, 'Sistem Informasi'),
(3, 'Multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `harga_sewa` int(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `keterangan` varchar(35) NOT NULL,
  `kategori` varchar(35) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id`, `nama`, `harga_sewa`, `stok`, `keterangan`, `kategori`, `foto`) VALUES
(1, 'Tas Carrier REI', 40000, 6, '40L', 'Tas', '64806c6275dab.png'),
(2, 'Tas Carrier Consina', 46000, 5, '50Liter', 'Tas', '63da1e8b61edf.png'),
(8, 'Senter Ajaib', 5000, 10, '-', 'Other', '63da6d93d191b.png'),
(9, 'Tas Carrier EIGER', 50000, 4, '60L', 'Tas', '63db140562a86.png'),
(12, 'Dome 1', 40000, 3, 'Kap. 4-5', 'Tenda', '63db5f910a484.png'),
(13, 'Dome 2', 45000, 4, 'Kap. 5-6', 'Tenda', '63db5fc838a4a.png'),
(14, 'Dome 3', 30000, 2, 'Kap. 2-3', 'Tenda', '63db5fedc7a50.png'),
(15, 'Sepatu 1', 20000, 3, '41-44', 'Sepatu', '63db604a9f0c2.png'),
(16, 'Nesting', 15000, 2, '-', 'Cooking Set', '63dbc758d2081.png'),
(17, 'Kompor', 10000, 10, '-', 'Cooking Set', '63db626e9e1b6.png'),
(18, 'Gas', 5000, 25, 'Kecil', 'Cooking Set', '63db6360cb48c.png'),
(19, 'Sepatu 2', 30000, 3, '42-44', 'Sepatu', '63dbc82402572.png'),
(20, 'Sepatu 3', 30000, 3, '41-43', 'Sepatu', '63dbc7a078f62.png'),
(21, 'Flyshet', 10000, 3, '-', 'Other', '63e1932ba47f5.png'),
(22, 'Matras', 5000, 30, '-', 'Other', '63e1a4809ad29.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_item`
--

CREATE TABLE `transaksi_item` (
  `id_trans` int(11) NOT NULL,
  `id_user` int(50) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga_sewa` int(100) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `ket` varchar(200) NOT NULL,
  `tgl_ambil` varchar(50) NOT NULL,
  `tgl_kembali` varchar(50) NOT NULL,
  `lama_sewa` int(50) NOT NULL,
  `ket_trans` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_item`
--

INSERT INTO `transaksi_item` (`id_trans`, `id_user`, `id_barang`, `nama`, `harga_sewa`, `jumlah`, `ket`, `tgl_ambil`, `tgl_kembali`, `lama_sewa`, `ket_trans`) VALUES
(71, 2, 22, 'Matras', 5000, 1, '-', '2023-06-08', '2023-06-12', 4, 'online'),
(72, 2, 22, 'Matras', 5000, 2, '-', '2023-06-08', '2023-06-12', 4, 'online'),
(73, 2, 22, 'Matras', 5000, 3, '-', '2023-06-08', '2023-06-12', 4, 'online'),
(74, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-08', '2023-06-12', 4, 'online'),
(75, 2, 22, 'Matras', 5000, 1, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(76, 2, 22, 'Matras', 5000, 2, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(77, 2, 22, 'Matras', 5000, 3, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(78, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(79, 2, 22, 'Matras', 5000, 1, '-', '2023-06-08', '2023-06-13', 5, 'online'),
(80, 2, 22, 'Matras', 5000, 2, '-', '2023-06-08', '2023-06-13', 5, 'online'),
(81, 2, 22, 'Matras', 5000, 3, '-', '2023-06-08', '2023-06-13', 5, 'online'),
(82, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-08', '2023-06-13', 5, 'online'),
(83, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-08', '2023-06-13', 5, 'online'),
(84, 2, 22, 'Matras', 5000, 1, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(85, 2, 22, 'Matras', 5000, 2, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(86, 2, 22, 'Matras', 5000, 3, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(87, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(88, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-08', '2023-06-10', 2, 'online'),
(89, 2, 22, 'Matras', 5000, 1, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(90, 2, 22, 'Matras', 5000, 2, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(91, 2, 22, 'Matras', 5000, 3, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(92, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-08', '2023-06-10', 2, 'online'),
(93, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-08', '2023-06-10', 2, 'online'),
(94, 2, 22, 'Matras', 5000, 1, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(95, 2, 22, 'Matras', 5000, 2, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(96, 2, 22, 'Matras', 5000, 3, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(97, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(98, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-09', '2023-06-11', 2, 'online'),
(99, 2, 22, 'Matras', 5000, 1, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(100, 2, 22, 'Matras', 5000, 2, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(101, 2, 22, 'Matras', 5000, 3, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(102, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(103, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-09', '2023-06-11', 2, 'online'),
(104, 2, 22, 'Matras', 5000, 1, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(105, 2, 22, 'Matras', 5000, 2, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(106, 2, 22, 'Matras', 5000, 3, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(107, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-09', '2023-06-11', 2, 'online'),
(108, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-09', '2023-06-11', 2, 'online'),
(109, 2, 22, 'Matras', 5000, 1, '-', '2023-06-15', '2023-06-15', 0, 'online'),
(110, 2, 22, 'Matras', 5000, 2, '-', '2023-06-15', '2023-06-15', 0, 'online'),
(111, 2, 22, 'Matras', 5000, 3, '-', '2023-06-15', '2023-06-15', 0, 'online'),
(112, 2, 21, 'Flyshet', 10000, 1, '-', '2023-06-15', '2023-06-15', 0, 'online'),
(113, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-06-15', '2023-06-15', 0, 'online'),
(114, 2, 1, 'Tas Carrier REI', 40000, 1, '40L', '2023-06-15', '2023-06-15', 0, 'online'),
(115, 2, 22, 'Matras', 5000, 1, '-', '2023-07-07', '2023-07-09', 2, 'online'),
(116, 2, 22, 'Matras', 5000, 2, '-', '2023-07-07', '2023-07-09', 2, 'online'),
(117, 2, 22, 'Matras', 5000, 3, '-', '2023-07-07', '2023-07-09', 2, 'online'),
(118, 2, 21, 'Flyshet', 10000, 1, '-', '2023-07-07', '2023-07-09', 2, 'online'),
(119, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-07-07', '2023-07-09', 2, 'online'),
(120, 2, 22, 'Matras', 5000, 1, '-', '2023-08-07', '2023-08-09', 2, 'online'),
(121, 2, 22, 'Matras', 5000, 2, '-', '2023-08-07', '2023-08-09', 2, 'online'),
(122, 2, 22, 'Matras', 5000, 3, '-', '2023-08-07', '2023-08-09', 2, 'online'),
(123, 2, 21, 'Flyshet', 10000, 1, '-', '2023-08-07', '2023-08-09', 2, 'online'),
(124, 2, 19, 'Sepatu 2', 30000, 1, '42-44', '2023-08-07', '2023-08-09', 2, 'online'),
(125, 2, 13, 'Dome 2', 45000, 3, 'Kap. 5-6', '2023-08-07', '2023-08-09', 2, 'online');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_user`
--

CREATE TABLE `transaksi_user` (
  `id_trans_user` int(11) NOT NULL,
  `id_user` int(50) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `tgl_ambil` varchar(100) NOT NULL,
  `tgl_kembali` varchar(100) NOT NULL,
  `jml_item` int(50) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_user`
--

INSERT INTO `transaksi_user` (`id_trans_user`, `id_user`, `nama`, `no_hp`, `tgl_ambil`, `tgl_kembali`, `jml_item`, `total`) VALUES
(8, 2, 'irfan faiz', '085526388358', '2023-06-08', '2023-06-10', 3, 140000),
(9, 2, 'irfan faiz', '085526388358', '2023-06-09', '2023-06-11', 3, 140000),
(10, 2, 'irfan faiz', '085526388358', '2023-06-09', '2023-06-11', 3, 140000),
(11, 2, 'irfan faiz', '085526388358', '2023-06-09', '2023-06-11', 3, 140000),
(12, 2, 'irfan faiz', '085526388358', '2023-06-15', '2023-06-15', 4, 0),
(13, 2, 'irfan faiz', '085526388358', '2023-07-07', '2023-07-09', 3, 140000),
(14, 2, 'irfan faiz', '085526388358', '2023-08-07', '2023-08-09', 4, 410000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `level_user` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `no_hp`, `level_user`) VALUES
(2, 'irfan faiz', 'irfan13', '$2y$10$sNplF59/wm5WIovGoDAIouBR17BLO/ZP2n4z3L9Q0kgE7kE0ySdV.', '085526388358', ''),
(3, 'ahmad', 'ahmad1', '$2y$10$jvhDKoK3lLo6BWiYm6C1VeFjMisOOC.7zn1JTQ0FviyZF5PilQdsO', '2147483647', 'user'),
(4, 'Agustinus Surya Adi', 'surya1', '$2y$10$hcNwsD4Yl97WIXb2u/i3lOd3tdjYtE8xpgrsHKdMRweD09yOkUTaa', '2147483647', 'user'),
(5, 'David Nur', 'david1', '$2y$10$BqzhuMgjXr60JMvoQIO5Vetut1CABIKej8KT4oWbgB.TKH/wGb1Bq', '2147483647', ''),
(6, 'bagas adi', 'bagas', '$2y$10$1edZuC22NVvCO95vVRSDJugFSZ5Gp7IAXCQrKG2/f.bYNtE8nEBUq', '874475940', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level_user` varchar(25) NOT NULL,
  `ip` varchar(225) NOT NULL,
  `device` varchar(225) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `id_user`, `nama`, `level_user`, `ip`, `device`, `waktu`) VALUES
(1, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-09 06:11:19'),
(2, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-22 13:01:40'),
(3, 6, 'bagas adi', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-22 13:05:11'),
(4, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-05-23 19:43:26'),
(5, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 16:17:47'),
(6, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 16:57:48'),
(7, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-29 22:35:39'),
(8, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-30 07:41:12'),
(9, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-30 07:41:40'),
(10, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 10:19:14'),
(11, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 10:19:36'),
(12, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 10:26:39'),
(13, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 13:14:54'),
(14, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 13:50:13'),
(15, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15', '2023-06-07 13:51:04'),
(16, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 14:10:42'),
(17, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15', '2023-06-07 14:11:37'),
(18, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15', '2023-06-07 14:25:56'),
(19, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 14:26:18'),
(20, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 15:42:13'),
(21, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-07 22:34:59'),
(22, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/12.0.0 Mobile/15A5370a Safari/602.1', '2023-06-08 09:19:41'),
(23, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-08 14:42:52'),
(24, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15', '2023-06-08 16:18:00'),
(25, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-09 05:30:35'),
(26, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-09 05:35:58'),
(27, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-15 11:24:03'),
(28, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15', '2023-06-15 11:25:01'),
(29, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-07-07 13:36:24'),
(30, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-21 09:51:48'),
(31, 3, 'ahmad', 'user', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15', '2023-07-21 09:53:01'),
(32, 2, 'irfan faiz', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-07 13:18:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_rent`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_item`
--
ALTER TABLE `transaksi_item`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indexes for table `transaksi_user`
--
ALTER TABLE `transaksi_user`
  ADD PRIMARY KEY (`id_trans_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_rent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transaksi_item`
--
ALTER TABLE `transaksi_item`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `transaksi_user`
--
ALTER TABLE `transaksi_user`
  MODIFY `id_trans_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
