-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2025 pada 03.42
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `destinasi_nusantara`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Pantai Kuta', 'Pantai yang terkenal di Bali dengan ombak yang cocok untuk berselancar.', 'pantai_kuta.jpg', '2025-01-11 04:26:22', 'admin'),
(2, 'Taman Nasional Komodo', 'Rumah bagi komodo, kadal terbesar di dunia, terletak di Nusa Tenggara Timur.', 'komodo.jpg', '2024-12-22 10:10:00', 'admin'),
(3, 'Kawah Ijen', 'Gunung dengan kawah biru yang memukau dan api biru alami di Banyuwangi, Jawa Timur.', 'kawah_ijen.jpg', '2024-12-22 10:20:00', 'admin'),
(4, 'Raja Ampat', 'Surga tersembunyi di Papua Barat dengan keindahan bawah laut yang luar biasa.', 'raja_ampat1.jpg', '2024-12-22 10:30:00', 'admin'),
(5, 'Candi Borobudur', 'Salah satu candi Buddha terbesar di dunia, terletak di Magelang, Jawa Tengah.', 'candi_borobudur.jpg', '2024-12-26 15:12:03', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `tanggal`, `username`, `gambar`) VALUES
(1, '2024-12-07 10:00:00', 'admin', 'tambi.jpeg'),
(2, '2024-12-07 10:05:00', 'sulaksana', 'sumba2.jpg'),
(3, '2024-12-07 10:10:00', 'admin', 'sikidang.jpg'),
(4, '2024-12-07 10:15:00', 'sulaksana', 'sikunir.png'),
(5, '2024-12-07 10:20:00', 'sulaksana', 'sumba3.jpg'),
(6, '2024-12-07 10:25:00', 'admin', 'sumba1.jpg'),
(7, '2024-12-07 10:30:00', 'admin', 'ratapan.png'),
(8, '2024-12-07 10:35:00', 'sulaksana', 'gedungsongo.jpg'),
(9, '2024-12-07 10:40:00', 'admin', 'pinus.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1736542565_jepri.jpg'),
(2, 'sulaksana', 'e41fe7252f5909f9621bb8a31c008575', '1736581498_WhatsApp Image 2025-01-03 at 20.52.11 (1).jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
