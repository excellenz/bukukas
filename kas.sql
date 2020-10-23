-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2020 pada 17.24
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_klien`
--

CREATE TABLE `data_klien` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_klien`
--

INSERT INTO `data_klien` (`id`, `nama`, `jumlah`, `tanggal`) VALUES
(1, 'Paket Web MA HK1 = Hosting 1.2jt, Domain 55rb, Maintainance 750rb', 2005000, '2020-10-23 17:00:00'),
(2, 'Paket Web MTs HK1 = Hosting 1.2jt, Domain 55rb, Maintainance 750rb', 2005000, '2020-10-23 15:14:13'),
(3, 'Paket Web MTs HK2 = Hosting 1.2jt, Domain 55rb, Maintainance 750rb', 2005000, '2020-10-23 15:15:05'),
(4, 'Urusan Bahasa = Hosting 600rb, Domain 125rb', 725000, '2020-10-23 15:18:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_masuk`
--

CREATE TABLE `kas_masuk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kas_masuk`
--

INSERT INTO `kas_masuk` (`id`, `nama`, `jumlah`, `tanggal`) VALUES
(9, 'Web SMP IT Nurul Hasan', 4000000, '2020-10-23 13:47:47'),
(10, 'Web MTs HK 2', 10750000, '2020-10-23 13:48:12'),
(11, 'Pembelian Hosting dan Domain MTs HK 1, 2 dan MA HK', 8750000, '2020-10-23 13:48:32'),
(12, 'Web MTs HK 1', 12000000, '2020-10-23 13:48:49'),
(13, 'Web MA HK', 11500000, '2020-10-23 13:49:04'),
(14, 'Aplikasi Web PSB Husnul Khotimah', 3000000, '2020-10-23 13:49:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_bayar`
--

CREATE TABLE `kategori_bayar` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_bayar`
--

INSERT INTO `kategori_bayar` (`id_kategori`, `nama_kategori`) VALUES
(7, 'Pembelian Hosting'),
(8, 'Pembelian Domain'),
(9, 'Pembuatan APK'),
(10, 'Pembelian Produk'),
(11, 'Gaji Karyawan'),
(12, 'Konsumsi'),
(13, 'Transportasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_bayar` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_kategori`, `nama_bayar`, `jumlah`, `tanggal`) VALUES
(9, 1, 'Gaji Karyawan', 656500, '2020-10-01 05:46:04'),
(10, 3, 'Pembelian Hosting dan Domain MTs HK 1, 2 dan MA HK', 1000000, '2020-10-23 11:22:02'),
(11, 11, 'Profit Share 2 x 500.000', 1000000, '2020-10-23 13:50:12'),
(12, 10, 'Source Code Sikampus', 756500, '2020-10-23 13:50:35'),
(13, 11, 'Pembuatan Web SMP IT Nurul Hasan', 4000000, '2020-10-23 13:51:03'),
(14, 7, 'Pembelian Hosting dan Domain MTs HK 1, 2 dan MA HK', 8750000, '2020-10-23 13:51:24'),
(15, 11, 'Pembuatan Web MTs HK 1', 12000000, '2020-10-23 13:51:42'),
(16, 11, 'Pembuatan Web MA HK', 11500000, '2020-10-23 13:52:55'),
(17, 7, 'Pembuatan Web MTs HK 2', 10750000, '2020-10-23 13:54:12'),
(18, 11, 'Gaji Karyawan', 656500, '2020-10-23 13:53:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`) VALUES
(1, 'Jaruki A Maulana', 'admin', '$2y$10$e54aCJAR2CL9TvD1pdqa8eZcP4cnXblyM6WTj15NdN54fo7kHtUc2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_klien`
--
ALTER TABLE `data_klien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_masuk`
--
ALTER TABLE `kas_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_bayar`
--
ALTER TABLE `kategori_bayar`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_klien`
--
ALTER TABLE `data_klien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kas_masuk`
--
ALTER TABLE `kas_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kategori_bayar`
--
ALTER TABLE `kategori_bayar`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
