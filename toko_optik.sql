-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2021 pada 08.16
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
-- Database: `web-bengkel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk_barang` varchar(50) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `kategori_barang` varchar(30) NOT NULL,
  `deskripsi_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `merk_barang`, `harga_barang`, `stok_barang`, `kategori_barang`, `deskripsi_barang`) VALUES
(1, 'Yamalube Matic Oil', 'Yamaha', 45000, 10, 'Oli', 'Oli ini dibuat khusus untuk mesin motor matik 4-Tak generasi pertama yang memerlukan durability mesin untuk bekerja berat sehingga performa tetap terjaga. Kelebihan dari Yamalube Matic Oil\r\n1. Menjaga mesin matic tahan lama dengan aditif anti-karat'),
(2, 'GENZI TL', 'FDR', 235000, 10, 'Ban', 'Komponen ban dirancang khusus untuk punya daya cengkeram maksimal untuk penggunaan harian\r\nCocok untuk penggunaan di jalan beraspal'),
(3, 'Aspira Disc pad Yamaha Mio 2004-2008', 'Aspira', 30000, 10, 'Kampas Rem', 'Berfungsi untuk mencekram disc (cakram) sehingga tercipta pengurangan kecepatan\r\nBerkualitas dan bermutu tinggi\r\nPemakaian lebih awet'),
(4, 'Yuasa YTZ5S', 'Yuasa', 200000, 12, 'Aki Motor', 'kualitasnya yang baik, aki ini juga dibanderol dengan harga yang cukup terjangkau.'),
(5, 'Furukawa Battery FTZ5S', 'Furukawa Battery', 210000, 14, 'Aki Motor', 'Aki ini terbuat dari timah murni dan sudah disematkan teknologi anti-explode\r\nDengan tegangan sebesar 12 V dan kapasitas 3.5 Ah, Furukawa Battery FTZ5S biasa digunakan pada motor bebek dan skutik'),
(6, 'DID 428H-DS', 'DID', 370000, 8, 'Rantai Motor', 'Rantai ini memiliki kualitas yang bagus dan juga pemasangannya dapat dikatakan mudah\r\nDID juga memiliki rantai yang berwarna emas dan dapat menjadi pilihan Anda'),
(7, 'GR428SB', 'SSS', 120000, 9, 'Rantai Motor', 'Ranti motor merk ini memiliki banyak ukuran dan juga sudah dikenal sebagai rantai yang tahan lama dan bagus.'),
(8, 'RTD LED H6 M11G 2 Sisi', 'RTD', 52000, 24, 'Lampu LED Motor', 'Lampu RTD satu ini memiliki spesifikasi yang sangat bagus dan Tipe ini memiliki spesifikasi yang mendukung lampu dekat dan jauh serta dapat hidup dengan arus DC-18 Watt dan menggunakan tipe pemasangan PNP.'),
(9, 'Osram LED T19 M5 K1', 'Osram', 59000, 16, 'Lampu LED Motor', 'Osram LED T19 M5 K1 tawarkan adalah lampu LED dengan 12 V, 5/6 W, low beam-nya 5W dan untuk Hi’ nya 6W. Lampu ini juga hemat energi meski menghasilkan energi warna yang mencapai 6000 Kelvin.'),
(10, 'TDR TWIN IRIDIUM', 'TDR', 120000, 6, 'Busi Motor', 'Sesuai tipenya (twin iridium), busi ini mengusung 2 bagian material iridium. Yaitu pada CE dan GE, dengan tujuan supaya hantaran arus listrik dari CE ke Ge lebih baik dan kuat. Sehingga pembakaran jadi makin sempurna. CE-nya mengusung diameter 0,7 mm.'),
(11, 'DENSO IRIDIUM POWER', 'DENSO', 89000, 9, 'Busi Motor', 'Busi ini mengusung material iridium di bagian center electroda (CE). Dengan diameter CE terkecil dibanding kompetitornya, yakni 0,4 mm.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `username`, `email`, `password`) VALUES
(1, 'Rey', 'Rey22', 'rey22@gmail.com', 'rey2222'),
(2, 'Fazil', 'Fazil12', 'Fazilhayuk@gmail,com', 'Fazil1122'),
(3, 'Kunglao', 'Kunglao11', 'Kunglao11@gmai.com', 'Kunglao11'),
(4, 'Yuri ', 'Yuri22', 'Yuriii@gmail,com', 'Yurii1212'),
(5, 'Toni', 'Toni', 'ToniRe@gmail,com', 'Toniiiy'),
(6, 'Renaldo', 'Renaldoy', 'Renaldow@gmail.com', 'Renaldooo12'),
(7, 'Ucok', 'Ucokz', 'Uucok@gmail,com', 'Ucok12'),
(8, 'Akbar', 'Akbarz', 'Akbarz@gmail,com', 'Akbar2121'),
(9, 'Fani', 'Fanii', 'Faniiy@gmail,com', 'Fani21'),
(10, 'Pami', 'Pamii21', 'Pamii@gmail,com', 'Pamii20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_beli` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_beli` date NOT NULL,
  `jml_beli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_beli`, `id_barang`, `id_supplier`, `tgl_beli`, `jml_beli`) VALUES
(1, 3, 2, '2021-04-13', 5),
(2, 6, 5, '2021-04-15', 3),
(3, 2, 10, '2021-05-09', 6),
(4, 10, 1, '2021-05-21', 10),
(5, 11, 10, '2021-07-13', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_jual` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `tgl_jual` date NOT NULL,
  `jml_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_jual`, `id_barang`, `id_member`, `tgl_jual`, `jml_jual`) VALUES
(1, 2, 9, '2021-05-04', 4),
(2, 8, 10, '2021-06-01', 2),
(3, 4, 1, '2021-06-03', 2),
(4, 9, 6, '2021-06-14', 2),
(5, 5, 3, '2021-07-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `kota_supplier` varchar(30) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `kota_supplier`, `alamat_supplier`) VALUES
(1, 'PT. YAMAHA', 'Pekanbaru', 'Jl. Nangka'),
(2, 'PT, STAR PARTS', 'Bandung', 'Jl. Soekarno Hatta '),
(3, 'PT. Calispo Jaya Abadi', 'Pekanbaru', 'Jl. Soekarno Hatta'),
(4, 'PT. YUASA BATTERY INDONESIA', 'Banten', 'Jl.Thamrin'),
(5, 'PT. Furukawa Indonesia', 'Karawang', 'Jl.Harapan II'),
(6, 'PT. DAIDO INDONESIA', 'Bekasi', 'Jl. Jawa '),
(7, 'PT. TIGA SAKTI', 'Jakarta Utara', 'Jl. Danau Sunter'),
(8, 'PT. RAYTON INDONESIA', 'Jakarta Barat', 'Jl. Toyib'),
(9, 'PT. OSRAM INDONESIA', 'Jakarta Pusat', 'Jl. Senen Raya'),
(10, 'PT. TDR ', 'Jl. Swadaya IV', 'Jakarta Pusat'),
(11, 'PT. DENSO INDONESIA', 'Bekasi', 'Jl. Kalimantan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_beli`),
  ADD KEY `fk_id_barang_supplier` (`id_barang`),
  ADD KEY `fk_id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_jual`),
  ADD KEY `fk_id_member` (`id_member`),
  ADD KEY `fk_id_barang` (`id_barang`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_id_barang_supplier` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_id_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
