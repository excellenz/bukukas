-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2021 pada 18.01
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
-- Database: `bukukas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'master', 'eb0a191797624dd3a48fa681d3061212', 'master', 'admin', ''),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas`
--

CREATE TABLE `kas` (
  `kode` int(11) NOT NULL,
  `penanggung` varchar(100) NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `keluar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kas`
--

INSERT INTO `kas` (`kode`, `penanggung`, `keterangan`, `tgl`, `jumlah`, `jenis`, `keluar`) VALUES
(11126, 'Maulana, J.A', 'Web SMP IT Nurul Hasan', '2020-10-23', 4000000, 'masuk', 0),
(11127, 'Maulana, J.A', 'Pembuatan Web MTs HK 2', '2020-10-23', 10750000, 'masuk', 0),
(11128, 'Maulana, J.A', 'Pembelian Hosting dan Domain MTs HK 1, 2 dan MA HK', '2020-10-23', 8750000, 'masuk', 0),
(11129, 'Maulana, J.A', 'Pembuatan Web MTs HK 1', '2020-10-23', 12000000, 'masuk', 0),
(11130, 'Maulana, J.A', 'Pembuatan Web MA HK', '2020-10-23', 11500000, 'masuk', 0),
(11131, 'Maulana, J.A', 'Aplikasi Web Aplikasi Web PSB Husnul Khotimah', '2020-10-23', 3000000, 'masuk', 0),
(11132, 'Maulana, J.A', 'Pembuatan Aplikasi Pemira Virtual MTs HK2', '2020-10-26', 400000, 'masuk', 0),
(11133, 'Maulana, J.A', 'Pembuatan Web Aplikasi MAN 3 Kuningan', '2020-10-26', 1000000, 'masuk', 0),
(11134, 'Maulana, J.A', 'Pembuatan Aplikasi TOEFL Prediction Test Urusan Bahasa', '2020-10-28', 3310000, 'masuk', 0),
(11135, 'Maulana, J.A', 'Pembuatan Web Aplikasi MAN 3 Kuningan', '2020-11-02', 2200000, 'masuk', 0),
(11136, 'Maulana, J.A', 'Pembelian Aplikasi SIAKAD STIS HK', '2020-11-06', 3000000, 'masuk', 0),
(11137, 'Maulana, J.A', 'Pembuatan Aplikasi Bimbel PK MA HK', '2020-11-11', 500000, 'masuk', 0),
(11138, 'Maulana, J.A', 'Biaya Upgrade VPS MTs Husnul Khotimah', '2020-11-28', 2110000, 'masuk', 0),
(11139, 'Maulana, J.A', 'Biaya Upgrade VPS MA Husnul Khotimah', '2020-11-28', 2150000, 'masuk', 0),
(11140, 'Maulana, J.A', 'Pembuatan eReport MTs HK2', '2020-12-20', 500000, 'masuk', 0),
(11141, 'Maulana, J.A', 'Jasa PAS dan Aplikasi Rapor MTs Husnul Khotimah 1', '2020-12-23', 3000000, 'masuk', 0),
(11142, 'Maulana, J.A', 'Jasa PAS MA HK', '2020-12-26', 7000000, 'masuk', 0),
(11143, 'Maulana, J.A', 'Konsumsi PSB HK', '2020-12-26', 470000, 'masuk', 0),
(11144, 'Maulana, J.A', 'Jasa PSB', '2020-12-26', 5000000, 'masuk', 0),
(11145, 'Maulana, J.A', 'Pembuatan APK Web SMP IT Nurul Hasan', '2020-12-04', 0, 'keluar', 256500),
(11147, 'Maulana, J.A', 'APK Alfirdausi', '2021-01-04', 0, 'keluar', 256500),
(11148, 'Maulana, J.A', 'Update Source Code SIAKAD', '2021-01-04', 0, 'keluar', 606500),
(11149, 'Maulana, J.A', 'Source Code Sikampus ', '2021-01-04', 0, 'keluar', 756500),
(11150, 'Maulana, J.A', 'Pembuatan Stampel Excellenz', '2021-01-04', 0, 'keluar', 80000),
(11151, 'Maulana, J.A', 'Pembelian Template WordPress WP Akademi', '2021-01-04', 0, 'keluar', 166500),
(11152, 'Maulana, J.A', 'Pembelian Template WordPress', '2021-01-04', 0, 'keluar', 256500),
(11153, 'Maulana, J.A', 'Investasi Penjualan Pulsa Sistem 30:70', '2021-01-04', 0, 'keluar', 1006500),
(11154, 'Maulana, J.A', 'Upgrage VPS S ke VPS L', '2021-01-04', 0, 'keluar', 1756500),
(11155, 'Maulana, J.A', 'Tambah CBT Excellenz', '2021-01-04', 0, 'keluar', 2085000),
(11156, 'Maulana, J.A', 'Pembuatan Web MTs HK 2', '2021-01-04', 0, 'keluar', 10750000),
(11157, 'Maulana, J.A', 'Pembelian Hosting dan Domain MTs HK 1, 2 dan MA HK', '2021-01-04', 0, 'keluar', 8750000),
(11158, 'Maulana, J.A', 'Pembelian Domain man3kuningan.sch.id', '2021-01-04', 0, 'keluar', 62377),
(11159, 'Maulana, J.A', 'Pembelian Domain alfirdausi.com', '2021-01-04', 0, 'keluar', 140093),
(11160, 'Maulana, J.A', 'Pembelian Bebek Goreng', '2021-01-04', 0, 'keluar', 71800),
(11161, 'Maulana, J.A', 'Makan Siang di Ayam Penyet', '2021-01-04', 0, 'keluar', 110000),
(11162, 'Maulana, J.A', 'Konsumsi Upgrading Contabo', '2021-01-04', 0, 'keluar', 69000),
(11163, 'Maulana, J.A', 'Konsumsi Pembuatan Web Hotel Alfirdausi', '2021-01-04', 0, 'keluar', 62000),
(11164, 'Maulana, J.A', 'Konsumsi Pembuatan Aplikasi Quiz dan TOEFL', '2021-01-04', 0, 'keluar', 86500),
(11165, 'Maulana, J.A', 'Konsumsi Maintainance WEB PAS', '2021-01-04', 0, 'keluar', 73500),
(11166, 'Maulana, J.A', 'Beli Kopi Konsumsi Buat Rapot HK2', '2021-01-04', 0, 'keluar', 64500),
(11167, 'Maulana, J.A', 'Profit Share 2 x 500.000', '2021-01-04', 0, 'keluar', 1000000),
(11168, 'Maulana, J.A', 'Profit Share 2 x 200.000', '2021-01-04', 0, 'keluar', 400000),
(11169, 'Maulana, J.A', 'Profit Share 2 x 1.000.000 ', '2021-01-04', 0, 'keluar', 2000000),
(11170, 'Maulana, J.A', 'Pembuatan Web SMP IT Nurul Hasan', '2021-01-04', 0, 'keluar', 4000000),
(11171, 'Maulana, J.A', 'Pembuatan Web MTs HK 1', '2021-01-04', 0, 'keluar', 12000000),
(11172, 'Maulana, J.A', 'Pembuatan Web MA HK', '2021-01-04', 0, 'keluar', 11500000),
(11174, 'Maulana, J.A', 'Jasa PSB', '2021-01-04', 0, 'keluar', 5000000),
(11175, 'Maulana, J.A', 'Gaji Karyawan', '2021-01-04', 0, 'keluar', 656500),
(11176, 'Maulana, J.A', 'Gaji Bulan Oktober 2 x 1000000', '2021-01-04', 0, 'keluar', 2000000),
(11177, 'Maulana, J.A', 'Gaji Bulan November 2 x 1000000', '2021-01-04', 0, 'keluar', 2000000),
(11178, 'Maulana, J.A', 'Gaji + Bonus Bulan Desember', '2021-01-04', 0, 'keluar', 2388000),
(11179, 'Maulana, J.A', 'Bonus Ustadz Hendra: Paket Water Heater', '2021-01-04', 0, 'keluar', 850000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `klien`
--

CREATE TABLE `klien` (
  `kode` int(11) NOT NULL,
  `penanggungjawab` varchar(100) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(300) CHARACTER SET latin1 NOT NULL,
  `jatuhtempo` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `jenis` varchar(20) CHARACTER SET latin1 NOT NULL,
  `keluar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `klien`
--

INSERT INTO `klien` (`kode`, `penanggungjawab`, `keterangan`, `jatuhtempo`, `jumlah`, `jenis`, `keluar`) VALUES
(6, 'MAN 3 Kuningan', 'Paket Web MAN 3 Kunungan = Hosting 1.2jt, Domain 55rb, Maintainance 750rb', '2021-10-26', 2005000, 'masuk', 0),
(7, 'Kesiswaan MA Husnul Khotimah', 'Bimbel PK MA Husnul Khotimah', '2021-10-27', 500000, 'masuk', 0),
(8, 'MA Husnul Khotimah', 'Paket Web MA HK1 (2500 siswa) = 5*3.050.000 (hosting) + Maintainance 2.600.000 ', '2021-05-11', 17850000, 'masuk', 0),
(9, 'MTs Husnul Khotimah', 'Paket Web MA HK1 (1200 siswa) = 3*3.050.000 (hosting) + Maintainance 2.600.000', '2021-05-11', 11750000, 'masuk', 0),
(10, 'MTs Husnul Khotimah 2 Kuningan', 'Paket Web MTs HK2 (800 siswa) = 3*3.050.000 (hosting) + Maintainance 2.600.000', '2021-05-11', 11750000, 'masuk', 0),
(11, 'Urusan Bahasa', 'Web Aplikasi TOEFL', '2021-10-27', 1050000, 'masuk', 0),
(12, 'Kesiswaan MA Husnul Khotimah', 'Aplikasi Presensi dan Absensi Siswa', '2021-10-27', 500000, 'masuk', 0),
(13, 'MAN 3 Kuningan', 'Pembelian Hosting', '2021-05-11', 0, 'keluar', 1000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `klien`
--
ALTER TABLE `klien`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kas`
--
ALTER TABLE `kas`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11184;

--
-- AUTO_INCREMENT untuk tabel `klien`
--
ALTER TABLE `klien`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
