-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Sep 2025 pada 02.44
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'pass010208'),
(2, 'Aufa Dzaky', 'pass010208');

-- --------------------------------------------------------

--
-- Struktur dari tabel `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `class` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `pict` varchar(1000) NOT NULL,
  `description` varchar(255) NOT NULL,
  `vote_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `class`, `number`, `pict`, `description`, `vote_count`) VALUES
(1, 'Ghina Julimar Andana & Zahratussyita', 'XI KEC & X KEC', 1, 'https://i.ibb.co.com/ZRWK3gnk/3.png', 'Calon Kandidat Ketua & Wakil OSIS Nomor 1 Periode 2025 / 2026', 0),
(2, 'Reza Maulana & Azka Marchamah', 'XI RPL & X KEC', 2, 'https://i.ibb.co.com/VchBf75Z/2.png', 'Calon Kandidat Ketua & Wakil OSIS Nomor 2 Periode 2025 / 2026', 0),
(3, 'Firyal Carissa Keysha & Dian Ratna Hafsari', 'XI RPL & X KEP', 3, 'https://i.ibb.co.com/rRzjJKCY/1.png', 'Calon Kandidat Ketua & Wakil OSIS Nomor 3 Periode 2025 / 2026', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ready` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `voters`
--

INSERT INTO `voters` (`id`, `name`, `class`, `Username`, `Password`, `ready`) VALUES
(1, 'Arjuna Bayu Satria', 'X TKJ', 'arjunatkj', '9712', 0),
(2, 'Aisyah Hasna Manuputty', 'X TKJ', 'aisyahtkj', '6481', 0),
(3, 'Achmat Rifat', 'X TKJ', 'achmattkj', '8535', 0),
(4, 'Moch. Faizal Ramadhan', 'X TKJ', 'faizaltkj', '7259', 0),
(5, 'Danu Mulya Putra N', 'X TKJ', 'danutkj', '4933', 0),
(6, 'Dzakiyah Uraira', 'X TKJ', 'dzakiyahtkj', '9594', 0),
(7, 'Habibi Muhammad H.', 'X TKJ', 'habibitkj', '2207', 0),
(8, 'Kelvin Dwi Aldiano', 'X TKJ', 'kelvintkj', '6501', 0),
(9, 'Khoiruzzakiyah', 'X TKJ', 'khoiruztkj', '8732', 0),
(10, 'Khusnul Andrianto', 'X TKJ', 'khusnultkj', '7896', 0),
(11, 'Karisa Zulfa Andany', 'X TKJ', 'karisatkj', '2647', 0),
(12, 'Muhamad Rizki Putra B.', 'X TKJ', 'rizkitkj', '6150', 0),
(13, 'M.Fiqal', 'X TKJ', 'fiqaltkj', '7738', 0),
(14, 'M. Jabbar Rahman', 'X TKJ', 'jabbartkj', '3197', 0),
(15, 'Muhammad Labidsyah R.', 'X TKJ', 'labidtkj', '5805', 0),
(16, 'Muhammad Rayizi R.', 'X TKJ', 'rayizitkj', '7221', 0),
(17, 'Mohamad Nezar I', 'X TKJ', 'nezartkj', '3437', 0),
(18, 'Muhammad Dani Febrian', 'X TKJ', 'danitkj', '5027', 0),
(19, 'Nayaka', 'X TKJ', 'nayakatkj', '8418', 0),
(20, 'Noal Pratama', 'X TKJ', 'noaltkj', '3635', 0),
(21, 'Quinsha Namerajea', 'X TKJ', 'quinshatkj', '1893', 0),
(22, 'Rava Jovian Janu', 'X TKJ', 'ravatkj', '8440', 0),
(23, 'Rambun Pamenang', 'X TKJ', 'rambuntkj', '4479', 0),
(24, 'Rezky Sania Ramadhan', 'X TKJ', 'rezkytkj', '1485', 0),
(25, 'Raka Al Farizi Soulsel', 'X TKJ', 'rakatkj', '9796', 0),
(26, 'Shihab Fatin Adillah', 'X TKJ', 'shihabtkj', '5260', 0),
(27, 'Siti Sukma Sumiati', 'X TKJ', 'sititkj', '6473', 0),
(28, 'Setiawan Rizky A.', 'X TKJ', 'setiawantkj', '9854', 0),
(29, 'Farah Nur Mifta', 'X TKJ', 'farahtkj', '7618', 0),
(30, 'Ananda Novriansyah Hadi', 'X RPL', 'anandarpl', '8121', 0),
(31, 'Adrian Ibra Al Fazry', 'X RPL', 'adrianrpl', '1469', 0),
(32, 'Alif Ramdhan', 'X RPL', 'alifrpl', '6340', 0),
(33, 'Ahmad Fachri', 'X RPL', 'fachrirpl', '9079', 0),
(34, 'Almira Srianjani Tarigan', 'X RPL', 'almirarpl', '2746', 0),
(35, 'Aisyah Nurrohmah Ismail', 'X RPL', 'aisyahrpl', '9069', 0),
(36, 'Alviyar Hidayat', 'X RPL', 'alviyarrpl', '8068', 0),
(37, 'Albani Fathasena Mulia', 'X RPL', 'albanirpl', '4068', 0),
(38, 'Damar Maulana', 'X RPL', 'damarrpl', '9202', 0),
(39, 'Fauhad Zulfandi Muhammad', 'X RPL', 'fauhadrpl', '4774', 0),
(40, 'Fajar Faturrohman', 'X RPL', 'fajarrpl', '1333', 0),
(41, 'Fadhill Ahmad Maulana', 'X RPL', 'fadhillrpl', '4767', 0),
(42, 'Gilang Ramadhan', 'X RPL', 'gilangrpl', '8362', 0),
(43, 'Ibnu Julian Aditya', 'X RPL', 'ibnurpl', '3509', 0),
(44, 'Muhammad Nouval', 'X RPL', 'nouvalrpl', '1901', 0),
(45, 'Muhammad Diqi Maulana', 'X RPL', 'diqirpl', '8658', 0),
(46, 'Moch. Rezz Samudra ', 'X RPL', 'rezzrpl', '8395', 0),
(47, 'Muhammad Fikhri', 'X RPL', 'fikhrirpl', '2112', 0),
(48, 'M. Fathi Razfi', 'X RPL', 'fathirpl', '7280', 0),
(49, 'Muhammad Reski', 'X RPL', 'reskirpl', '9630', 0),
(50, 'Muhammad Rafa Alfareza', 'X RPL', 'rafarpl', '3093', 0),
(51, 'Nabil Falah', 'X RPL', 'nabilrpl', '6360', 0),
(52, 'Risyad Manaf', 'X RPL', 'risyadrpl', '7683', 0),
(53, 'Rafi Fadhillah Fahry', 'X RPL', 'rafirpl', '7472', 0),
(54, 'Sutan Akbar Raihan', 'X RPL', 'sutanrpl', '5365', 0),
(55, 'Zikri', 'X RPL', 'zikrirpl', '8088', 0),
(56, 'Salwa Salshabilla', 'X RPL', 'salwarpl', '3694', 0),
(57, 'Alyssa Putri Zahra', 'X KEC', 'putrikec', '1538', 0),
(58, 'Aisyah Syalsabilah', 'X KEC', 'aisyahkec', '9792', 0),
(59, 'Asyifa Anafeni', 'X KEC', 'asyifakec', '3103', 0),
(60, 'Aurellia', 'X KEC', 'aurelliakec', '9360', 0),
(61, 'Azka Marchamah', 'X KEC', 'azkakec', '2609', 0),
(62, 'Chika Angraini', 'X KEC', 'chikakec', '1505', 0),
(63, 'Fitri Rachmadani', 'X KEC', 'fitrikec', '6962', 0),
(64, 'Hana Setianingsih', 'X KEC', 'hanakec', '6665', 0),
(65, 'Keyla Saskya Cahya', 'X KEC', 'keylakec', '8637', 0),
(66, 'Laila Al Jamila', 'X KEC', 'lailakec', '6355', 0),
(67, 'Muzaitun Khaila Fitriyani', 'X KEC', 'muzaitunkec', '8649', 0),
(68, 'Muttia Rika', 'X KEC', 'muttiakec', '2209', 0),
(69, 'Sharliz Malikha Khairani', 'X KEC', 'sharlizkec', '8749', 0),
(70, 'Maulida Septiani C', 'X KEC', 'maulidakec', '9598', 0),
(71, 'Naomi ', 'X KEC', 'naomikec', '9605', 0),
(72, 'Najla Syakila ', 'X KEC', 'najlakec', '5112', 0),
(73, 'Naswa Almira Putri', 'X KEC', 'naswakec', '5387', 0),
(74, 'Nadine Naira Ismail', 'X KEC', 'nadinekec', '5317', 0),
(75, 'Olivia Angraeni', 'X KEC', 'oliviakec', '1600', 0),
(76, 'Rossita Aprilia', 'X KEC', 'rossitakec', '2322', 0),
(77, 'Siti Khoirunisa', 'X KEC', 'khoirunisakec', '7970', 0),
(78, 'Siti Nuraisyah', 'X KEC', 'nuraisyahkec', '2076', 0),
(79, 'Salsabila Sarif', 'X KEC', 'salsabilakec', '5278', 0),
(80, 'Valentina Putri', 'X KEC', 'valentinakec', '2757', 0),
(81, 'Zahwa Aqila', 'X KEC', 'zahwakec', '2182', 0),
(82, 'Zaskia Julia Rahmah', 'X KEC', 'zaskiakec', '1470', 0),
(83, 'Zahratussyita', 'X KEC', 'zahrakec', '5515', 0),
(84, 'Amara Refliana Ardelia', 'X KEC', 'amarakec', '3893', 0),
(85, 'Arih Luthfiyyah', 'X KEP', 'arihkep', '6566', 0),
(86, 'Aura Bebi Rivera', 'X KEP', 'aurakep', '4152', 0),
(87, 'Carrisa Putri Haryanti', 'X KEP', 'carrisakep', '8476', 0),
(88, 'Dian Ratna Hafsari', 'X KEP', 'diankep', '5783', 0),
(89, 'Dwi Sabrina', 'X KEP', 'dwikep', '8416', 0),
(90, 'Dara Jelita', 'X KEP', 'darakep', '9862', 0),
(91, 'Fina Nailatul Izzah', 'X KEP', 'finakep', '2359', 0),
(92, 'Fitra Nurmalita Sandi', 'X KEP', 'fitrakep', '8650', 0),
(93, 'Filzah Yamini', 'X KEP', 'filzahkep', '8734', 0),
(94, 'Helmalia Putri', 'X KEP', 'helmaliakep', '4365', 0),
(95, 'Hanifah Fauziah', 'X KEP', 'hanifahkep', '8863', 0),
(96, 'Kayla Rihadatul Aisya', 'X KEP', 'kaylakep', '6495', 0),
(97, 'Masyiah Selensix', 'X KEP', 'masyiahkep', '8652', 0),
(98, 'Mutiana Aprilia', 'X KEP', 'mutianakep', '1392', 0),
(99, 'M. Fauzan', 'X KEP', 'fauzankep', '2441', 0),
(100, 'Muhammad Raffa P', 'X KEP', 'raffakep', '4782', 0),
(101, 'Novi Febyanti', 'X KEP', 'novikep', '3802', 0),
(102, 'Rama Ardiansyah', 'X KEP', 'ramakep', '2718', 0),
(103, 'Rifania Chantika', 'X KEP', 'rifaniakep', '5198', 0),
(104, 'Siti Zahra H', 'X KEP', 'zahrakep', '4897', 0),
(105, 'Syifa Ariyanti', 'X KEP', 'syifakep', '2771', 0),
(106, 'Shesyah Kinara Putri', 'X KEP', 'shesyahkep', '3639', 0),
(107, 'Sheila Makdalena Nauli', 'X KEP', 'sheilakep', '9598', 0),
(108, 'Vega Diyan Arum', 'X KEP', 'vegakep', '8245', 0),
(109, 'Vannesha Salsabilla', 'X KEP', 'vanneshakep', '8089', 0),
(110, 'Windi Triyanti Dewi', 'X KEP', 'windikep', '9202', 0),
(111, 'Zahir Ali', 'X KEP', 'zahirkep', '4999', 0),
(112, 'Zahra Asyifa ', 'X KEP', 'asyifakep', '9882', 0),
(113, 'Alif Habibu Rahman', 'XI', 'alifxi', '6358', 0),
(114, 'Azzahra Febrindah', 'XI', 'zahraxi', '3889', 0),
(115, 'Dimas Akasah', 'XI', 'dimasxi', '9140', 0),
(116, 'Fairuz Aziz Ardana', 'XI', 'azizxi', '8034', 0),
(117, 'Firyal Carrisa Keysha', 'XI', 'firyalxi', '3079', 0),
(118, 'Ghina Julimar Andana', 'XI', 'ghinaxi', '3606', 0),
(119, 'Haikal Anugrah Aledestya', 'XI', 'haikalxi', '7155', 0),
(120, 'Hani Amelia', 'XI', 'hanixi', '9937', 0),
(121, 'Kaira Almaira Azzahra', 'XI', 'kairaxi', '1184', 0),
(122, 'Nafilla Petrina Zanzabila', 'XI', 'nafillaxi', '9308', 0),
(123, 'Nur Khoiriah Sitompul', 'XI', 'nuyxi', '4901', 0),
(124, 'Putri Tarisha Ramadhani', 'XI', 'putrixi', '1053', 0),
(125, 'Reza Maulana', 'XI', 'rezaxi', '8201', 0),
(126, 'Laila Apriliana Nur. S', 'XI', 'lailaxi', '2351', 0),
(127, 'Diyah Sulistiyaning Hapsari', 'XI', 'diyahxi', '5244', 0),
(128, 'Histi Nur Sopiana', 'XI', 'histixi', '7405', 0),
(129, 'Rakha Orvala Pratama R', 'XII', 'rakhaxii', '2459', 0),
(130, 'Alliya Safira', 'XII', 'alliyaxii', '1774', 0),
(131, 'Faqihuddin Muhammad', 'XII', 'faqihxii', '6678', 0),
(132, 'Katya Kaylatusy Fasya Umbara', 'XII', 'katyaxii', '9680', 0),
(133, 'Nazwa Hidayatuz Zahra', 'XII', 'nazwaxii', '3910', 0),
(134, 'Nada Natalin Elsaday', 'XII', 'nadaxii', '2052', 0),
(135, 'Raihan Muhammad Akliputra', 'XII', 'raihanxii', '1754', 0),
(136, 'Rifki Nofianto', 'XII', 'rifkixii', '1694', 0),
(137, 'M. Rasha Herdian', 'XII', 'rashaxii', '9333', 0),
(138, 'Momon Darmawan, S.Pd', 'Kepala Sekolah SMK', 'momon', '3560', 0),
(139, 'Deden Sugiri', 'Wakur', 'deden', '2861', 0),
(140, 'Muhammad Suhendra', 'Wakahubin', 'suhendra', '1310', 0),
(141, 'Tegar Ariqa Putra', 'Wakasis', 'tegar', '4855', 0),
(142, 'muhammad Nuh', 'Guru', 'nuh', '5829', 0),
(143, 'Slamet Wijaya', 'Guru', 'slamet', '8664', 0),
(144, 'Marolah', 'Guru', 'marolah', '1535', 0),
(145, 'Dikri Aziz', 'Guru', 'dikri', '1898', 0),
(146, 'Mursidi', 'Guru', 'mursidi', '3972', 0),
(147, 'Jumari', 'Guru', 'jumari', '1505', 0),
(148, 'Vionita Rahmawati', 'Guru', 'vionita', '3254', 0),
(149, 'Neni dian Nurjannah', 'Guru', 'neni', '5150', 0),
(150, 'Fanny Dwicahya Lisdiana', 'Guru', 'fanny', '9998', 0),
(151, 'Wina Darma Rahmah', 'Guru', 'wina', '2675', 0),
(152, 'Da\'iyatu Diyana', 'Guru', 'diyana', '6709', 0),
(153, 'Savira Alisya Wirawan', 'Guru', 'savira', '4885', 0),
(154, 'Ayu Tristiyanti Najua', 'Guru', 'ayu', '1840', 0),
(155, 'Sakila Salawah', 'Guru', 'sakila', '1853', 0),
(156, 'Dina Safitri', 'Guru', 'dina', '9289', 0),
(157, 'Diajeng Nareswari Putri Daruadji', 'PKM', 'diajeng', '4983', 0),
(158, 'Zahwa Syarafina Ramadhani', 'PKM', 'zahwakec', '8905', 0),
(159, 'Nur Hanifah ', 'Guru', 'hanifah', '1127', 0),
(160, 'dr. Satria Ghaibi Saputra, S.AP,M.Si', 'Ketua Yayasan', 'satria', '3797', 0),
(161, 'Dra. Hj. Conny Kurniawati, M.Pd', 'Pembina Yayasan', 'conny', '1261', 0),
(162, 'Leonny Sukmaning Pertiwi, B.Sc, M.Si', 'Keuangan', 'leonny', '4081', 0),
(163, 'Prima Sagita Setyowati, SE., M.Si', 'Kepala Sekolah TK', 'prima', '3377', 0),
(164, 'Neng Meliyana, M.Pd', 'Kepala Sekolah SD', 'meliyana', '9256', 0),
(165, 'Yusmanto, SS', 'Kepala Sekolah SMP', 'yusmanto', '1650', 0),
(166, 'Maira', 'TU', 'maira', '3500', 0),
(167, 'Minat', 'Manager Building', 'minat', '4782', 0),
(168, 'Fajriati Ayu', 'TU', 'ayucipuy', '8913', 0),
(169, 'Guest1', 'Guest1', 'Guest1', '9521', 0),
(170, 'GUest2', 'GUest2', 'GUest2', '2212', 0),
(171, 'Guest3', 'Guest3', 'Guest3', '3617', 0),
(172, 'Guest4', 'Guest4', 'Guest4', '6993', 0),
(173, 'Guest5', 'Guest5', 'Guest5', '9060', 0),
(174, 'Guest6', 'Guest6', 'Guest6', '9054', 0),
(175, 'Guest7', 'Guest7', 'Guest7', '4135', 0),
(176, 'Guest8', 'Guest8', 'Guest8', '5651', 0),
(177, 'Guest9', 'Guest9', 'Guest9', '1302', 0),
(178, 'Guest10', 'Guest10', 'Guest10', '6574', 0),
(179, 'Guest11', 'Guest11', 'Guest11', '7317', 0),
(180, 'Guest12', 'Guest12', 'Guest12', '9043', 0),
(181, 'Guest13', 'Guest13', 'Guest13', '4520', 0),
(182, 'Guest14', 'Guest14', 'Guest14', '2444', 0),
(183, 'Guest15', 'Guest15', 'Guest15', '9773', 0),
(184, 'name', 'class', 'Username', 'Password', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
