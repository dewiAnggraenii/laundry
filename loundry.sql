-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2008 at 07:04 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangg`
--

CREATE TABLE IF NOT EXISTS `barangg` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `tgl_update` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangg`
--

INSERT INTO `barangg` (`id`, `nama`, `stok`, `tgl_update`, `supplier`, `harga`) VALUES
(1, 'Deterjen Bubuk', -1, '2008-07-07', 'Dewi Anggraeni', 8000),
(2, 'Pewangi', 150, '2008-07-07', 'Putri Indrianni', 2500000),
(12, 'Deterjen Cair', 20, '2021-02-16', 'Delis', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
  `id` int(10) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `jenis`, `harga`) VALUES
(1, 'Paket 1', 5000),
(2, 'Paket 2', 10000),
(12, 'paket 3', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE IF NOT EXISTS `konsumen` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Riska', 'Jl. Pasir Kalili No.25 Bandung', '082445129182'),
(3, 'Dede silviana', 'Jl.Ameila No.37 Bandung ', '083894921434'),
(4, 'Dewi Anggraeni', 'Jl.Dago No.15 Bandung', '0888231424'),
(5, 'Ai', 'Jl.Pasteur No.18 Bandung', '081364859434'),
(7, 'Nita', 'Jl.Griya Mas No.78 Bandung', '08963527455'),
(10, 'yaya', 'Bandung', '083894921434'),
(11, 'Teti S', 'kp.Sodong', '0813648594754');

-- --------------------------------------------------------

--
-- Table structure for table `pemakaian`
--

CREATE TABLE IF NOT EXISTS `pemakaian` (
  `id` int(10) NOT NULL,
  `tgl_pakai` date NOT NULL,
  `barang` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemakaian`
--

INSERT INTO `pemakaian` (`id`, `tgl_pakai`, `barang`, `jumlah`) VALUES
(18, '2021-01-20', 'Pewangi', 4),
(20, '2021-02-17', 'Deterjen Bubuk', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `no` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `totali` int(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `barang` varchar(100) NOT NULL,
  `totalh` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no`, `tgl`, `totali`, `supplier`, `barang`, `totalh`) VALUES
(1, '2021-01-29', 20, 'Dede Silviana', 'Pewangi', 250000),
(12, '2021-01-29', 2, 'Risqiya Ayu Lestari', 'Mesin Cuci', 7000000),
(13, '2021-01-14', 50, 'Dewi Anggraeni', 'Deterjen Bubuk', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('Administrator','Karyawan','Konsumen') NOT NULL,
  `nik` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `gender` enum('Laki laki','Perempuan') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `nik`, `alamat`, `telp`, `gender`) VALUES
(18, 'Dewi', 'Dewi', '81dc9bdb52d04dc20036dbd8313ed055', 'Administrator', '002', 'kp.sodong', '08882391424', 'Perempuan'),
(20, 'Dede silviana', 'dede', '827ccb0eea8a706c4c34a16891f84e7b', 'Karyawan', '002', 'Kp.Lampegan', '081364859475', 'Perempuan'),
(21, 'Putri Indriani', 'putri', '827ccb0eea8a706c4c34a16891f84e7b', 'Karyawan', '003', 'Kp.Lampegan', '083894987564', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `alamat`, `telp`) VALUES
(3, 'Delis', 'Kp.Lampegan', '0813648594754'),
(4, 'Riska', 'kp.Sodong', '081364859475');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` int(5) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `tarif` int(100) NOT NULL,
  `diskon` int(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `tgl_ambil` date NOT NULL,
  `berat` int(10) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `konsumen` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `jenis`, `tarif`, `diskon`, `tgl_transaksi`, `tgl_ambil`, `berat`, `pengguna`, `konsumen`) VALUES
(1, 'Paket 1', 100000, 0, '2016-02-23', '2016-03-01', 10, 'khalid', 'Irwansyah'),
(2, 'Paket 2', 50000, 0, '2016-02-23', '2016-03-01', 10, 'khalid', 'Irwansyah'),
(12, 'Paket 1', 40000, 0, '2021-01-25', '2021-01-28', 4, 'Dewi Anggraeni', 'Dewi Anggraeni'),
(13, 'Paket 2', 50000, 0, '2021-01-09', '2021-01-12', 5, 'Dewi Anggraeni', 'Dede silviana'),
(20, 'Paket 1', 75000, 0, '2021-02-18', '2021-02-19', 5, 'Dewi', 'Ai'),
(21, 'paket 3', 60000, 0, '2008-07-07', '2021-10-31', 4, 'Dewi', 'Nita');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangg`
--
ALTER TABLE `barangg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemakaian`
--
ALTER TABLE `pemakaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangg`
--
ALTER TABLE `barangg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pemakaian`
--
ALTER TABLE `pemakaian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangg`
--
ALTER TABLE `barangg`
ADD CONSTRAINT `barangg_ibfk_1` FOREIGN KEY (`id`) REFERENCES `jenis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jenis`
--
ALTER TABLE `jenis`
ADD CONSTRAINT `jenis_ibfk_1` FOREIGN KEY (`id`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `pemakaian`
--
ALTER TABLE `pemakaian`
ADD CONSTRAINT `pemakaian_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`no`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`id`) REFERENCES `konsumen` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
