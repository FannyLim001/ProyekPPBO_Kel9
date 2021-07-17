-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Waktu pembuatan: 17 Jul 2021 pada 17.56

-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_optik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama_member` varchar(45) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp_member` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `email`, `no_hp_member`) VALUES
(1, 'Budiman', 'budiman@gmail.com', '081234567891'),
(2, 'Marcella', 'marcella@gmail.com', '084534566608'),
(3, 'Andi', 'andi@gmail.com', '085346571256'),
(4, 'Dimas', 'dimascool@gmail.com', '089678231985'),
(5, 'Firdaus', 'firdausdarul@gmail.com', '082213138852'),
(6, 'Fathur', 'fathurku@gmail.com', '085271808892'),
(7, 'Aurora', 'auroracans@gmail.com', '082268789156');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(45) NOT NULL,
  `kategori_produk` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori_produk`, `brand`, `id_supplier`, `harga`) VALUES
(1, 'F ZU YD9601 C2 51', 'Frame', 'Zulu', 1, 340000),
(2, 'NIKE F NJ 5009AF 223 48', 'Frame', 'Nike', 1, 863000),
(3, 'C AFN AS PLANO', 'Contact Lens', 'define', 3, 468000),
(4, 'O H KEY CHAIN TESTER', 'Hearingaid', 'Abd', 5, 50000),
(5, 'ILLUSTRO PREMIUM O AV ILSTRO PMI100BO', 'Solution', 'Illustro Premium', 7, 42000),
(6, 'UNDER ARMOUR S UA 0005 003 M9 58', 'Sunglasses', 'Under Armour', 6, 895000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(45) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL,
  `no_hp_supplier` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `no_hp_supplier`) VALUES
(1, 'ZARA', 'Jl. Tanah Abang', '0812345678'),
(2, 'Celcius', 'Jl. Ahmad Yani', '082389791636'),
(3, 'Levi\'s', 'Jl. Sukajadi', '082274689070'),
(4, 'The Executive', 'Jl. Soeharno-Hatta', '081282781526'),
(5, 'Uniqlo', 'Jl. Tuanku Tambusai', '082211358926'),
(6, 'SixtyOne', 'Jl. Sudirman', '089659283114'),
(7, 'DEUS', 'Jl. Sulthan Hassanudin', '085265626569');


-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jml_beli` int(11) NOT NULL,
  `tgl_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_member`, `id_produk`, `jml_beli`, `tgl_beli`) VALUES
(1, 1, 1, 2, '2021-07-01'),
(2, 2, 2, 2, '2021-07-06'),
(3, 3, 1, 1, '2021-07-13'),
(4, 4, 4, 1, '2021-07-02'),
(5, 5, 5, 1, '2021-07-20'),
(6, 6, 6, 1, '2021-07-14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `fk_id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_id_produk` (`id_produk`),
  ADD KEY `fk_id_member` (`id_member`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
