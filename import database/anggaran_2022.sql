-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 07:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anggaran_2022`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `f_coa` (`kode` VARCHAR(255)) RETURNS VARCHAR(255) CHARSET utf8mb4 BEGIN
DECLARE result VARCHAR(255);
SET result = 0;
SELECT kode_mak INTO result
FROM coa WHERE kode_sbu = kode
LIMIT 1;
RETURN result;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `f_ik_kegiatan` (`kode` VARCHAR(255)) RETURNS VARCHAR(255) CHARSET utf8mb4 BEGIN
DECLARE result VARCHAR(255);
SET result = 0;
SELECT kode_ik INTO result
FROM ik_kegiatan WHERE kode_kegiatan = kode
LIMIT 1;
RETURN result;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `pagu` () RETURNS INT(11) RETURN 2000000000$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email_admin`, `password_admin`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `kode_coa` int(11) NOT NULL,
  `kode_sbu` varchar(255) NOT NULL,
  `kode_mak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`kode_coa`, `kode_sbu`, `kode_mak`) VALUES
(1, '1.1.4', 511004),
(315, '1.2.16', 511004),
(316, '1.3.16', 511004),
(317, '1.4.16', 511004),
(318, '1.5.16', 511004),
(319, '1.6.16', 511004),
(320, '1.7.16', 511004),
(321, '1.8.4', 511004),
(322, '1.9.11', 511004),
(323, '1.10.1.6', 511004),
(324, '1.10.1.1.15', 533003),
(325, '1.10.1.2.15', 532003),
(326, '1.10.1.2.15', 534003),
(327, '1.10.1.2.15', 535003),
(328, '1.10.1.3.18', 535003),
(329, '1.10.2.1', 511004),
(330, '1.10.2.1.1.15', 532003),
(331, '2.1.1.2', 511006),
(332, '2.1.2.2', 511006),
(333, '2.1.3.3', 511006),
(334, '2.1.4.2', 563001),
(335, '2.2.1.2', 511006),
(336, '2.2.2.2', 511006),
(337, '2.2.3', 563001),
(338, '2.2.4', 511007),
(339, '2.2.5', 511006),
(340, '2.3.1.2', 511006),
(341, '2.3.2.2', 511006),
(342, '2.4.5', 511005),
(343, '2.5.1', 511005),
(344, '2.6.1.3', 511006),
(345, '2.6.2.2', 511006),
(346, '2.6.3.1', 511006),
(347, '2.7.1', 511005),
(348, '2.8.1', 511006),
(349, '2.9.1', 511006),
(350, '2.9.7.1', 511006),
(351, '2.10.3', 511006),
(352, '2.11.1', 511006),
(353, '3.1.4', 517001),
(354, '3.2.1', 517002),
(355, '3.3.5', 516001),
(356, '3.3.5', 516002),
(357, '3.3.5', 521002),
(358, '3.3.5', 521002),
(359, '4.1.4', 512014),
(360, '5.1', 512014),
(361, '5.2.2', 511006),
(362, '6.1.1', 512014),
(363, '6.2.3', 512014),
(364, '7.1', 512014),
(365, '7.1', 511006),
(366, '8.1.1', 521002),
(367, '8.2.1', 521002),
(368, '8.3.1', 521002),
(369, '8.4.1', 521002),
(370, '9.1.1', 516002),
(371, '9.2.3', 516002),
(372, '9.3', 516001),
(373, '10.1.1.1', 511007),
(374, '10.1.2.3', 511007),
(375, '10.1.3.2', 511007),
(376, '10.1.4.2', 511007),
(377, '10.1.5.2', 511006),
(378, '10.1.5.2', 511007),
(379, '10.1.5.2', 511006),
(380, '10.1.5.2', 511007),
(381, '10.1.5.2', 511006),
(382, '10.1.6.5', 511007),
(383, '10.1.6.5', 511006),
(384, '10.1.7.1', 511006),
(385, '10.2.1.5', 511007),
(386, '10.2.2.5', 511007),
(387, '10.2.3.1', 511006),
(388, '10.2.3.1', 511007),
(389, '10.2.4.5', 511007),
(390, '10.2.4.5', 511006),
(391, '10.2.5.1.1', 511006),
(392, '10.2.5.2.1', 511006),
(393, '10.2.6.1', 511006),
(394, '10.2.6.2.2', 511006),
(395, '11.1.1.1', 511008),
(396, '11.2.2', 511008),
(397, '11.3.1', 511008),
(398, '11.4.1', 511008),
(399, '11.5.1', 511008),
(400, '12.1', 511009),
(401, '13.2', 511010),
(402, '14.1', 512015),
(403, '15.1.1.1.2', 512016),
(404, '15.1.1.2.2', 512016),
(405, '15.1.2.1.2', 512016),
(406, '15.1.2.2.2', 512016),
(407, '15.2.2', 524002),
(408, '15.2.2', 524001),
(409, '16.1', 522007),
(410, '16.2.6', 522007),
(411, '16.3.1', 522007),
(412, '16.3.2.4', 522007),
(413, '16.4.1.6', 522007),
(414, '16.4.2.6', 522007),
(415, '16.4.3.2', 522007),
(416, '16.4.4.2', 522007),
(417, '16.4.5.2', 522007),
(418, '16.4.6', 522007),
(419, '16.4.7.6', 522007),
(420, '16.4.8.5', 522007),
(421, '16.4.9.4', 522007),
(422, '17.2', 511007),
(423, '17.4.1', 511007),
(424, '18.1.2', 511017),
(425, '18.2.1.2', 511016),
(426, '18.2.2.2', 511016),
(427, '18.2.2.2', 511017),
(428, '18.2.3.3', 511016),
(429, '18.2.3.3', 511017),
(430, '19.1.3', 511017),
(431, '19.2.3', 511017),
(432, '19.3.1', 511017),
(433, '19.4.1.1', 511017),
(434, '19.4.2.1', 511017),
(435, '19.4.3.1', 511017),
(436, '19.4.4.1', 511017),
(437, '19.5.1.1.1', 511017),
(438, '19.5.1.2.1', 511017),
(439, '19.5.1.3.1', 511017),
(440, '19.6.1', 564002),
(441, '20.3', 515001),
(442, '21.1.2', 511005),
(443, '21.1.2', 511006),
(444, '21.2.1', 511006),
(445, '21.3.2', 511005),
(446, '21.4.1', 511006),
(447, '22.1.1', 522006),
(448, '23.1.1', 511011),
(449, '23.2.1.1.1', 511011),
(450, '23.2.2.1.1', 511011),
(451, '24.1', 511006),
(452, '25.8', 526003),
(453, '26.1', 521003),
(454, '27.1', 511007),
(455, '27.2.2', 524001),
(456, '28.1.1.1', 512018),
(457, '28.1.2.1', 512018),
(458, '28.2', 515001),
(459, '28.3.1', 511003),
(460, '28.4.1', 511003),
(461, '28.5', 521002),
(462, '28.6', 516001),
(463, '28.7', 512018),
(464, '28.8', 514003),
(465, '29.1.1', 513002),
(466, '29.1.1', 524005),
(467, '29.2.1', 522006),
(468, '30.1.4', 513001),
(469, '30.2', 512019),
(470, '30.3.3', 512019),
(471, '30.4.1.1.1', 512019),
(472, '30.4.1.2.1', 512019),
(473, '30.4.2.1.1', 512019),
(474, '30.4.2.2.1', 512019),
(475, '30.5.1', 512019),
(476, '30.6.6', 526002),
(477, '30.7.2', 526002),
(478, '31.1.1', 514002),
(479, '31.2.3', 571003),
(480, '32.2', 515001),
(481, '33.1.1', 512006),
(482, '34.3', 511012),
(483, '35.1', 511014),
(484, '35.32.1', 511014),
(485, '35.33.3', 511014),
(486, '35.34', 511006),
(487, '35.35.2', 511014),
(488, '35.36.3', 511014),
(489, '35.37.3', 511014),
(490, '35.38.1', 511014),
(491, '35.39.1', 511014),
(492, '35.40.1.1', 511006),
(493, '36.1.5', 511006),
(494, '37.1', 511005),
(495, '38.1', 511005),
(496, '39.1', 511006),
(497, '39.2.2', 511006),
(498, '40.1.2', 511013),
(499, '40.2.1.1', 511013),
(500, '40.2.2.3', 511013),
(501, '40.3.1.1.1', 511013),
(502, '40.3.1.2.1.1', 511013),
(503, '40.3.1.2.2.1', 511013),
(504, '40.3.1.3.1', 524002),
(505, '40.4.1.1.1', 511013),
(506, '40.4.1.1.1', 521002),
(507, '40.4.2.2', 511013),
(508, '40.4.2.2', 521002),
(509, '40.5.1.1.2', 511013),
(510, '40.5.1.2.7', 511013),
(511, '40.5.1.2.7', 524001),
(512, '40.6.1.3', 511013),
(513, '40.6.2.7', 511013),
(514, '40.6.2.7', 524001),
(515, '41.1.1.1', 511014),
(516, '41.1.1.3.1', 511014),
(517, '41.1.2.1', 511014),
(518, '41.2.1', 511014),
(519, '41.2.3.3', 511014),
(520, '42.4', 511013),
(521, '43.4', 571002),
(522, '44.1.3', 571002),
(523, '44.2.3', 571002),
(524, '44.3.3', 571002),
(525, '45.1.1.1', 572001),
(526, '45.1.2.1', 572001),
(527, '45.1.3.1', 572001),
(528, '45.1.4.1', 511013),
(529, '45.2.1.1', 572001),
(530, '45.2.2.1', 572001),
(531, '45.2.3.1', 572001),
(532, '45.2.4.1', 511013),
(533, '45.3.1.1', 572001),
(534, '45.3.2.1', 572001),
(535, '45.3.3.1', 572001),
(536, '45.3.4.2', 511013),
(537, '45.4.1.1', 572001),
(538, '45.4.2.1', 572001),
(539, '45.4.3.1', 572001),
(540, '45.4.4.1', 511013),
(541, '46.1', 571004),
(542, '46.1', 511013),
(543, '47.4', 511015),
(544, '48.1.1', 572001),
(545, '48.2.1', 572001),
(546, '48.3.1', 511013),
(547, '49.1', 572001),
(548, '50.3', 511016);

-- --------------------------------------------------------

--
-- Table structure for table `iku_ikt`
--

CREATE TABLE `iku_ikt` (
  `kode_ik` varchar(255) NOT NULL,
  `nama_ik` varchar(255) NOT NULL,
  `anggaran_ik` int(11) NOT NULL,
  `terpakai_ik` int(11) NOT NULL,
  `ket_ik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iku_ikt`
--

INSERT INTO `iku_ikt` (`kode_ik`, `nama_ik`, `anggaran_ik`, `terpakai_ik`, `ket_ik`) VALUES
('1.1.10', 'Tingkat keketatan peminat (calon mahasiswa baru)', 31000000, 0, 'IKU'),
('1.1.11', 'Persentase kelulusan mahasiswa tepat waktu', 31000000, 5000000, 'IKU'),
('1.1.2', 'Persentase mata kuliah yang mengunakan pembelajaran daring (blended learning)', 31000000, 0, 'IKU'),
('1.1.3', 'Persentase lulusan bersertifikat kompetensi', 31000000, 0, 'IKU'),
('1.1.4', 'Persentase keterserapan lulusan', 31000000, 0, 'IKU'),
('1.1.5', 'Persentase kelulusan mahasiswa PPG', 31000000, 0, 'IKU'),
('1.1.6', 'Jumlah kelas berbahasa pengantar internasional', 31000000, 0, 'IKT'),
('1.1.7', 'Persentase jumlah mahasiswa asing', 31000000, 0, 'IKT'),
('1.1.8', 'Persentase mahasiswa yang mengikuti student mobility', 31000000, 0, 'IKT'),
('1.1.9', 'Presentase prodi yang menerapkan pembelajaran Merdeka Belajar', 31000000, 0, 'IKU'),
('1.2.1', 'Persentase dosen yang memperoleh rekognisi internasional', 31000000, 0, 'IKT'),
('1.2.2', 'Jumlah dosen yang mengikuti lecturer exchange/visiting scholar', 31000000, 0, 'IKT'),
('1.2.3', 'Persentase dosen asing', 31000000, 0, 'IKT'),
('2.1.1', 'Jumlah jurnal terbitan UPI yang terakreditasi/terindeks nasional', 31000000, 0, 'IKT'),
('2.1.2', 'Jumlah jurnal UPI yang terindeks oleh lembaga bereputasi', 31000000, 0, 'IKT'),
('2.1.3', 'Jumlah penelitian yang didanai', 31000000, 0, 'IKU'),
('2.1.4', 'Jumlah sitasi per-dosen', 31000000, 0, 'IKT'),
('2.1.5', 'Jumlah artikel hasil penelitian yang dipublikasikan pada jurnal bereputasi', 31000000, 0, 'IKU'),
('2.1.7', 'Jumlah keluaran penelitian yang berhasil mendapat rekognisi internasional atau diterapkan oleh masyarakat per jumlah dosen', 31000000, 0, 'IKT'),
('2.1.8', 'Jumlah mahasiswa yang terlibat dalam penelitian', 31000000, 0, 'IKU'),
('2.2.1', 'Jumlah Produk Inovasi', 31000000, 0, 'IKT'),
('2.2.4', 'Jumlah pameran/konser/pertunjukan IPTEK, seni dan budaya, serta penyelenggaraan forum ilmiah', 31000000, 0, 'IKU'),
('2.3.1', 'Jumlah Hak Kekayaan Intelektual', 31000000, 15000000, 'IKT'),
('3.1.1', 'Jumlah mahasiswa yang terlibat dalam PkM dosen', 31000000, 0, 'IKU'),
('3.1.2', 'Presentase dana Pengabdian kepada Masyarakat', 31000000, 0, 'IKU'),
('3.2.1', 'Jumlah luaran hasil PkM yang berhasil mendapat rekognisi internasional atau diterapkan oleh masyarakat per jumlah', 31000000, 0, 'IKT'),
('4.1.1', 'Jumlah kelompok mahasiswa yang didanai pada Program Kreativitas Mahasiswa (PKM)', 31000000, 0, 'IKU'),
('4.1.2', 'Jumlah mahasiswa yang berprestasi', 31000000, 0, 'IKU'),
('4.2.1', 'Presentase alokasi dana kegiatan kemahasiswaan', 31000000, 0, 'IKU'),
('4.2.10', 'Jumlah kegiatan kemahasiswaan yang melibatkan lulusan', 31000000, 0, 'IKU'),
('4.2.2', 'Jumlah mahasiswa yang memperoleh beasiswa', 31000000, 0, 'IKU'),
('4.2.3', 'Persentase mahasiswa dan lulusan yang memperoleh layanan bimbingan karir /Career Development Centre (CDC)', 31000000, 0, 'IKU'),
('4.2.4', 'Jumlah mahasiswa dan/atau lulusan yang menjadi wirausaha', 31000000, 0, 'IKT'),
('4.2.5', 'Persentase lulusan yang mendapatkan pekerjaan kurang dari 3 bulan', 31000000, 0, 'IKU'),
('4.2.6', 'Jumlah lulusan yang bekerja pada lembaga internasional', 31000000, 0, 'IKT'),
('4.2.7', 'Persentase lulusan yang melanjutkan studi', 31000000, 0, 'IKU'),
('4.2.8', 'Jumlah lembaga eksternal yang bekerjasama dalam pengembangan mahasiswa dan/atau lulusan', 31000000, 0, 'IKU'),
('4.2.9', 'Persentase pengguna lulusan yang puas terhadap kinerja lulusan', 31000000, 0, 'IKU'),
('4.3.1', 'Jumlah mahasiswa yang terlibat dalam kegiatan Ormawa dan UKM yang memperkuat kemajemukan dan keberagamaan', 31000000, 0, 'IKU'),
('4.3.2', 'Jumlah Kegiatan single event dan multievent yang diikuti Ormawa dan UKM', 31000000, 0, 'IKU'),
('4.3.3', 'Jumlah Pelatih/Pembina Ormawa dan UKM yang telah tersertifikasi', 31000000, 0, 'IKU'),
('5.1.1', 'Persentase dosen berkualifikasi Doktor', 31000000, 0, 'IKU'),
('5.1.2', 'Persentase dosen dengan jabatan Guru Besar', 31000000, 0, 'IKU'),
('5.1.3', 'Presentase dosen dengan jabatan Lektor Kepala', 31000000, 0, 'IKU'),
('5.1.4', 'Persentase pegawai yang menjadi anggota asosiasi profesi', 31000000, 0, 'IKU'),
('5.1.5', 'Persentase dosen yang memiliki sertifikat kompetensi', 31000000, 0, 'IKT'),
('5.1.6', 'Persentase dosen tetap yang berasal dari kalangan praktisi profesional, dunia industri, atau dunia kerja', 31000000, 0, 'IKT'),
('5.1.9', 'Jumlah sumber daya manusia yang memperoleh penghargaan/award', 31000000, 0, 'IKT'),
('5.2.10', 'Persentase unit yang menerapkan smart office', 31000000, 0, 'IKU'),
('5.2.11', 'Jumlah laboratorium microteaching', 31000000, 0, 'IKU'),
('5.2.12', 'Jumlah smart classroom', 31000000, 0, 'IKT'),
('5.2.2', 'Indeks kepuasan mahasiswa terhadap sarana dan prasarana', 31000000, 0, 'IKU'),
('5.2.3', 'Jumlah laboratorium terakreditasi dan mendukung inovasi', 31000000, 0, 'IKT'),
('5.2.9', 'Persentase fasilitas ramah difabel', 31000000, 0, 'IKU'),
('5.3.1', 'Jumlah IGU', 31000000, 0, 'IKT'),
('6.1.1', 'Jumlah kerja sama', 31000000, 0, 'IKU'),
('6.1.2', 'Indeks kepuasan pelayanan', 31000000, 0, 'IKU'),
('6.2.2', 'Persentase prodi terakreditasi unggul pada level nasional', 31000000, 0, 'IKU'),
('6.2.3', 'Jumlah prodi terakreditasi Internasional', 31000000, 0, 'IKT'),
('6.3.3', 'Jumlah dosen yang mengajar di sekolah', 31000000, 0, 'IKT'),
('PK1.2', 'Persentase lulusan S1 dan D4/D3/D2 yang menghabiskan paling sedikit 20 (dua puluh) sks di luar kampus', 31000000, 0, 'IKU'),
('PK2.1', 'Persentase dosen yang berkegiatan tridarma di kampus lain, di QS100 berdasarkan bidang ilmu (QS100 by subject)', 31000000, 0, 'IKT'),
('PK2.2', 'Persentase dosen membina mahasiswa yang berhasil meraih prestasi paling rendah tingkat nasional dalam 5 (lima) Tahun Terakhir', 31000000, 0, 'IKU'),
('PK2.3', 'Persentase dosen bekerja sebagai praktisi di dunia nkerja', 31000000, 0, 'IKU'),
('PK3.2', 'Persentase mata kuliah S1 dan D4/D3/D2 yang menggunakan metode pembelajaran pemecahan kasus n(case method) atau pembelajaran kelompok berbasis projek (team-based project) sebagai sebagian bobot', 31000000, 0, 'IKT');

-- --------------------------------------------------------

--
-- Table structure for table `ik_kegiatan`
--

CREATE TABLE `ik_kegiatan` (
  `kode_iku_ikt_kegiatan` int(11) NOT NULL,
  `kode_ik` varchar(255) NOT NULL,
  `kode_kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ik_kegiatan`
--

INSERT INTO `ik_kegiatan` (`kode_iku_ikt_kegiatan`, `kode_ik`, `kode_kegiatan`) VALUES
(1, '1.1.2', '1.1.2.2'),
(2, '1.1.2', '1.1.2.3'),
(3, '1.1.2', '1.1.2.5'),
(4, '1.1.3', '1.1.3.3'),
(5, '1.1.4', '1.1.4.2'),
(6, '1.1.4', '1.1.4.3'),
(7, '1.1.4', '1.1.4.4'),
(8, '1.1.7', '1.1.7.1'),
(9, '1.1.8', '1.1.8.1'),
(10, '1.1.9', '1.1.9.2'),
(11, '1.1.9', '1.1.9.3'),
(12, '1.1.11', '1.1.11.1'),
(13, '1.1.11', '1.1.11.2'),
(14, '1.1.11', '1.1.11.3'),
(15, '1.1.11', '1.1.7.16'),
(16, '1.2.1', '1.2.1.1'),
(17, '1.2.2', '1.2.2.1'),
(18, '1.2.2', '1.3.10.2'),
(19, '2.1.1', '2.1.1.3'),
(20, '2.1.1', '2.1.1.5'),
(21, '2.1.1', '2.1.1.6'),
(22, '2.1.3', '2.2.3.1'),
(23, '2.1.3', '2.1.3.4'),
(24, '2.1.3', '2.1.3.5'),
(25, '2.1.3', '2.2.1.3'),
(26, '2.1.3', '2.1.3.15'),
(27, '2.1.3', '2.2.1.5'),
(28, '2.1.3', '2.1.3.36'),
(29, '2.1.8', '2.1.7.4'),
(30, '2.1.8', '2.1.7.6'),
(31, '2.2.1', '2.2.1.1'),
(32, '2.2.1', '1.4.1.4'),
(33, '2.3.1', '1.1.7.40'),
(34, '5.1.5', '1.3.11.1'),
(35, '6.1.2', '1.2.7.1'),
(36, '6.1.2', '11'),
(37, '6.1.2', '1.1.7.33'),
(38, '6.3.3', '1.6.9.1'),
(39, '2.1.1', '2.3.1.2'),
(40, '2.1.1', '2.3.1.5'),
(41, '2.1.3', '2.6.1.1'),
(42, '2.1.3', '2.6.4.1'),
(43, '2.1.3', '2.5.1.13'),
(44, '2.1.8', '3.3.2.1'),
(45, '2.1.8', '4.3.2.2'),
(46, '2.1.8', '4.3.1.1'),
(47, '3.1.1', '3.1.1.2'),
(48, '3.1.1', '3.1.1.5'),
(49, '3.1.1', '3.1.1.6'),
(50, '3.1.2', '3.1.2.7'),
(51, '4.1.2', '4.1.2.1'),
(52, '4.1.2', '4.1.2.3'),
(53, '4.1.2', '4.1.2.6'),
(54, '4.1.2', '4.1.2.7'),
(55, '4.1.2', '4.1.2.8'),
(56, '4.1.2', '4.1.2.9'),
(57, '4.1.2', '4.1.2.10'),
(58, '4.1.2', '4.1.2.11'),
(59, '4.2.2', '4.2.2.1'),
(60, '4.2.2', '4.2.2.3'),
(61, '4.2.2', '4.4.1.1'),
(62, '4.2.4', '4.2.4.1'),
(63, '4.2.6', '4.9.2.1'),
(64, '4.2.8', '4.2.8.1'),
(65, '4.2.9', '4.2.9.1'),
(66, '4.2.10', '4.2.10.1'),
(67, '4.3.1', '4.3.1.2'),
(68, '4.3.3', '4.2.1.2'),
(69, '5.1.2', '5.1.1.5'),
(70, '5.1.1', '5.1.2.1'),
(71, '5.1.2', '5.1.2.3'),
(72, '5.1.5', '5.1.3.2'),
(73, '5.1.5', '5.1.5.5'),
(74, '5.1.5', '5.1.5.9'),
(75, '5.1.5', '5.1.5.1'),
(76, '5.1.5', '5.1.5.12'),
(77, '5.1.5', '5.1.5.14'),
(78, '5.1.5', '5.1.5.15'),
(79, '5.1.5', '5.1.5.17'),
(80, '5.1.9', '5.1.9.1'),
(81, '5.2.2', '5.3.3.1'),
(82, '5.2.2', '5.3.4.1'),
(83, '5.2.2', '5.3.3.2'),
(84, '5.2.3', '5.2.3.2'),
(85, '5.2.3', '5.2.3.3'),
(86, '5.2.3', '5.2.3.4'),
(87, '5.2.3', '5.2.3.6'),
(88, '5.2.3', '5.2.3.7'),
(89, '5.2.11', '5.2.11.1'),
(90, '6.1.1', '6.1.1.20'),
(91, '6.1.1', '6.1.1.26'),
(92, '6.1.2', '6.1.2.1'),
(93, '6.1.2', '6.1.2.17'),
(94, '6.1.2', '5.2.1.13'),
(95, '6.1.2', '6.1.2.35'),
(96, '6.1.2', '6.1.2.37'),
(97, '6.1.2', '6.1.2.39'),
(98, '6.1.2', '6.1.2.40'),
(99, '6.1.2', '5.2.2.2'),
(100, '6.1.2', '6.1.2.46'),
(101, '6.1.2', '6.1.2.47'),
(102, '6.1.2', '6.1.2.49'),
(103, '6.1.2', '6.1.2.51'),
(104, '6.1.2', '6.1.2.56'),
(105, '6.1.2', '5.2.2.5'),
(106, '6.1.2', '5.3.9.5'),
(107, '6.1.2', '5.3.9.7'),
(108, '6.1.2', '6.1.2.100'),
(109, '6.1.2', '6.1.2.101'),
(110, '6.1.2', '6.1.2.103'),
(111, '6.1.2', '6.1.2.105'),
(112, '6.1.2', '6.1.2.108'),
(113, '6.1.2', '6.1.2.109'),
(114, '6.1.2', '6.1.2.110'),
(115, '6.1.2', '6.1.2.112'),
(116, '4.2.1', '6.7.1.1'),
(117, '5.3.1', '6.6.4.2'),
(118, '6.1.2', '6.7.2.1'),
(119, '6.1.2', '6.7.1.2'),
(120, '6.1.2', '6.1.2.57'),
(121, '6.1.2', '6.1.2.58'),
(122, '6.1.2', '6.1.2.62'),
(123, '6.1.2', '6.1.2.65'),
(124, '6.1.2', '6.1.2.66'),
(125, '6.1.2', '6.1.2.68'),
(126, '6.1.2', '6.1.2.70'),
(127, '6.1.2', '6.1.2.71'),
(128, '6.1.2', '6.1.2.75'),
(129, '6.1.2', '6.1.2.77'),
(130, '6.1.2', '6.1.2.79'),
(131, '6.1.2', '6.1.2.81'),
(132, '6.1.2', '6.1.2.85'),
(133, '6.1.2', '6.1.2.88'),
(134, '6.1.2', '6.1.2.90'),
(135, '6.2.2', '6.2.2.1'),
(136, '6.2.2', '6.2.2.13'),
(137, '6.2.3', '6.2.3.1'),
(138, '6.3.3', '6.3.3.1'),
(139, '6.3.3', '6.6.2.2');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `kode_kegiatan` varchar(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `anggaran_kegiatan` int(11) NOT NULL,
  `terpakai_kegiatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`kode_kegiatan`, `nama_kegiatan`, `anggaran_kegiatan`, `terpakai_kegiatan`) VALUES
('1.1.1.5', 'Akselerasi kapasitas prodi/fakultas', 9500000, 0),
('1.1.11.1', 'Pelaksanaan seminar proposal', 9500000, 5000000),
('1.1.11.2', 'Pelaksanaan ujian komprehensif', 9500000, 0),
('1.1.11.3', 'Pelaksanaan ujian sidang', 9500000, 0),
('1.1.11.5', 'Pembayaran Insentif Berbasis Kinerja (IBK)', 9500000, 23000000),
('1.1.2.2', 'Pengembangan Pembelajaran dengan memanfaatkan spot UPI', 9500000, 0),
('1.1.2.3', 'Pengembangan model pembelajaran digital ', 9500000, 0),
('1.1.2.5', 'Pengembangan Mata Kuliah Daring', 9500000, 0),
('1.1.3.1', 'Pemeringkatan UPI dalam QS Stars Rating', 9500000, 0),
('1.1.3.3', 'Penguatan kemampuan berbahasa asing bagi Mahasiswa', 9500000, 0),
('1.1.4.1', 'Pemeringkatan UPI dalam QS World University Ranking by Subject', 9500000, 0),
('1.1.4.2', 'Pelaksanaan Audit Mutu Internal (AMI) dan Perangkingan Program Studi', 9500000, 0),
('1.1.4.3', 'Pengembangan Kurikulum', 9500000, 0),
('1.1.4.4', 'Pengembangan SAP, silabus, bahan ajar, dan buku ajar', 9500000, 0),
('1.1.5.1', 'Webometrics Ranking', 9500000, 0),
('1.1.7.1', 'Penyelenggaraan inbound/outbound student exchange', 9500000, 0),
('1.1.7.15', 'Pelaksanaan perkuliahan dual modes', 9500000, 0),
('1.1.7.16', 'Penyelenggaraan perkuliahan semester padat', 9500000, 0),
('1.1.7.33', 'Sertifikasi ISO', 9500000, 0),
('1.1.7.40', 'Hibah kompetitif penulisan buku ajar', 9500000, 15000000),
('1.1.8.1', 'Pengembangan dan implementasi program credit transfer', 9500000, 0),
('1.1.8.4', 'Penyelenggaraan program twinning', 9500000, 0),
('1.1.9.2', 'Pelaksanaan PPL', 9500000, 0),
('1.1.9.3', 'Pelaksanaan PPL luar negeri', 9500000, 0),
('1.1.9.8', 'Perkuliahan dari dosen tamu DN', 9500000, 0),
('1.2.1.1', 'Dosen terekognisi internasional', 9500000, 0),
('1.2.2.1', 'Lecturer exchange', 9500000, 0),
('1.2.3.3.', 'Perkuliahan dari dosen tamu LN', 9500000, 0),
('1.2.7.1', 'Pelaksanaan bimbingan akademik', 9500000, 0),
('1.3.1.4', 'Bantuan implementasi kerjasama riset dan publikasi dengan lembaga di luar negeri', 9500000, 0),
('1.3.10.2', 'Penyelenggaraan Visiting Scholar', 9500000, 0),
('1.3.10.4', 'Visiting Profesor', 9500000, 0),
('1.3.11.1', 'Pelatihan dosen di luar negeri', 9500000, 0),
('1.4.1.4', 'Pengembangan model dan teknologi pembelajaran', 9500000, 0),
('1.5.1.1', 'Seminar mahasiswa', 9500000, 0),
('1.5.6.1', 'Memfasilitasi prodi linier untuk terintegrasi', 9500000, 0),
('1.6.2.2', 'Kerjasama dengan sekolah mitra', 9500000, 0),
('1.6.5.1', 'Pengembangan program pendidikan profesi ', 9500000, 0),
('1.6.6.1', 'Kerjasama prodi dengan asosiasi profesi non-guru', 9500000, 0),
('1.6.7.1', 'Melibatkan dosen dalam pembelajaran di sekolah laboratorium', 9500000, 0),
('1.6.9.1', 'Kolaborasi guru dan dosen dalam penelitian', 9500000, 0),
('11', 'Pengadaan perangkat keras ICT', 9500000, 0),
('2.1.1.3', 'Penyelenggaraan seminar/konferensi nasional', 9500000, 0),
('2.1.1.4', 'Peningkatan kualitas jurnal online fakultas, departemen, kampus daerah, lembaga, dan UPT', 9500000, 0),
('2.1.1.5', 'Pelatihan pengelola jurnal melalui pemanfaatan Open Jurnal System (OJS) rujukan Dikti', 9500000, 0),
('2.1.1.6', 'Fasilitasi pengelolaan jurnal ilmiah nasional terakreditasi dan/atau terindeks (termasuk antologi)', 9500000, 0),
('2.1.2.1', 'Redisain roadmap riset pusat kajian', 9500000, 0),
('2.1.2.4', 'Penyelenggaraan seminar/konferensi internasional terindeks MSCEIS', 9500000, 0),
('2.1.2.5', ' Penyelenggaraan join conference', 9500000, 0),
('2.1.2.6', 'Pengembangan jurnal internasional bereputasi', 9500000, 0),
('2.1.3.15', 'Pelaksanaan riset oleh KBK', 9500000, 0),
('2.1.3.36', 'Hibah Penelitian', 9500000, 0),
('2.1.3.4', 'Penulisan artikel bersama dengan peneliti universitas atau lembaga profesional dalam negeri', 9500000, 0),
('2.1.3.5', 'Penulisan artikel bersama dengan peneliti universitas atau lembaga profesional luar negeri', 9500000, 0),
('2.1.4.10', 'Pelatihan pengelolaan jurnal ilmiah nasional', 9500000, 0),
('2.1.4.2', 'Insentif keikutsertaan seminar dan atau bantuan penyiapan publikasi pada proceeding terindeks', 9500000, 0),
('2.1.4.6', 'Pelatihan penulisan artikel ilmiah internasional', 9500000, 0),
('2.1.4.9', 'Penulisan buku ber-ISBN', 9500000, 0),
('2.1.7.4', 'Kolaborasi penelitian dosen dan mahasiswa', 9500000, 0),
('2.1.7.6', 'Fasilitasi Publikasi karya ilmiah Mahasiswa', 9500000, 0),
('2.2.1.1', 'Implementasi hasil penelitian untuk inovasi dan pengembangan PBM', 9500000, 0),
('2.2.1.3', 'Pelaksanaan riset oleh dosen dan tenaga kependidikan dengan jabatan fungsional tertentu', 9500000, 0),
('2.2.1.5', 'Pelaksanaan riset oleh pusat kajian', 9500000, 0),
('2.2.1.6', 'Pelaksanaan riset oleh unit akademik', 9500000, 0),
('2.2.2.3', 'Lokakarya penyusunan proposal riset unggulan', 9500000, 0),
('2.2.2.4', 'Pengembangan roadmap riset KBK', 9500000, 0),
('2.2.3.1', 'Pelatihan penulisan artikel ilmiah nasional', 9500000, 0),
('2.2.7.1', 'Pelatihan/workshop penulisan buku', 9500000, 0),
('2.3.1.2', 'Pembinaan dan pengelolaan jurnal ilmiah nasional terakreditasi Dikti', 9500000, 0),
('2.3.1.5', 'Pengembangan jurnal nasional terakreditasi', 9500000, 0),
('2.5.1.13', 'Seminar hasil penelitian', 9500000, 0),
('2.6.1.1', 'Penelitian bersama dengan lembaga mitra luar negeri', 9500000, 0),
('2.6.4.1', 'Penguatan jejaring kerjasama bidang riset ', 9500000, 0),
('3.1.1.2', 'Lokakarya penyusunan dan pengembangan roadmap PkM prodi', 9500000, 0),
('3.1.1.5', 'Pelaksanaan PkM oleh mahasiswa', 9500000, 0),
('3.1.1.6', 'PkM dosen melibatkan mahasiswa', 9500000, 0),
('3.1.2.7', 'Hibah Pengabdian Kepada Masyarakat (PKM)', 9500000, 0),
('3.2.1.2', 'Seminar/workshop/sosialisasi hasil PkM dengan berbagai pihak', 9500000, 0),
('3.3.1.1', 'Pameran produk pendidikan, penelitian, dan pengabdian kepada masyarakat serta produk industri berskala nasional', 9500000, 0),
('3.3.2.1', 'Pelatihan penulisan proposal penelitian bagi mahasiswa yang berdaya nasional', 9500000, 0),
('4.1.1.2', 'Fasilitasi program penalaran mahasiswa', 9500000, 0),
('4.1.1.3', 'Pendampingan program kreativitas mahasiswa', 9500000, 0),
('4.1.2.1', 'Fasilitasi program pembinaan dan pengembangan minat dan bakat', 9500000, 0),
('4.1.2.10', 'Pembinaan kegiatan ilmiah mahasiswa', 9500000, 0),
('4.1.2.11', 'Penghargaan mahasiswa berprestasi dalam bidang akademik, keagamaan, seni budaya dan olah raga', 9500000, 0),
('4.1.2.12', 'Persiapan, pembinaan, dan bantuan keikutsertaan mahasiswa pada kejuaraan tingkat nasional dan internasional', 9500000, 0),
('4.1.2.2', 'Penyelenggaraan kreativitas mahasiswa UPI (Porseni)', 9500000, 0),
('4.1.2.3', 'Pembinaan program penalaran mahasiswa', 9500000, 0),
('4.1.2.6', 'Fasilitasi keikutsertaaan pada kejuaraan, kegiatan ilmiah, festival, dan seni tingkat nasional', 9500000, 0),
('4.1.2.7', 'Fasilitasi keikutsertaaan pada kejuaraan, kegiatan ilmiah, festival, dan seni tingkat internasional', 9500000, 0),
('4.1.2.8', 'Persiapan, pembinaan, dan keikutsertaan mahasiswa UPI pada PIMNAS', 9500000, 0),
('4.1.2.9', 'Pemilihan mahasiswa berprestasi', 9500000, 0),
('4.1.4.2', 'Fasilitasi Program Kreativitas Mahasiswa (PKM)', 9500000, 0),
('4.1.6.2', 'Program Hibah Kewirausahaan Mahasiswa', 9500000, 0),
('4.2.1.17', 'Pembayaran honorarium dosen luar biasa', 9500000, 0),
('4.2.1.18', 'Fasilitasi dan honorarium dosen pendidikan Bahasa Korea', 9500000, 0),
('4.2.1.2', 'Peningkatan kapasitas dosen pembimbing/pembina UKM, BEM, dan Ormawa', 9500000, 0),
('4.2.1.3', 'Fasilitasi Kegiatan Unit Kegiatan Mahasiswa', 9500000, 0),
('4.2.10.1', 'Pembinaan alumni dan ikatan alumni', 9500000, 0),
('4.2.2.1', 'Seleksi dan validasi penerima beasiswa', 9500000, 0),
('4.2.2.3', 'Bantuan biaya pendidikan/beasiswa bagi mahasiswa tidak mampu dan bantuan pembinaan bagi mahasiswa berprestasi', 9500000, 0),
('4.2.2.5', 'Keringanan UKT bagi mahasiswa', 9500000, 0),
('4.2.3.1', 'Pemutakhiran database alumni', 9500000, 0),
('4.2.3.2', 'Pelaksanaan tracer study', 9500000, 0),
('4.2.3.3', 'Pembekalan Calon Alumni', 9500000, 0),
('4.2.4.1', 'Pengembangan Kewirausahaan Mahasiswa', 9500000, 0),
('4.2.8.1', 'Kerja sama dan pemberdayaan alumni', 9500000, 0),
('4.2.9.1', 'Peningkatan kemitraan dengan pengguna lulusan', 9500000, 0),
('4.3.1.1', 'Hibah Kompetisi Penelitian Mahasiswa', 9500000, 0),
('4.3.1.2', 'Fasilitasi Kegiatan Unit Kegiatan Mahasiswa (UKM) dan Organisasi Kemahasiswaan (Ormawa)', 9500000, 0),
('4.3.2.2', 'Pelatihan penulisan artikel bagi mahasiswa', 9500000, 0),
('4.4.1.1', 'Penjaringan beasiswa dari berbagai pihak', 9500000, 0),
('4.4.3.2', 'Pemberian beasiswa Prestasi Akademik dan Bantuan Biaya Pendidikan Peningkatan Prestasi Akademik (BBP-PPA)', 9500000, 0),
('4.4.3.3', 'Penyaluran bantuan biaya pendidikan bagi mahasiswa tidak mampu/berprestasi', 9500000, 0),
('4.4.3.4', 'Optimalisasi IKOM', 9500000, 0),
('4.5.2.1', 'Persiapan dan pembinaan mahasiswa pada kejuaraan tingkat internasional', 9500000, 0),
('4.5.3.1', 'Insentif mahasiswa peraih juara pertama/medali emas tingkat nasional', 9500000, 0),
('4.5.4.1', 'Insentif mahasiswa peraih juara pertama/medali emas tingkat internasional', 9500000, 0),
('4.9.2.1', 'Penyelenggaraan bimbingan kepribadian, karir dan sosial bagi mahasiswa dan calon wisudawan', 9500000, 0),
('5.1.1.5', 'Pelaksanaan pengukuhan guru besar', 9500000, 0),
('5.1.10.10', 'Pembayaran tunjangan pejabat perbendaharaan dan pengelola keuangan', 9500000, 0),
('5.1.10.11', 'Pembayaran honorarium pejabat dan panitia pengadaan barang dan jasa', 9500000, 0),
('5.1.10.12', 'Pembayaran Insentif keagamaan', 9500000, 0),
('5.1.10.13', 'Lembur pegawai', 9500000, 0),
('5.1.10.14', 'Bingkisan Hari Raya', 9500000, 0),
('5.1.10.22', 'Pembayaran honorarium pengelola akademik (SKM, GKM, Pembina Kemahasiswaan, dan Kepala Lab.)', 9500000, 0),
('5.1.10.3', 'Pembayaran gaji dan tunjangan PT dan PTT', 9500000, 0),
('5.1.10.5', 'Pembayaran gaji ke-13 dan/atau ke-14 PT dan PTT', 9500000, 0),
('5.1.10.7', 'Pembayaran Tunjangan Tugas Tambahan', 9500000, 0),
('5.1.10.8', 'Pembayaran uang makan PT dan PTT', 9500000, 0),
('5.1.2.1', 'Bantuan penyelesaian studi', 9500000, 0),
('5.1.2.3', 'Percepatan pengusulan guru besar bagi yang sudah memenuhi syarat', 9500000, 0),
('5.1.3.2', 'Peningkatan kemampuan akademik dosen muda', 9500000, 0),
('5.1.4.1', 'Kerjasama prodi dengan asosiasi profesi', 9500000, 0),
('5.1.5.1', 'Pemberian bantuan biaya pendidikan lanjut bagi tenaga kependidikan', 9500000, 0),
('5.1.5.12', 'Pembinaan motivasi dan peningkatan kinerja pegawai', 9500000, 0),
('5.1.5.14', 'Penguatan kemampuan berbahasa asing bagi pegawai', 9500000, 0),
('5.1.5.15', 'Peningkatan kompetensi dosen', 9500000, 0),
('5.1.5.17', 'Peningkatan kompetensi tenaga kependidikan', 9500000, 0),
('5.1.5.29', 'Penilaian angka kredit bagi dosen', 9500000, 0),
('5.1.5.5', 'Bantuan Pendidikan dan pelatihan pegawai', 9500000, 0),
('5.1.5.9', 'Bantuan test dan kursus bahasa asing bagi dosen', 9500000, 0),
('5.1.6.1', 'Pembinaan dan pengembangan kompetensi dosen tetap Universitas', 9500000, 0),
('5.1.8.2', 'Pembinaan dan pengembangan kompetensi tenaga kependidikan tetap Universitas', 9500000, 0),
('5.1.9.1', 'Pemilihan dan pemberian penghargaan pegawai berprestasi', 9500000, 0),
('5.2.1.1', 'Pengembangan sistem informasi manajemen terintegrasi', 9500000, 0),
('5.2.1.13', 'Bantuan internal dan eksternal kegiatan universitas', 9500000, 0),
('5.2.11.1', 'Pengembangan laboratorium', 9500000, 0),
('5.2.2.2', 'Pelaksanaan tes kebugaran dosen dan tenaga kependidikan', 9500000, 0),
('5.2.2.5', 'Penyelenggaraan, perlombaan, dan peringatan dalam rangka hari besar nasional ', 9500000, 0),
('5.2.3.1', 'Asuransi kesehatan PT dan PTT (BPJS)', 9500000, 0),
('5.2.3.2', 'Pengadaan sarana dan prasarana pembelajaran', 9500000, 0),
('5.2.3.3', 'Pemeliharaan peralatan laboratorium', 9500000, 0),
('5.2.3.4', 'Pemeliharaan ruangan laboratorium', 9500000, 0),
('5.2.3.6', 'Pengadaan alat dan bahan praktikum', 9500000, 0),
('5.2.3.7', 'Pelaksanaan kunjungan/studi lapangan', 9500000, 0),
('5.2.3.8', 'Pelaksanaan praktikum', 9500000, 0),
('5.2.6.8', 'Penataan arsip', 9500000, 0),
('5.3.3.1', 'Pengadaan infrastruktur jaringan', 9500000, 0),
('5.3.3.2', 'Pemeliharaan infrastruktur jaringan', 9500000, 0),
('5.3.3.5', 'Penyusunan RKAT', 9500000, 0),
('5.3.3.6', 'Penyusunan Revisi RKAT', 9500000, 0),
('5.3.4.1', 'Penilaian kebutuhan sarana dan prasarana pembelajaran', 9500000, 0),
('5.3.7.1', 'Pengadaan sarana dan prasarana kearsipan', 9500000, 0),
('5.3.7.2', 'Pemeliharaan sarana dan prasarana kearsipan', 9500000, 0),
('5.3.9.5', 'Pemeliharaan jaringan listrik dan air', 9500000, 0),
('5.3.9.7', 'Pemeliharaan sarana dan prasarana lainnya', 9500000, 0),
('5.5.8.1', 'Langganan jurnal ilmiah berbasis IT / Web / e-journal', 9500000, 0),
('6.1.1.1', 'Peningkatan kerjasama dengan berbagai lembaga di luar negeri', 9500000, 0),
('6.1.1.2', 'Peningkatan kerjasama dengan berbagai lembaga di dalam negeri', 9500000, 0),
('6.1.1.20', 'Pelaksanaan temu awal dengan lembaga mitra', 9500000, 0),
('6.1.1.26', 'Penyelenggaraan kuliah umum/eminence lecture', 9500000, 0),
('6.1.1.6', 'Implementasi kerjasama luar negeri dengan berbagai pihak', 9500000, 0),
('6.1.1.7', 'Implementasi kerjasama dalam negeri dengan berbagai pihak', 9500000, 0),
('6.1.2.1', 'Pemberian bantuan sosial ', 9500000, 0),
('6.1.2.100', 'Pengadaan Lisensi berbagai Software', 9500000, 0),
('6.1.2.101', 'Pengolahan dan pencetakan ijazah, transkrip nilai, dan SKPI/SKM', 9500000, 0),
('6.1.2.103', 'Pelepasan wisudawan', 9500000, 0),
('6.1.2.105', 'Penyusunan jadwal perkuliahan', 9500000, 0),
('6.1.2.108', 'Koordinasi dan monitoring pelaksanaan perkuliahan, praktikum, dan ujian', 9500000, 0),
('6.1.2.109', 'Pengadaan buku teks', 9500000, 0),
('6.1.2.110', 'Survey kepuasan mahasiswa', 9500000, 0),
('6.1.2.112', 'Penyelenggaraan dan pengelolaan perkuliahan MKDP', 9500000, 0),
('6.1.2.122', 'Fasilitasi penanggulangan penyebaran covid-19', 9500000, 0),
('6.1.2.17', 'Perjalanan dinas', 9500000, 0),
('6.1.2.35', 'Survey Kepuasan Mahasiswa terhadap layanan kegiatan kemahasiswaan', 9500000, 0),
('6.1.2.37', 'Pelaksanaan pekan olah raga dan Art and sport performance day', 9500000, 0),
('6.1.2.39', 'Pemeliharaan gedung dan bangunan ', 9500000, 0),
('6.1.2.40', 'Pengadaan bahan habis pakai dan operasional perkantoran', 9500000, 0),
('6.1.2.46', 'Pemeliharaan kebersihan dan keindahan kampus', 9500000, 0),
('6.1.2.47', 'Pengadaan peralatan listrik, air, telepon, internet, dan ME lainnya', 9500000, 0),
('6.1.2.49', 'Pengadaan Cinderamata', 9500000, 0),
('6.1.2.51', 'Peningkatan kegiatan keagamaan', 9500000, 0),
('6.1.2.56', 'Pemeliharaan peralatan pendidikan dan perkantoran', 9500000, 0),
('6.1.2.57', 'Langganan daya dan jasa', 9500000, 0),
('6.1.2.58', 'Pengadaan barang cetakan', 9500000, 0),
('6.1.2.62', 'Pelaksanaan pembekalan perkuliahan awal tahun', 9500000, 0),
('6.1.2.65', 'Pelaksanaan kegiatan olah raga rutin pegawai', 9500000, 0),
('6.1.2.66', 'Pemeliharaan kendaraan dinas', 9500000, 0),
('6.1.2.68', 'Pengadaan mebeulair ', 9500000, 0),
('6.1.2.70', 'Pencetakan agenda dan kalender', 9500000, 0),
('6.1.2.71', 'Pelaksanaan perkuliahan', 9500000, 0),
('6.1.2.75', 'Pengadaan peralatan kerumahtanggaan', 9500000, 0),
('6.1.2.77', 'Pengadaan peralatan pendidikan dan perkantoran', 9500000, 0),
('6.1.2.79', 'Pemeliharaan sarana dan prasarana lainnya', 9500000, 0),
('6.1.2.81', 'Pengadaan pakaian seragam/dinas', 9500000, 0),
('6.1.2.84', 'Pengadaaan Kendaraan Dinas', 9500000, 0),
('6.1.2.85', 'Penyediaan keperluan operasional dan kerumahtanggaan kantor', 9500000, 0),
('6.1.2.88', 'Pelaksanaan UTS/UAS', 9500000, 0),
('6.1.2.90', 'Pengadaan peralatan sanitasi dan kebersihan', 9500000, 0),
('6.1.4.5', 'Rapat dinas kelembagaan', 9500000, 0),
('6.1.4.9', 'Reviu dan penyusunan Renstra unit kerja', 9500000, 0),
('6.1.5.2', 'Promosi Kelembagaan', 9500000, 0),
('6.1.5.3', 'Pengembangan dan pengelolaan website', 9500000, 0),
('6.2.1.18', 'Audit dari SPM', 9500000, 0),
('6.2.2.1', 'Akreditasi program studi BAN PT', 9500000, 0),
('6.2.2.13', 'Pengembangan Kapasitas Satuan Kendali Mutu (SKM) dan Gugus Kendali Mutu (GKM)', 9500000, 0),
('6.2.3.1', 'Akreditasi/sertifikasi internasional program studi', 9500000, 0),
('6.3.1.3', 'Pendampingan dan pembahasan RKAT unit kerja', 9500000, 0),
('6.3.3.1', 'Kolaborasi dosen dan guru dalam mengembangkan pembelajaran', 9500000, 0),
('6.4.1.3', 'Penyusunan laporan tahunan dan laporan tengah tahunan', 9500000, 0),
('6.4.1.7', 'Rapat rutin/koordinasi/komisi/pokja', 9500000, 0),
('6.4.1.8', 'Sidang/pleno MWA', 9500000, 0),
('6.5.1.1', 'Desiminasi dan perluasan informasi tentang UPI kepada sekolah-sekolah ', 9500000, 0),
('6.5.2.1', 'Cetak Brosur & Promosi', 9500000, 0),
('6.5.3.5', 'Penerbitan media cetak kampus', 9500000, 0),
('6.6.1.1', 'Pemeliharaan gedung dan banguan Kampus UPI di Daerah', 9500000, 0),
('6.6.1.2', 'Pemeliharaan peralatan Kampus UPI di Daerah', 9500000, 0),
('6.6.1.3', 'Pemeliharaan sarana prasarana lainnya di Kampus UPI di Daerah', 9500000, 0),
('6.6.2.1', 'Penguatan Koordinasi Pengembangan Kampus Daerah', 9500000, 0),
('6.6.2.2', 'Peningkatan Kapasitas Sekolah Laboratorium', 9500000, 0),
('6.6.2.3', 'Peningkatan jaringan kerjasama Kampus UPI di Daerah dengan berbagai lembaga ', 9500000, 0),
('6.6.3.1', 'Pengembangan pusat kajian di Kampus UPI di Daerah', 9500000, 0),
('6.6.4.2', 'Pengembangan regulasi unit usaha di Kampus UPI di Daerah', 9500000, 0),
('6.6.5.1', 'Pelatihan penulisan karya ilmiah bagi dosen di Kampus UPI di Daerah', 9500000, 0),
('6.7.1.1', 'Pengokohan kehidupan beragama bagi mahasiswa', 9500000, 0),
('6.7.1.2', 'Peningkatan kualitas penyelenggaraan tutorial keagamaan', 9500000, 0),
('6.7.2.1', 'Bantuan kegiatan keagamaan', 9500000, 0);

--
-- Triggers `kegiatan`
--
DELIMITER $$
CREATE TRIGGER `tr_update_kegiatan` BEFORE UPDATE ON `kegiatan` FOR EACH ROW UPDATE iku_ikt SET terpakai_ik = terpakai_ik - old.terpakai_kegiatan + new.terpakai_kegiatan WHERE kode_ik = f_ik_kegiatan(new.kode_kegiatan)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_mak`
--

CREATE TABLE `kegiatan_mak` (
  `kode_kegiatan_mak` int(11) NOT NULL,
  `kode_kegiatan` varchar(255) NOT NULL,
  `kode_mak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_mak`
--

INSERT INTO `kegiatan_mak` (`kode_kegiatan_mak`, `kode_kegiatan`, `kode_mak`) VALUES
(3777, '1.1.1.5', 511006),
(3778, '1.1.1.5', 511007),
(3779, '1.1.1.5', 512014),
(3780, '1.1.1.5', 517001),
(3781, '1.1.1.5', 517002),
(3782, '1.1.1.5', 521001),
(3783, '1.1.1.5', 521002),
(3784, '1.1.1.5', 521006),
(3785, '1.1.1.5', 524001),
(3786, '1.1.1.5', 524002),
(3787, '1.1.1.5', 524003),
(3788, '1.1.1.5', 524004),
(3789, '6.2.2.1', 511005),
(3790, '6.2.2.1', 511006),
(3791, '6.2.2.1', 511007),
(3792, '6.2.2.1', 512014),
(3793, '6.2.2.1', 517001),
(3794, '6.2.2.1', 517002),
(3795, '6.2.2.1', 521001),
(3796, '6.2.2.1', 521002),
(3797, '6.2.2.1', 521006),
(3798, '6.2.2.1', 524001),
(3799, '6.2.2.1', 524002),
(3800, '6.2.2.1', 524003),
(3801, '6.2.2.1', 524004),
(3802, '1.1.4.2', 511007),
(3803, '1.1.4.2', 511006),
(3804, '1.1.4.2', 511008),
(3805, '1.1.4.2', 512014),
(3806, '1.1.4.2', 517001),
(3807, '1.1.4.2', 517002),
(3808, '1.1.4.2', 521001),
(3809, '1.1.4.2', 521002),
(3810, '1.1.4.2', 521006),
(3811, '1.1.4.2', 524001),
(3812, '1.1.4.2', 524002),
(3813, '1.1.4.2', 524003),
(3814, '1.1.4.2', 524004),
(3815, '6.2.2.13', 511006),
(3816, '6.2.2.13', 511005),
(3817, '6.2.2.13', 511007),
(3818, '6.2.2.13', 512014),
(3819, '6.2.2.13', 517001),
(3820, '6.2.2.13', 517002),
(3821, '6.2.2.13', 521001),
(3822, '6.2.2.13', 521002),
(3823, '6.2.2.13', 521006),
(3824, '6.2.2.13', 524001),
(3825, '6.2.2.13', 524002),
(3826, '6.2.2.13', 524003),
(3827, '6.2.2.13', 524004),
(3828, '1.1.3.1', 511006),
(3829, '1.1.3.1', 511007),
(3830, '1.1.3.1', 512014),
(3831, '1.1.3.1', 517001),
(3832, '1.1.3.1', 517002),
(3833, '1.1.3.1', 521001),
(3834, '1.1.3.1', 521002),
(3835, '1.1.3.1', 521006),
(3836, '1.1.3.1', 524001),
(3837, '1.1.3.1', 524002),
(3838, '1.1.3.1', 524003),
(3839, '1.1.3.1', 524004),
(3840, '1.1.4.1', 511006),
(3841, '1.1.4.1', 511007),
(3842, '1.1.4.1', 512014),
(3843, '1.1.4.1', 517001),
(3844, '1.1.4.1', 517002),
(3845, '1.1.4.1', 521001),
(3846, '1.1.4.1', 521002),
(3847, '1.1.4.1', 521006),
(3848, '1.1.4.1', 524001),
(3849, '1.1.4.1', 524002),
(3850, '1.1.4.1', 524003),
(3851, '1.1.4.1', 524004),
(3852, '1.1.5.1', 511006),
(3853, '1.1.5.1', 511007),
(3854, '1.1.5.1', 512014),
(3855, '1.1.5.1', 517001),
(3856, '1.1.5.1', 517002),
(3857, '1.1.5.1', 521001),
(3858, '1.1.5.1', 521002),
(3859, '1.1.5.1', 521006),
(3860, '1.1.5.1', 524001),
(3861, '1.1.5.1', 524002),
(3862, '1.1.5.1', 524003),
(3863, '1.1.5.1', 524004),
(3864, '6.2.3.1', 511006),
(3865, '6.2.3.1', 511007),
(3866, '6.2.3.1', 512014),
(3867, '6.2.3.1', 517001),
(3868, '6.2.3.1', 517002),
(3869, '6.2.3.1', 521001),
(3870, '6.2.3.1', 521002),
(3871, '6.2.3.1', 521006),
(3872, '6.2.3.1', 524001),
(3873, '6.2.3.1', 524002),
(3874, '6.2.3.1', 524005),
(3875, '6.2.3.1', 524003),
(3876, '6.2.3.1', 524004),
(3877, '5.1.5.14', 511006),
(3878, '5.1.5.14', 511007),
(3879, '5.1.5.14', 515001),
(3880, '5.1.5.14', 521001),
(3881, '5.1.5.14', 521002),
(3882, '5.1.5.14', 521006),
(3883, '5.1.5.14', 524001),
(3884, '5.1.5.14', 524002),
(3885, '5.1.5.14', 524003),
(3886, '5.1.5.14', 524004),
(3887, '1.1.3.3', 511006),
(3888, '1.1.3.3', 511007),
(3889, '1.1.3.3', 521001),
(3890, '1.1.3.3', 521002),
(3891, '1.1.3.3', 521006),
(3892, '1.1.3.3', 571002),
(3893, '6.1.2.62', 511007),
(3894, '6.1.2.62', 511006),
(3895, '6.1.2.62', 512014),
(3896, '6.1.2.62', 521001),
(3897, '6.1.2.62', 521002),
(3898, '6.1.2.62', 521006),
(3899, '6.1.2.62', 524001),
(3900, '1.1.8.1', 511006),
(3901, '1.1.8.4', 515001),
(3902, '6.1.2.71', 512020),
(3903, '6.1.2.71', 511007),
(3904, '6.1.2.71', 511014),
(3905, '6.1.2.71', 512014),
(3906, '6.1.2.71', 521001),
(3907, '6.1.2.71', 521002),
(3908, '6.1.2.71', 521005),
(3909, '6.1.2.71', 521006),
(3910, '6.1.2.71', 524001),
(3911, '5.2.3.8', 511006),
(3912, '5.2.3.8', 511007),
(3913, '5.2.3.8', 512014),
(3914, '5.2.3.8', 521001),
(3915, '5.2.3.8', 521002),
(3916, '5.2.3.8', 521005),
(3917, '5.2.3.8', 521006),
(3918, '5.2.3.8', 524001),
(3919, '5.2.3.8', 524002),
(3920, '5.2.3.8', 511015),
(3921, '5.2.3.8', 571002),
(3922, '6.1.1.20', 511006),
(3923, '6.1.1.20', 511007),
(3924, '6.1.1.20', 512014),
(3925, '6.1.1.20', 521001),
(3926, '6.1.1.20', 521002),
(3927, '6.1.1.20', 521006),
(3928, '6.1.1.20', 524001),
(3929, '6.1.1.20', 524002),
(3930, '1.1.9.2', 511007),
(3931, '1.1.9.2', 512014),
(3932, '1.1.9.2', 521001),
(3933, '1.1.9.2', 521002),
(3934, '1.1.9.2', 521006),
(3935, '1.1.9.2', 524001),
(3936, '1.1.9.2', 524002),
(3937, '1.1.9.3', 511018),
(3938, '1.1.9.3', 511013),
(3939, '1.1.9.3', 512014),
(3940, '1.1.9.3', 521001),
(3941, '1.1.9.3', 521002),
(3942, '1.1.9.3', 521006),
(3943, '1.1.9.3', 524005),
(3944, '1.1.9.3', 571002),
(3945, '6.1.2.88', 521001),
(3946, '6.1.2.88', 511014),
(3947, '6.1.2.88', 521002),
(3948, '6.1.2.88', 521006),
(3949, '5.2.3.7', 521001),
(3950, '5.2.3.7', 522007),
(3951, '5.2.3.7', 521002),
(3952, '5.2.3.7', 521006),
(3953, '5.2.3.7', 524001),
(3954, '5.2.3.7', 524002),
(3955, '1.1.11.1', 521001),
(3956, '1.1.11.1', 521002),
(3957, '1.1.11.1', 521006),
(3958, '1.1.11.1', 511006),
(3959, '1.1.11.2', 511013),
(3960, '1.1.11.2', 512014),
(3961, '1.1.11.2', 512020),
(3962, '1.1.11.2', 521001),
(3963, '1.1.11.2', 521002),
(3964, '1.1.11.2', 521006),
(3965, '1.1.11.2', 511006),
(3966, '1.1.11.2', 511007),
(3967, '1.1.11.3', 511006),
(3968, '1.1.11.3', 511013),
(3969, '1.1.11.3', 524002),
(3970, '1.1.11.3', 512020),
(3971, '1.1.11.3', 517001),
(3972, '1.1.11.3', 517002),
(3973, '1.1.11.3', 521001),
(3974, '1.1.11.3', 521002),
(3975, '1.1.11.3', 521006),
(3976, '1.1.11.3', 524001),
(3977, '1.1.7.15', 512014),
(3978, '1.1.7.15', 512020),
(3979, '1.1.7.15', 521001),
(3980, '1.1.7.15', 521002),
(3981, '1.1.7.15', 521005),
(3982, '1.1.7.15', 521006),
(3983, '1.1.7.15', 524001),
(3984, '1.1.7.15', 524002),
(3985, '1.1.7.16', 512020),
(3986, '1.1.7.16', 521001),
(3987, '1.1.7.16', 521002),
(3988, '1.1.7.16', 521005),
(3989, '1.1.7.16', 521006),
(3990, '6.1.1.26', 511006),
(3991, '6.1.1.26', 511007),
(3992, '6.1.1.26', 521001),
(3993, '6.1.1.26', 521002),
(3994, '6.1.1.26', 526002),
(3995, '6.1.1.26', 521006),
(3996, '6.1.1.26', 524001),
(3997, '6.1.1.26', 524005),
(3998, '6.1.1.26', 524002),
(3999, '1.1.9.8', 511006),
(4000, '1.1.9.8', 511007),
(4001, '1.1.9.8', 521001),
(4002, '1.1.9.8', 521002),
(4003, '1.1.9.8', 521006),
(4004, '1.1.9.8', 524001),
(4005, '1.1.9.8', 524002),
(4006, '1.2.3.3.', 522008),
(4007, '1.2.3.3.', 511007),
(4008, '1.2.3.3.', 511006),
(4009, '1.2.3.3.', 521001),
(4010, '1.2.3.3.', 521002),
(4011, '1.2.3.3.', 521006),
(4012, '1.2.3.3.', 524001),
(4013, '1.2.3.3.', 524005),
(4014, '1.2.3.3.', 524002),
(4015, '6.1.2.101', 517001),
(4016, '6.1.2.101', 517002),
(4017, '6.1.2.101', 521001),
(4018, '6.1.2.101', 521002),
(4019, '6.1.2.101', 521006),
(4020, '6.1.2.101', 516001),
(4021, '6.1.2.101', 516002),
(4022, '6.1.2.103', 511006),
(4023, '6.1.2.103', 511007),
(4024, '6.1.2.103', 512014),
(4025, '6.1.2.103', 517001),
(4026, '6.1.2.103', 517002),
(4027, '6.1.2.103', 521001),
(4028, '6.1.2.103', 521002),
(4029, '6.1.2.103', 521004),
(4030, '6.1.2.103', 521006),
(4031, '6.1.2.103', 522007),
(4032, '6.1.2.103', 522008),
(4033, '6.1.2.103', 524001),
(4034, '6.1.2.103', 524002),
(4035, '6.1.2.103', 526005),
(4036, '6.1.2.105', 512014),
(4037, '6.1.2.105', 521001),
(4038, '6.1.2.105', 521002),
(4039, '6.1.2.105', 521006),
(4040, '6.1.2.105', 517001),
(4041, '1.1.4.3', 511006),
(4042, '1.1.4.3', 511007),
(4043, '1.1.4.3', 521006),
(4044, '1.1.4.3', 517001),
(4045, '1.1.4.3', 517002),
(4046, '1.1.4.3', 521001),
(4047, '1.1.4.3', 521002),
(4048, '1.1.4.3', 521005),
(4049, '1.1.4.3', 524001),
(4050, '1.1.4.3', 524002),
(4051, '1.1.4.3', 524003),
(4052, '1.1.4.3', 524004),
(4053, '5.2.11.1', 511006),
(4054, '5.2.11.1', 532001),
(4055, '5.2.11.1', 533002),
(4056, '5.2.11.1', 524004),
(4057, '1.1.4.4', 511007),
(4058, '1.1.4.4', 511010),
(4059, '6.1.2.108', 521001),
(4060, '6.1.2.108', 511006),
(4061, '6.1.2.108', 521002),
(4062, '6.1.2.108', 521006),
(4063, '5.2.3.6', 521005),
(4064, '5.2.3.6', 532001),
(4065, '5.2.3.6', 532003),
(4066, '6.1.2.109', 535001),
(4067, '6.1.2.109', 535003),
(4068, '6.1.2.110', 517001),
(4069, '6.1.2.110', 517002),
(4070, '6.1.2.110', 521001),
(4071, '6.1.2.110', 521002),
(4072, '6.1.2.110', 521006),
(4073, '6.1.2.110', 511006),
(4074, '1.1.7.33', 511006),
(4075, '1.1.7.33', 511007),
(4076, '1.1.7.33', 512014),
(4077, '1.1.7.33', 517001),
(4078, '1.1.7.33', 517002),
(4079, '1.1.7.33', 521001),
(4080, '1.1.7.33', 521002),
(4081, '1.1.7.33', 521006),
(4082, '6.1.2.112', 511006),
(4083, '6.1.2.112', 511007),
(4084, '6.1.2.112', 511010),
(4085, '6.1.2.112', 512014),
(4086, '6.1.2.112', 521001),
(4087, '6.1.2.112', 521002),
(4088, '6.1.2.112', 521006),
(4089, '6.1.2.112', 524001),
(4090, '6.1.2.112', 524002),
(4091, '1.1.2.2', 511010),
(4092, '1.1.7.40', 511010),
(4093, '6.2.1.18', 521001),
(4094, '6.2.1.18', 521002),
(4095, '6.2.1.18', 521006),
(4096, '1.1.2.3', 511010),
(4097, '1.1.2.3', 511007),
(4098, '1.1.2.3', 512014),
(4099, '1.1.2.3', 521001),
(4100, '1.1.2.3', 521002),
(4101, '1.1.2.3', 521006),
(4102, '1.2.1.1', 511006),
(4103, '1.2.1.1', 511007),
(4104, '1.2.1.1', 512014),
(4105, '1.2.1.1', 515001),
(4106, '1.2.1.1', 524005),
(4107, '1.2.1.1', 521001),
(4108, '1.2.1.1', 521002),
(4109, '1.2.1.1', 521006),
(4110, '1.2.1.1', 524001),
(4111, '1.2.1.1', 524002),
(4112, '1.2.1.1', 524003),
(4113, '1.2.1.1', 524004),
(4114, '4.2.9.1', 512014),
(4115, '4.2.9.1', 521002),
(4116, '4.2.9.1', 521001),
(4117, '4.2.9.1', 524001),
(4118, '4.2.9.1', 524002),
(4119, '4.2.9.1', 511006),
(4120, '4.2.3.2', 517001),
(4121, '4.2.3.2', 517002),
(4122, '4.2.3.2', 521001),
(4123, '4.2.3.2', 521002),
(4124, '4.2.3.2', 521006),
(4125, '4.2.3.2', 524003),
(4126, '4.2.3.2', 524004),
(4127, '4.2.3.3', 511007),
(4128, '4.2.3.3', 511006),
(4129, '4.2.3.3', 521001),
(4130, '4.2.3.3', 521002),
(4131, '4.2.3.3', 521006),
(4132, '1.2.7.1', 511013),
(4133, '1.1.3.1', 515001),
(4134, '1.1.3.1', 511007),
(4135, '1.1.3.1', 511006),
(4136, '1.1.3.1', 521001),
(4137, '1.1.3.1', 521002),
(4138, '1.1.3.1', 521006),
(4139, '1.1.3.1', 571002),
(4140, '6.1.1.1', 511007),
(4141, '6.1.1.1', 512014),
(4142, '6.1.1.1', 521001),
(4143, '6.1.1.1', 521002),
(4144, '6.1.1.1', 521006),
(4145, '6.1.1.1', 524005),
(4146, '6.1.1.6', 512014),
(4147, '6.1.1.6', 521001),
(4148, '6.1.1.6', 521002),
(4149, '6.1.1.6', 521006),
(4150, '6.1.1.6', 524005),
(4151, '1.3.1.4', 524005),
(4152, '6.1.1.2', 511007),
(4153, '6.1.1.2', 511006),
(4154, '6.1.1.2', 512014),
(4155, '6.1.1.2', 521001),
(4156, '6.1.1.2', 521002),
(4157, '6.1.1.2', 521006),
(4158, '6.1.1.2', 522007),
(4159, '6.1.1.2', 524001),
(4160, '6.1.1.2', 524002),
(4161, '6.1.1.7', 511007),
(4162, '6.1.1.7', 512014),
(4163, '6.1.1.7', 521001),
(4164, '6.1.1.7', 521002),
(4165, '6.1.1.7', 521006),
(4166, '6.1.1.7', 524001),
(4167, '6.1.1.7', 524002),
(4168, '6.1.1.7', 524003),
(4169, '1.1.7.1', 524001),
(4170, '1.1.7.1', 521002),
(4171, '1.1.7.1', 511013),
(4172, '1.1.7.1', 524002),
(4173, '1.1.7.1', 524005),
(4174, '1.1.7.1', 571002),
(4175, '1.2.2.1', 511006),
(4176, '1.2.2.1', 511007),
(4177, '1.2.2.1', 524002),
(4178, '1.2.2.1', 524005),
(4179, '1.3.11.1', 515001),
(4180, '1.3.11.1', 524005),
(4181, '2.2.1.1', 512014),
(4182, '2.2.1.1', 511006),
(4183, '2.2.1.1', 521005),
(4184, '2.2.1.1', 521001),
(4185, '2.2.1.1', 521002),
(4186, '2.2.1.1', 521006),
(4187, '1.4.1.4', 511006),
(4188, '1.4.1.4', 511007),
(4189, '1.4.1.4', 512014),
(4190, '1.4.1.4', 521001),
(4191, '1.4.1.4', 521002),
(4192, '1.4.1.4', 521005),
(4193, '1.4.1.4', 521006),
(4194, '1.4.1.4', 524001),
(4195, '1.4.1.4', 524002),
(4196, '1.4.1.4', 524003),
(4197, '1.4.1.4', 524004),
(4198, '1.4.1.4', 515001),
(4199, '1.1.2.5', 511006),
(4200, '1.1.2.5', 511007),
(4201, '1.1.2.5', 511011),
(4202, '1.5.1.1', 511006),
(4203, '1.5.1.1', 511007),
(4204, '1.5.1.1', 521001),
(4205, '1.5.1.1', 521002),
(4206, '1.5.1.1', 521006),
(4207, '1.5.1.1', 522007),
(4208, '2.1.7.4', 511017),
(4209, '2.1.7.4', 521001),
(4210, '2.1.7.4', 521002),
(4211, '2.1.7.4', 521006),
(4212, '2.1.7.4', 524001),
(4213, '2.1.7.4', 524002),
(4214, '2.1.7.4', 571002),
(4215, '1.1.4.1', 511005),
(4216, '1.1.4.1', 511007),
(4217, '1.1.4.1', 512014),
(4218, '1.1.4.1', 521001),
(4219, '1.1.4.1', 521002),
(4220, '1.1.4.1', 521006),
(4221, '1.5.6.1', 512014),
(4222, '1.5.6.1', 521001),
(4223, '1.5.6.1', 521002),
(4224, '1.5.6.1', 521006),
(4225, '1.6.2.2', 524001),
(4226, '1.6.2.2', 524002),
(4227, '5.1.4.1', 515001),
(4228, '5.1.4.1', 524001),
(4229, '5.1.4.1', 515003),
(4230, '5.1.4.1', 524002),
(4231, '6.3.3.1', 511006),
(4232, '6.3.3.1', 511007),
(4233, '6.3.3.1', 521001),
(4234, '6.3.3.1', 521002),
(4235, '6.3.3.1', 521006),
(4236, '6.3.3.1', 524001),
(4237, '6.3.3.1', 524002),
(4238, '1.6.5.1', 511006),
(4239, '1.6.5.1', 511007),
(4240, '1.6.5.1', 512014),
(4241, '1.6.5.1', 521001),
(4242, '1.6.5.1', 521002),
(4243, '1.6.5.1', 521006),
(4244, '1.6.5.1', 524001),
(4245, '1.6.5.1', 524002),
(4246, '1.6.6.1', 515001),
(4247, '1.6.6.1', 524001),
(4248, '1.6.6.1', 524002),
(4249, '1.6.7.1', 511007),
(4250, '1.6.7.1', 521001),
(4251, '1.6.7.1', 521002),
(4252, '1.6.7.1', 521006),
(4253, '1.6.9.1', 511017),
(4254, '1.6.9.1', 521001),
(4255, '1.6.9.1', 521002),
(4256, '1.6.9.1', 521006),
(4257, '2.1.2.1', 511006),
(4258, '2.1.2.1', 511007),
(4259, '2.1.2.1', 512014),
(4260, '2.1.2.1', 521001),
(4261, '2.1.2.1', 521002),
(4262, '2.1.2.1', 521005),
(4263, '2.1.2.1', 521006),
(4264, '2.2.2.4', 511006),
(4265, '2.2.2.4', 511005),
(4266, '2.2.2.4', 511017),
(4267, '2.2.2.4', 512014),
(4268, '2.2.2.4', 521001),
(4269, '2.2.2.4', 521002),
(4270, '2.2.2.4', 521005),
(4271, '2.2.2.4', 521006),
(4272, '2.2.2.4', 524001),
(4273, '2.2.2.4', 524002),
(4274, '2.2.2.4', 524003),
(4275, '2.2.2.4', 524004),
(4276, '2.2.2.3', 511006),
(4277, '2.2.2.3', 511007),
(4278, '2.2.2.3', 511017),
(4279, '2.2.2.3', 512014),
(4280, '2.2.2.3', 521001),
(4281, '2.2.2.3', 521002),
(4282, '2.2.2.3', 521005),
(4283, '2.2.2.3', 521006),
(4284, '2.2.2.3', 524001),
(4285, '2.2.2.3', 524002),
(4286, '2.2.2.3', 524003),
(4287, '2.2.2.3', 524004),
(4288, '2.2.1.3', 561001),
(4289, '2.2.1.3', 511017),
(4290, '2.1.3.15', 561001),
(4291, '2.1.3.15', 521001),
(4292, '2.1.3.15', 511017),
(4293, '2.2.1.5', 561001),
(4294, '2.2.1.6', 561001),
(4295, '2.2.1.6', 511017),
(4296, '2.1.4.2', 512017),
(4297, '2.1.4.6', 511006),
(4298, '2.1.4.6', 511007),
(4299, '2.1.4.6', 511017),
(4300, '2.1.4.6', 512014),
(4301, '2.1.4.6', 521001),
(4302, '2.1.4.6', 521002),
(4303, '2.1.4.6', 521005),
(4304, '2.1.4.6', 521006),
(4305, '2.1.4.6', 524001),
(4306, '2.1.4.6', 524002),
(4307, '2.1.4.6', 524003),
(4308, '2.1.4.6', 524004),
(4309, '2.1.4.6', 521001),
(4310, '2.2.3.1', 511006),
(4311, '2.2.3.1', 511007),
(4312, '2.2.3.1', 511017),
(4313, '2.2.3.1', 524001),
(4314, '2.2.3.1', 524002),
(4315, '2.2.3.1', 524003),
(4316, '2.2.3.1', 524004),
(4317, '2.2.7.1', 511006),
(4318, '2.2.7.1', 511007),
(4319, '2.2.7.1', 521002),
(4320, '2.2.7.1', 511017),
(4321, '2.2.7.1', 524001),
(4322, '2.2.7.1', 524002),
(4323, '2.2.7.1', 524003),
(4324, '2.2.7.1', 524004),
(4325, '2.1.4.9', 511006),
(4326, '2.1.4.9', 512017),
(4327, '2.1.4.10', 511006),
(4328, '2.1.4.10', 511007),
(4329, '2.1.4.10', 511017),
(4330, '2.1.4.10', 512014),
(4331, '2.1.4.10', 521001),
(4332, '2.1.4.10', 521002),
(4333, '2.1.4.10', 521005),
(4334, '2.1.4.10', 521006),
(4335, '2.1.4.10', 524001),
(4336, '2.1.4.10', 524002),
(4337, '2.1.4.10', 524003),
(4338, '2.1.4.10', 524004),
(4339, '2.3.1.2', 511007),
(4340, '2.3.1.2', 511006),
(4341, '2.3.1.2', 521001),
(4342, '2.3.1.2', 521002),
(4343, '2.3.1.2', 521006),
(4344, '2.3.1.2', 524001),
(4345, '2.3.1.2', 524002),
(4346, '2.1.1.4', 511007),
(4347, '2.1.1.4', 511016),
(4348, '2.1.1.4', 511017),
(4349, '2.1.1.4', 521001),
(4350, '2.1.1.4', 521002),
(4351, '2.1.1.4', 521006),
(4352, '2.1.1.4', 524001),
(4353, '2.1.1.4', 524002),
(4354, '2.1.1.4', 522005),
(4355, '2.1.1.6', 511007),
(4356, '2.1.1.6', 511016),
(4357, '2.1.1.6', 511017),
(4358, '2.1.1.6', 521001),
(4359, '2.1.1.6', 521002),
(4360, '2.1.1.6', 522008),
(4361, '2.1.1.6', 521006),
(4362, '2.1.1.6', 524001),
(4363, '2.1.1.6', 524002),
(4364, '2.3.1.5', 511006),
(4365, '2.3.1.5', 511017),
(4366, '2.3.1.5', 521001),
(4367, '2.3.1.5', 521002),
(4368, '2.3.1.5', 511016),
(4369, '2.3.1.5', 521006),
(4370, '2.3.1.5', 524001),
(4371, '2.3.1.5', 524002),
(4372, '2.3.1.5', 512017),
(4373, '2.1.1.5', 511006),
(4374, '2.1.1.5', 511007),
(4375, '2.1.1.5', 521002),
(4376, '2.1.1.5', 524001),
(4377, '2.1.1.5', 524002),
(4378, '2.1.2.6', 511006),
(4379, '2.1.2.6', 511017),
(4380, '2.1.2.6', 511016),
(4381, '2.1.2.6', 511007),
(4382, '2.1.2.6', 521001),
(4383, '2.1.2.6', 521002),
(4384, '2.1.2.6', 521006),
(4385, '2.1.2.6', 524001),
(4386, '2.1.2.6', 524002),
(4387, '2.1.1.3', 511006),
(4388, '2.1.1.3', 511007),
(4389, '2.1.1.3', 512014),
(4390, '2.1.1.3', 521001),
(4391, '2.1.1.3', 521002),
(4392, '2.1.1.3', 521005),
(4393, '2.1.1.3', 521006),
(4394, '2.1.1.3', 524001),
(4395, '2.1.1.3', 524002),
(4396, '2.1.1.3', 524003),
(4397, '2.1.1.3', 524004),
(4398, '2.1.2.4', 511006),
(4399, '2.1.2.4', 511007),
(4400, '2.1.2.4', 515001),
(4401, '2.1.2.4', 535001),
(4402, '2.1.2.4', 521010),
(4403, '2.1.2.4', 512014),
(4404, '2.1.2.4', 521001),
(4405, '2.1.2.4', 521002),
(4406, '2.1.2.4', 521005),
(4407, '2.1.2.4', 521006),
(4408, '2.1.2.4', 524001),
(4409, '2.1.2.4', 524002),
(4410, '2.1.2.4', 524003),
(4411, '2.1.2.4', 524005),
(4412, '2.1.2.5', 511006),
(4413, '2.1.2.5', 511007),
(4414, '2.5.1.13', 511006),
(4415, '2.5.1.13', 511007),
(4416, '2.5.1.13', 512014),
(4417, '2.5.1.13', 521001),
(4418, '2.5.1.13', 521002),
(4419, '2.5.1.13', 521005),
(4420, '2.5.1.13', 521006),
(4421, '2.5.1.13', 524001),
(4422, '2.5.1.13', 524002),
(4423, '2.5.1.13', 524003),
(4424, '2.5.1.13', 524004),
(4425, '2.1.3.36', 561001),
(4426, '2.1.3.36', 511016),
(4427, '2.6.1.1', 511017),
(4428, '2.6.1.1', 512017),
(4429, '2.6.1.1', 521001),
(4430, '2.6.1.1', 521002),
(4431, '2.6.1.1', 521005),
(4432, '2.6.1.1', 521006),
(4433, '2.6.1.1', 524001),
(4434, '2.6.1.1', 524002),
(4435, '2.6.1.1', 524003),
(4436, '2.6.1.1', 524004),
(4437, '2.1.3.4', 511017),
(4438, '2.1.3.4', 512017),
(4439, '2.1.3.5', 511017),
(4440, '2.1.3.5', 512017),
(4441, '2.6.4.1', 511017),
(4442, '2.6.4.1', 512017),
(4443, '2.6.4.1', 521001),
(4444, '2.6.4.1', 521002),
(4445, '2.6.4.1', 521005),
(4446, '2.6.4.1', 521006),
(4447, '2.6.4.1', 524001),
(4448, '2.6.4.1', 524002),
(4449, '2.6.4.1', 524003),
(4450, '2.6.4.1', 524004),
(4451, '3.1.1.2', 511006),
(4452, '3.1.1.2', 511007),
(4453, '3.1.1.2', 512014),
(4454, '3.1.1.2', 521001),
(4455, '3.1.1.2', 521002),
(4456, '3.1.1.2', 521005),
(4457, '3.1.1.2', 521006),
(4458, '3.1.1.2', 524001),
(4459, '3.1.1.2', 524002),
(4460, '3.1.1.2', 524003),
(4461, '3.1.1.2', 524004),
(4462, '3.1.1.5', 561001),
(4463, '3.1.1.5', 511013),
(4464, '3.1.1.5', 571002),
(4465, '3.1.1.5', 521001),
(4466, '3.1.1.5', 521002),
(4467, '3.1.1.5', 521006),
(4468, '3.1.1.5', 524001),
(4469, '3.1.1.5', 524002),
(4470, '3.1.2.7', 561001),
(4471, '3.1.2.7', 511016),
(4472, '3.3.1.1', 511006),
(4473, '3.3.1.1', 521005),
(4474, '3.3.1.1', 521001),
(4475, '3.3.1.1', 521002),
(4476, '3.3.1.1', 521006),
(4477, '3.3.1.1', 524001),
(4478, '3.3.1.1', 524002),
(4479, '3.3.1.1', 522007),
(4480, '3.3.1.1', 522008),
(4481, '3.3.2.1', 511017),
(4482, '3.3.2.1', 521005),
(4483, '3.3.2.1', 521001),
(4484, '3.3.2.1', 521002),
(4485, '3.3.2.1', 521006),
(4486, '3.1.1.6', 561001),
(4487, '3.1.1.6', 522007),
(4488, '3.1.1.6', 511007),
(4489, '3.1.1.6', 511013),
(4490, '3.1.1.6', 571002),
(4491, '3.1.1.6', 521001),
(4492, '3.1.1.6', 521002),
(4493, '3.1.1.6', 521006),
(4494, '3.1.1.6', 524001),
(4495, '3.1.1.6', 524002),
(4496, '3.2.1.2', 511006),
(4497, '3.2.1.2', 511007),
(4498, '3.2.1.2', 512014),
(4499, '3.2.1.2', 521001),
(4500, '3.2.1.2', 521002),
(4501, '3.2.1.2', 521005),
(4502, '3.2.1.2', 521006),
(4503, '3.2.1.2', 524001),
(4504, '3.2.1.2', 524002),
(4505, '3.2.1.2', 524003),
(4506, '3.2.1.2', 524004),
(4507, '4.1.2.3', 511013),
(4508, '4.1.2.3', 511007),
(4509, '4.1.2.3', 571002),
(4510, '4.1.2.3', 521001),
(4511, '4.1.2.3', 521002),
(4512, '4.1.2.3', 521006),
(4513, '4.1.2.3', 524001),
(4514, '4.1.2.3', 524002),
(4515, '4.1.2.3', 511006),
(4516, '4.1.1.2', 511013),
(4517, '4.1.1.2', 571002),
(4518, '4.1.1.2', 521001),
(4519, '4.1.1.2', 521002),
(4520, '4.1.1.2', 521006),
(4521, '4.1.1.2', 524001),
(4522, '4.1.1.2', 524002),
(4523, '4.1.2.8', 511013),
(4524, '4.1.2.8', 571002),
(4525, '4.1.2.8', 521001),
(4526, '4.1.2.8', 521002),
(4527, '4.1.2.8', 521006),
(4528, '4.1.2.8', 524001),
(4529, '4.1.2.8', 524002),
(4530, '4.1.2.1', 571002),
(4531, '4.1.2.1', 511013),
(4532, '4.1.2.11', 511006),
(4533, '4.1.2.11', 521002),
(4534, '4.1.2.11', 572001),
(4535, '4.1.2.11', 526002),
(4536, '4.1.2.2', 511013),
(4537, '4.1.2.2', 571002),
(4538, '4.1.2.2', 521001),
(4539, '4.1.2.2', 521002),
(4540, '4.1.2.2', 521006),
(4541, '4.1.2.2', 524001),
(4542, '4.1.2.2', 524002),
(4543, '4.1.2.3', 571002),
(4544, '4.1.2.3', 521001),
(4545, '4.1.2.3', 521002),
(4546, '4.1.2.3', 521006),
(4547, '4.1.2.3', 524001),
(4548, '4.1.2.3', 524002),
(4549, '4.1.2.9', 511006),
(4550, '4.1.2.9', 511013),
(4551, '4.1.2.9', 521001),
(4552, '4.1.2.9', 521002),
(4553, '4.1.2.9', 521006),
(4554, '4.1.2.9', 524001),
(4555, '4.1.2.9', 524002),
(4556, '4.1.2.9', 526002),
(4557, '4.1.2.9', 572001),
(4558, '4.1.1.2', 511016),
(4559, '4.1.1.2', 521001),
(4560, '4.1.1.2', 521002),
(4561, '4.1.1.2', 521006),
(4562, '4.1.1.2', 524001),
(4563, '4.1.1.2', 524002),
(4564, '4.1.1.2', 571002),
(4565, '4.1.1.3', 511013),
(4566, '4.1.1.3', 571002),
(4567, '4.1.4.2', 571002),
(4568, '4.1.4.2', 521001),
(4569, '4.1.4.2', 521002),
(4570, '4.1.4.2', 521006),
(4571, '4.1.4.2', 524001),
(4572, '4.1.4.2', 524002),
(4573, '4.2.4.1', 511013),
(4574, '4.2.4.1', 571002),
(4575, '4.2.4.1', 521001),
(4576, '4.2.4.1', 521002),
(4577, '4.2.4.1', 521006),
(4578, '4.2.4.1', 524001),
(4579, '4.2.4.1', 524002),
(4580, '4.2.4.1', 571004),
(4581, '4.1.6.2', 571004),
(4582, '4.3.1.2', 511013),
(4583, '4.3.1.2', 571002),
(4584, '4.3.1.2', 521001),
(4585, '4.3.1.2', 521002),
(4586, '4.3.1.2', 521006),
(4587, '4.3.1.2', 524001),
(4588, '4.3.1.2', 524002),
(4589, '4.2.1.2', 515001),
(4590, '4.2.1.2', 511013),
(4591, '4.2.1.3', 511013),
(4592, '4.2.1.3', 571002),
(4593, '4.2.1.3', 521001),
(4594, '4.2.1.3', 521002),
(4595, '4.2.1.3', 521006),
(4596, '4.2.1.3', 524001),
(4597, '4.2.1.3', 524002),
(4598, '6.1.2.35', 511006),
(4599, '6.1.2.35', 521001),
(4600, '6.1.2.35', 521002),
(4601, '6.1.2.35', 521006),
(4602, '6.1.2.47', 532001),
(4603, '4.3.1.1', 561001),
(4604, '2.1.7.6', 512017),
(4605, '2.1.7.6', 571002),
(4606, '2.1.7.6', 521001),
(4607, '2.1.7.6', 521002),
(4608, '2.1.7.6', 521006),
(4609, '2.1.7.6', 515001),
(4610, '4.3.2.2', 511017),
(4611, '4.3.2.2', 521005),
(4612, '4.3.2.2', 521001),
(4613, '4.3.2.2', 521002),
(4614, '4.3.2.2', 521006),
(4615, '4.1.2.10', 571002),
(4616, '4.1.2.10', 511013),
(4617, '4.4.1.1', 511006),
(4618, '4.4.1.1', 521001),
(4619, '4.4.1.1', 521002),
(4620, '4.4.1.1', 521006),
(4621, '4.4.1.1', 524001),
(4622, '4.4.1.1', 524002),
(4623, '4.2.2.1', 511006),
(4624, '4.2.2.1', 521001),
(4625, '4.2.2.1', 521002),
(4626, '4.2.2.1', 521006),
(4627, '4.2.2.1', 524001),
(4628, '4.2.2.1', 524002),
(4629, '4.2.2.5', 571001),
(4630, '4.2.2.3', 571001),
(4631, '4.4.3.2', 571001),
(4632, '4.4.3.3', 511006),
(4633, '4.4.3.3', 521001),
(4634, '4.4.3.3', 521002),
(4635, '4.4.3.3', 521006),
(4636, '4.4.3.3', 524001),
(4637, '4.4.3.3', 524002),
(4638, '4.1.2.12', 511013),
(4639, '4.1.2.12', 571002),
(4640, '4.1.2.12', 521001),
(4641, '4.1.2.12', 521002),
(4642, '4.1.2.12', 521006),
(4643, '4.1.2.12', 524001),
(4644, '4.1.2.12', 524002),
(4645, '4.1.2.6', 511013),
(4646, '4.1.2.6', 571002),
(4647, '4.1.2.6', 521001),
(4648, '4.1.2.6', 521002),
(4649, '4.1.2.6', 521006),
(4650, '4.1.2.6', 524001),
(4651, '4.1.2.6', 524002),
(4652, '4.5.2.1', 511013),
(4653, '4.5.2.1', 571002),
(4654, '4.5.2.1', 521001),
(4655, '4.5.2.1', 521002),
(4656, '4.5.2.1', 521006),
(4657, '4.5.2.1', 524005),
(4658, '4.1.2.7', 511013),
(4659, '4.1.2.7', 571002),
(4660, '4.1.2.7', 521001),
(4661, '4.1.2.7', 521002),
(4662, '4.1.2.7', 521006),
(4663, '4.1.2.7', 524005),
(4664, '4.5.3.1', 572001),
(4665, '4.5.4.1', 572001),
(4666, '4.2.8.1', 511006),
(4667, '4.2.8.1', 512014),
(4668, '4.2.8.1', 521001),
(4669, '4.2.8.1', 521002),
(4670, '4.2.8.1', 521006),
(4671, '4.2.8.1', 524001),
(4672, '4.2.8.1', 524002),
(4673, '4.2.10.1', 511006),
(4674, '4.2.10.1', 521001),
(4675, '4.2.10.1', 521002),
(4676, '4.2.10.1', 521006),
(4677, '4.2.10.1', 524001),
(4678, '4.2.10.1', 524002),
(4679, '4.2.3.1', 511006),
(4680, '4.2.3.1', 521001),
(4681, '4.2.3.1', 521002),
(4682, '4.2.3.1', 521006),
(4683, '4.9.2.1', 511006),
(4684, '4.9.2.1', 521001),
(4685, '4.9.2.1', 521002),
(4686, '4.9.2.1', 521006),
(4687, '5.1.2.3', 511006),
(4688, '5.1.2.3', 512014),
(4689, '5.1.2.3', 521001),
(4690, '5.1.2.3', 521002),
(4691, '5.1.2.3', 521006),
(4692, '5.1.2.3', 524002),
(4693, '5.1.1.5', 511006),
(4694, '5.1.1.5', 521001),
(4695, '5.1.1.5', 521002),
(4696, '5.1.1.5', 521006),
(4697, '5.1.1.5', 522007),
(4698, '5.1.2.1', 515002),
(4699, '5.1.5.9', 515001),
(4700, '5.1.5.15', 515001),
(4701, '5.1.5.15', 521002),
(4702, '5.1.5.15', 511007),
(4703, '5.1.3.2', 515001),
(4704, '5.1.5.1', 515002),
(4705, '5.1.6.1', 511006),
(4706, '5.1.6.1', 521001),
(4707, '5.1.6.1', 521002),
(4708, '5.1.6.1', 521006),
(4709, '5.1.6.1', 524001),
(4710, '5.1.6.1', 524002),
(4711, '5.1.6.1', 512014),
(4712, '5.1.5.17', 511006),
(4713, '5.1.5.17', 511007),
(4714, '5.1.5.17', 521001),
(4715, '5.1.5.17', 521002),
(4716, '5.1.5.17', 521006),
(4717, '5.1.5.17', 524001),
(4718, '5.1.5.17', 524002),
(4719, '5.1.5.17', 515001),
(4720, '5.1.5.5', 515001),
(4721, '5.1.8.2', 511006),
(4722, '5.1.8.2', 521001),
(4723, '5.1.8.2', 521002),
(4724, '5.1.8.2', 521006),
(4725, '5.1.8.2', 524001),
(4726, '5.1.8.2', 524002),
(4727, '5.1.8.2', 512014),
(4728, '5.1.8.2', 515001),
(4729, '5.1.10.3', 511003),
(4730, '5.1.10.5', 511003),
(4731, '1.1.11.5', 512015),
(4732, '5.1.10.7', 512013),
(4733, '5.1.10.8', 516002),
(4734, '5.1.10.10', 512013),
(4735, '5.1.10.11', 512013),
(4736, '5.1.10.12', 512018),
(4737, '6.1.2.1', 573001),
(4738, '6.1.2.1', 514002),
(4739, '6.1.2.1', 526002),
(4740, '6.1.2.1', 571003),
(4741, '5.1.10.13', 517001),
(4742, '5.1.10.13', 517002),
(4743, '5.1.10.14', 514003),
(4744, '5.2.1.13', 515001),
(4745, '5.2.1.13', 511006),
(4746, '5.2.1.13', 512019),
(4747, '5.2.1.13', 573001),
(4748, '4.2.1.17', 511007),
(4749, '4.2.1.18', 511007),
(4750, '6.1.2.37', 511006),
(4751, '6.1.2.37', 521001),
(4752, '6.1.2.37', 521002),
(4753, '6.1.2.37', 521006),
(4754, '6.1.2.37', 512014),
(4755, '6.1.2.37', 526003),
(4756, '6.1.2.37', 522007),
(4757, '6.1.2.37', 522008),
(4758, '6.1.2.37', 526002),
(4759, '5.2.2.2', 511006),
(4760, '5.2.2.2', 521001),
(4761, '5.2.2.2', 521002),
(4762, '5.2.2.2', 521006),
(4763, '5.2.2.2', 512014),
(4764, '5.2.2.2', 521005),
(4765, '5.2.2.2', 522007),
(4766, '5.2.2.2', 522008),
(4767, '6.1.2.65', 521002),
(4768, '6.1.2.65', 522007),
(4769, '6.1.2.65', 521006),
(4770, '6.1.2.65', 526003),
(4771, '5.2.2.5', 511006),
(4772, '5.2.2.5', 521001),
(4773, '5.2.2.5', 521002),
(4774, '5.2.2.5', 521006),
(4775, '5.2.2.5', 512014),
(4776, '5.2.2.5', 521005),
(4777, '5.2.2.5', 522007),
(4778, '5.2.2.5', 522008),
(4779, '5.2.3.1', 513002),
(4780, '5.1.9.1', 511006),
(4781, '5.1.9.1', 521001),
(4782, '5.1.9.1', 521002),
(4783, '5.1.9.1', 521006),
(4784, '5.1.9.1', 512014),
(4785, '5.1.9.1', 522007),
(4786, '5.1.9.1', 512019),
(4787, '5.1.5.12', 511006),
(4788, '5.1.5.12', 515001),
(4789, '5.1.5.12', 521002),
(4790, '5.1.5.12', 521006),
(4791, '5.1.5.12', 522007),
(4792, '5.1.5.12', 522008),
(4793, '5.1.5.12', 524001),
(4794, '5.1.5.12', 524002),
(4795, '5.1.5.29', 511006),
(4796, '5.1.5.29', 512014),
(4797, '5.1.5.29', 521001),
(4798, '5.1.5.29', 521002),
(4799, '5.1.5.29', 521006),
(4800, '5.1.5.29', 524001),
(4801, '5.1.5.29', 524002),
(4802, '6.1.2.17', 524001),
(4803, '6.1.2.17', 524002),
(4804, '6.1.2.17', 524003),
(4805, '6.1.2.17', 524004),
(4806, '6.1.2.17', 524005),
(4807, '5.3.3.1', 534001),
(4808, '5.3.3.2', 523003),
(4809, '5.3.4.1', 511006),
(4810, '5.3.4.1', 521001),
(4811, '5.3.4.1', 521002),
(4812, '5.3.4.1', 521006),
(4813, '5.3.4.1', 524001),
(4814, '5.3.4.1', 524002),
(4815, '5.3.4.1', 512014),
(4816, '5.3.4.1', 522008),
(4817, '5.2.3.2', 532001),
(4818, '5.2.3.1', 532001),
(4819, '5.2.3.3', 523002),
(4820, '5.2.3.4', 523001),
(4821, '5.2.3.4', 533002),
(4822, '5.3.7.1', 533001),
(4823, '5.3.7.1', 532001),
(4824, '5.3.7.2', 523001),
(4825, '5.3.7.2', 523002),
(4826, '6.1.2.39', 523001),
(4827, '6.1.2.39', 532001),
(4828, '6.1.2.46', 523005),
(4829, '6.1.2.56', 523002),
(4830, '6.1.2.84', 532001),
(4831, '6.1.2.66', 523002),
(4832, '5.3.9.5', 523002),
(4833, '6.1.2.79', 523002),
(4834, '5.3.9.7', 523005),
(4835, '6.1.2.85', 521001),
(4836, '6.1.2.85', 521002),
(4837, '6.1.2.85', 521003),
(4838, '6.1.2.85', 521004),
(4839, '6.1.2.85', 521005),
(4840, '6.1.2.85', 521006),
(4841, '6.1.2.85', 521009),
(4842, '6.1.2.85', 522007),
(4843, '6.1.2.85', 522008),
(4844, '6.1.2.85', 526002),
(4845, '6.1.2.85', 526003),
(4846, '6.1.2.40', 521001),
(4847, '6.1.2.40', 521006),
(4848, '6.1.2.40', 521009),
(4849, '6.1.2.100', 535001),
(4850, '6.1.2.58', 521001),
(4851, '6.1.2.68', 532001),
(4852, '6.1.2.75', 532001),
(4853, '6.1.2.75', 521001),
(4854, '6.1.2.75', 521006),
(4855, '6.1.2.75', 526003),
(4856, '6.1.2.77', 532001),
(4857, '6.1.2.81', 526003),
(4858, '6.1.2.90', 521006),
(4859, '6.1.2.90', 532001),
(4860, '11', 532001),
(4861, '5.5.8.1', 522005),
(4862, '6.1.2.57', 522005),
(4863, '6.1.4.5', 511006),
(4864, '6.1.4.5', 522007),
(4865, '6.1.4.5', 521001),
(4866, '6.1.4.5', 521002),
(4867, '6.1.4.5', 521006),
(4868, '6.1.4.5', 512014),
(4869, '6.1.4.5', 511007),
(4870, '6.1.4.5', 524001),
(4871, '6.1.4.5', 524002),
(4872, '6.1.4.5', 524003),
(4873, '6.1.4.5', 524004),
(4874, '6.1.4.5', 517001),
(4875, '6.1.4.5', 517002),
(4876, '6.3.1.3', 511006),
(4877, '6.3.1.3', 512014),
(4878, '6.3.1.3', 521001),
(4879, '6.3.1.3', 521002),
(4880, '6.3.1.3', 521006),
(4881, '6.3.1.3', 517001),
(4882, '6.3.1.3', 517002),
(4883, '6.3.1.3', 524001),
(4884, '6.3.1.3', 524002),
(4885, '6.3.1.3', 524003),
(4886, '6.3.1.3', 524004),
(4887, '6.3.1.3', 511007),
(4888, '5.3.3.5', 511006),
(4889, '5.3.3.5', 512014),
(4890, '5.3.3.5', 521001),
(4891, '5.3.3.5', 521002),
(4892, '5.3.3.5', 521006),
(4893, '5.3.3.5', 517001),
(4894, '5.3.3.5', 517002),
(4895, '5.3.3.5', 524001),
(4896, '5.3.3.5', 524002),
(4897, '5.3.3.5', 524003),
(4898, '5.3.3.5', 524004),
(4899, '5.3.3.5', 511007),
(4900, '5.3.3.6', 511006),
(4901, '5.3.3.6', 512014),
(4902, '5.3.3.6', 521001),
(4903, '5.3.3.6', 521002),
(4904, '5.3.3.6', 521006),
(4905, '5.3.3.6', 517001),
(4906, '5.3.3.6', 517002),
(4907, '5.3.3.6', 524001),
(4908, '5.3.3.6', 524002),
(4909, '5.3.3.6', 524003),
(4910, '5.3.3.6', 524004),
(4911, '5.3.3.6', 511007),
(4912, '6.4.1.3', 511006),
(4913, '6.4.1.3', 512014),
(4914, '6.4.1.3', 521001),
(4915, '6.4.1.3', 521002),
(4916, '6.4.1.3', 521006),
(4917, '6.4.1.3', 517001),
(4918, '6.4.1.3', 517002),
(4919, '6.4.1.3', 524001),
(4920, '6.4.1.7', 512014),
(4921, '6.4.1.8', 512014),
(4922, '6.5.1.1', 511006),
(4923, '6.5.1.1', 512014),
(4924, '6.5.1.1', 521001),
(4925, '6.5.1.1', 521002),
(4926, '6.5.1.1', 521006),
(4927, '6.5.1.1', 517001),
(4928, '6.5.1.1', 517002),
(4929, '6.5.1.1', 524001),
(4930, '6.5.1.1', 524002),
(4931, '6.5.2.1', 521001),
(4932, '6.5.2.1', 521006),
(4933, '6.1.4.9', 511006),
(4934, '6.1.5.2', 511011),
(4935, '6.1.5.3', 511005),
(4936, '6.1.5.3', 511006),
(4937, '6.1.5.3', 512014),
(4938, '6.1.5.3', 521001),
(4939, '6.1.5.3', 521002),
(4940, '6.1.5.3', 521006),
(4941, '6.1.5.3', 522007),
(4942, '6.1.5.3', 522008),
(4943, '6.1.2.49', 526002),
(4944, '6.1.2.70', 521001),
(4945, '6.5.3.5', 521001),
(4946, '6.6.1.1', 523001),
(4947, '6.6.1.2', 523002),
(4948, '6.6.1.3', 523002),
(4949, '6.6.2.1', 511006),
(4950, '6.6.2.1', 512014),
(4951, '6.6.2.1', 521001),
(4952, '6.6.2.1', 521002),
(4953, '6.6.2.1', 521006),
(4954, '6.6.2.1', 524001),
(4955, '6.6.2.1', 524002),
(4956, '6.6.2.2', 511006),
(4957, '6.6.2.2', 512014),
(4958, '6.6.2.2', 521001),
(4959, '6.6.2.2', 521002),
(4960, '6.6.2.2', 521006),
(4961, '6.6.2.2', 524001),
(4962, '6.6.2.2', 524002),
(4963, '6.6.2.3', 511006),
(4964, '6.6.2.3', 512014),
(4965, '6.6.2.3', 521001),
(4966, '6.6.2.3', 521002),
(4967, '6.6.2.3', 521006),
(4968, '6.6.2.3', 524001),
(4969, '6.6.2.3', 524002),
(4970, '6.6.2.3', 511007),
(4971, '6.6.3.1', 511006),
(4972, '6.6.3.1', 512014),
(4973, '6.6.3.1', 521001),
(4974, '6.6.3.1', 521002),
(4975, '6.6.3.1', 521006),
(4976, '6.6.3.1', 524001),
(4977, '6.6.3.1', 524002),
(4978, '6.6.3.1', 511007),
(4979, '6.6.4.2', 511006),
(4980, '6.6.4.2', 511007),
(4981, '6.6.4.2', 512014),
(4982, '6.6.4.2', 521001),
(4983, '6.6.4.2', 521002),
(4984, '6.6.4.2', 521006),
(4985, '6.6.4.2', 524001),
(4986, '6.6.4.2', 524002),
(4987, '6.6.5.1', 511006),
(4988, '6.6.5.1', 511007),
(4989, '6.6.5.1', 511017),
(4990, '6.6.5.1', 512014),
(4991, '6.6.5.1', 521001),
(4992, '6.6.5.1', 521002),
(4993, '6.6.5.1', 521005),
(4994, '6.6.5.1', 521006),
(4995, '6.6.5.1', 524001),
(4996, '6.6.5.1', 524002),
(4997, '6.7.1.1', 511006),
(4998, '6.7.1.1', 511007),
(4999, '6.7.1.1', 521001),
(5000, '6.7.1.1', 521002),
(5001, '6.7.1.1', 571002),
(5002, '6.7.1.2', 511006),
(5003, '6.7.1.2', 511007),
(5004, '6.7.1.2', 521001),
(5005, '6.7.1.2', 521002),
(5006, '6.7.1.2', 571002),
(5007, '6.7.2.1', 571002),
(5008, '6.1.2.51', 511006),
(5009, '6.1.2.51', 511007),
(5010, '6.1.2.51', 521001),
(5011, '6.1.2.51', 521002),
(5012, '6.1.2.51', 571003),
(5013, '6.1.2.51', 573001),
(5014, '6.1.2.51', 571002),
(5015, '5.2.1.1', 535001),
(5016, '5.2.6.8', 511006),
(5017, '5.2.6.8', 511005),
(5018, '5.2.6.8', 511007),
(5019, '5.2.6.8', 512014),
(5020, '5.2.6.8', 521001),
(5021, '5.2.6.8', 521002),
(5022, '5.2.6.8', 521006),
(5023, '5.2.6.8', 517001),
(5024, '5.2.6.8', 517002),
(5025, '5.2.6.8', 524001),
(5026, '5.2.6.8', 524002),
(5027, '5.2.6.8', 532001),
(5028, '5.1.10.22', 511005),
(5029, '6.1.2.122', 521010),
(5030, '6.1.2.122', 524001),
(5031, '6.1.2.122', 571003),
(5032, '6.1.2.122', 573001),
(5033, '6.1.2.122', 571005),
(5034, '6.1.2.122', 521012);

-- --------------------------------------------------------

--
-- Table structure for table `mak`
--

CREATE TABLE `mak` (
  `kode_mak` int(11) NOT NULL,
  `nama_mak` varchar(255) NOT NULL,
  `anggaran_mak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mak`
--

INSERT INTO `mak` (`kode_mak`, `nama_mak`, `anggaran_mak`) VALUES
(53, 'Belanja Modal', 0),
(54, 'Belanja Pembayaran Kewajiban', 0),
(55, 'Belanja Subsidi', 0),
(56, 'Belanja Hibah', 0),
(57, 'Belanja Bantuan dan Penghargaan', 0),
(524, 'Belanja Perjalanan Dinas', 0),
(525, 'Belanja Honorarium Pengadaan Barang', 0),
(526, 'Belanja Barang Lain-Lain', 0),
(527, 'Belanja Barang Penanganan COVID19 Universitas', 0),
(531, 'Belanja Modal Tanah', 0),
(532, 'Belanja Modal Peralatan dan Mesin', 0),
(533, 'Belanja Modal Gedung dan Bangunan', 0),
(534, 'Belanja Modal Jalan, Irigasi, dan Jaringan', 0),
(535, 'Belanja Modal Lainnya', 0),
(536, 'Belanja Modal Investasi', 0),
(561, 'Hibah Kepada Pegawai', 0),
(562, 'Hibah Kepada Masyarakat', 0),
(563, 'Hibah Akreditasi', 0),
(564, 'Bantuan Jurnal', 0),
(571, 'Bantuan Kemahasiswaan', 0),
(572, 'Penghargaan Kemahasiswaan', 0),
(573, 'Belanja Bantuan Masyarakat', 0),
(5361, 'Belanja Modal Investasi Jangka Pendek', 0),
(5362, 'Belanja Modal Investasi Jangka Panjang', 0),
(511001, 'Belanja Gaji Pegawai PNS', 0),
(511002, 'Belanja Pembulatan Gaji PNS', 0),
(511003, 'Belanja Gaji Pegawai Non PNS', 6000000),
(511004, 'Honorarium Pejabat Perbendaharaan/Pengelola Keuangan/Pelaksana Pengadaan Barang&Jasa', 48347000),
(511005, 'Honorarium Kegiatan/Kepanitiaan/Tim (OB)', 6950000),
(511006, 'Honorarium Kegiatan/Kepanitiaan/Tim (OK)', 66579000),
(511007, 'Honorarium Narasumber/Moderator/Keynote Speaker, Pengajar Diklat, Tutor, Perumus Hasil, dan sejenisnya', 56150000),
(511008, 'Honorarium Kegiatan Audit Internal', 8500000),
(511009, 'Honorarium Pendampingan Audit Eksternal', 700000),
(511010, 'Honorarium Pengembangan Bahan Ajar/Rencana Pembelajaran Semester', 1500000),
(511011, 'Honorarium Publikasi Video Pembelajaran', 7500000),
(511012, 'Honorarium Asesor', 250000),
(511013, 'Honorarium Pembimbing Akademik/Tugas Akhir dan Penguji', 25825000),
(511014, 'Honorarium Pelaksanaan Ujian/Ujian Tulis', 7000000),
(511015, 'Honorarium Mahasiswa Paruh Waktu', 2000000),
(511016, 'Honorarium Kegiatan Reviuwer Proposal/Pelaksanaan Penelitian/Pengabdian', 7150000),
(511017, 'Honorarium Penelitian dan Bantuan Penulisan Proposal Penelitian', 98650000),
(511018, 'Honorarium Kegiatan KKN dan PKL', 0),
(511019, 'Upah Pekerja Harian Lepas', 0),
(512001, 'Tunjangan Suami/Istri PNS', 0),
(512002, 'Tunjangan Anak PNS', 0),
(512003, 'Tunjangan Suami/Istri Non PNS', 0),
(512004, 'Tunjangan Anak Non PNS', 0),
(512005, 'Tunjangan Jabatan Struktural', 0),
(512006, 'Tunjangan Jabatan Fungsional', 1000000),
(512007, 'Tunjangan PPh PNS', 0),
(512008, 'Tunjangan PPh Non PNS', 0),
(512009, 'Tunjangan Beras PNS', 0),
(512010, 'Tunjangan Umum PNS', 0),
(512011, 'Tunjangan Profesi Dosen', 0),
(512012, 'Tunjangan Kehormatan Profesor', 0),
(512013, 'Tunjangan Tugas Tambahan', 0),
(512014, 'Insentif Sidang/Uang Saku Rapat', 6400000),
(512015, 'Insentif Berbasis Kinerja', 50000),
(512016, 'Insentif Sopir/Pembantu Sopir', 850000),
(512017, 'Insentif Publikasi Karya Ilmiah/Penulisan Buku/Haki', 0),
(512018, 'Insentif Keagamaan', 1171000),
(512019, 'Insentif Penghargaan Pegawai', 9500000),
(512020, 'Insentif Kelebihan Mengajar', 0),
(513001, 'Penghargaan Purna Bakti', 3000000),
(513002, 'Iuran Asuransi Pegawai', 150000),
(513003, 'Iuran Dana Pensiun Pegawai', 0),
(514001, 'Biaya Perawatan Kecelakaan Kerja', 0),
(514002, 'Belanja Santunan Pegawai', 5000000),
(514003, 'Belanja Bingkisan Hari Raya', 500000),
(514004, 'Pengembalian Kelebihan Pemotongan Pajak Penghasilan Pegawai', 0),
(515001, 'Belanja Pengembangan Pegawai (Seminar, Pendidikan dan Pelatihan, Sertifikasi, dan Sejenisnya)', 32100000),
(515002, 'Belanja Bantuan Studi Lanjut/Penyelesaian Studi Pegawai', 0),
(515003, 'Belanja Bantuan Keanggotaan Profesi', 0),
(516001, 'Uang Makan Pegawai PNS', 185000),
(516002, 'Uang Makan Pegawai Non PNS', 76000),
(517001, 'Uang Lembur Pegawai PNS', 25000),
(517002, 'Uang Lembur Pegawai Non PNS', 17000),
(518001, 'Insentif Tenaga Kesehatan/Relawan/Petugas Khusus Untuk Penanganan COVID 19', 0),
(521001, 'Belanja Keperluan Perkantoran', 0),
(521002, 'Belanja Pengadaan Bahan Makanan', 345000),
(521003, 'Belanja Penambah Daya Tahan Tubuh', 19000),
(521004, 'Belanja Pengiriman Surat Dinas', 0),
(521005, 'Belanja Bahan / Bahan Praktikum', 0),
(521006, 'Belanja Barang Persediaan', 0),
(521007, 'Belanja Penelitian', 0),
(521008, 'Belanja Administrasi Bank dan Pajak', 0),
(521009, 'Belanja Barang Operasional Lainnya', 0),
(521010, 'Belanja Operasional Aktivitas/Pembelajaran Daring', 0),
(521011, 'Belanja Pengadaan Sarana/Prasarana Daring', 0),
(521012, 'Belanja Alat dan Bahan Kesehatan', 0),
(522001, 'Belanja Langganan Listrik', 0),
(522002, 'Belanja Langganan Telepon', 0),
(522003, 'Belanja Langganan Air', 0),
(522004, 'Belanja Langganan Internet', 0),
(522005, 'Belanja Langganan Daya dan Jasa Lainnya', 0),
(522006, 'Belanja Jasa Konsultan', 1950000),
(522007, 'Belanja Sewa', 54660000),
(522008, 'Belanja Jasa Lainnya', 0),
(523001, 'Belanja Pemeliharaan Gedung dan Bangunan', 0),
(523002, 'Belanja Pemeliharaan Peralatan dan Mesin', 0),
(523003, 'Belanja Pemeliharaan Jalan, Irigasi, dan Jaringan', 0),
(523004, 'Belanja Asuransi', 0),
(523005, 'Belanja Pemeliharaan Lainnya', 0),
(524001, 'Belanja Perjalanan Dinas dalam Kota', 300000),
(524002, 'Belanja Perjalanan Dinas Luar Kota', 1000000),
(524003, 'Belanja Paket Meeting dalam Kota', 0),
(524004, 'Belanja Paket Meeting Luar Kota', 0),
(524005, 'Belanja Perjalanan Dinas Luar Negeri', 0),
(525001, 'Belanja Honorarium Kegiatan Pengadaan Barang Habis Pakai', 0),
(526001, 'Belanja Denda', 0),
(526002, 'Belanja Hadiah', 9000000),
(526003, 'Belanja Barang Lain-Lain', 5000000),
(526004, 'Pengembalian SSBP', 0),
(526005, 'Pengembalian SSPB', 0),
(526006, 'Pengembalian Kelebihan Penerimaan Pendapatan Pendidikan', 0),
(526007, 'Belanja Denda Pajak', 0),
(526008, 'Belanja Kompensasi Kerugian Kerjasama', 0),
(527001, 'Belanja Penambah Daya Tahan Tubuh Penanganan COVID-19', 0),
(527002, 'Belanja Bahan Makanan Penanganan COVID-19', 0),
(527003, 'Belanja Obat-Obatan Untuk Penanganan COVID-19', 0),
(527004, 'Belanja Alat dan Bahan Kesehatan Penanganan COVID-19', 0),
(527005, 'Belanja Jasa Penanganan COVID-19', 0),
(527006, 'Belanja Pemulasaran Jenazah Penanganan COVID-19', 0),
(527007, 'Belanja Pemeriksan Medis/Laboratorium Penanganan COVID-19', 0),
(531001, 'Belanja Modal Pengadaan Tanah', 0),
(531002, 'Belanja Modal Pematangan/Penyiapan Tanah', 0),
(531003, 'Belanja Modal Honorarium Pengadaan Tanah', 0),
(531004, 'Belanja Modal Tanah Lainnya', 0),
(532001, 'Belanja Modal Pengadaan Peralatan dan Mesin', 0),
(532002, 'Belanja Modal Penambahan Nilai Peralatan dan Mesin', 0),
(532003, 'Belanja Modal Honorarium Pengadaan Peralatan dan Mesin', 8260000),
(532004, 'Belanja Modal Peralatan dan Mesin Lainnya', 0),
(533001, 'Belanja Modal Pengadaan Gedung dan Bangunan', 0),
(533002, 'Belanja Modal Penambahan Nilai Gedung dan Bangunan', 0),
(533003, 'Belanja Modal Honorarium Pengadaan Gedung dan Bangunan', 5560000),
(533004, 'Belanja Modal Perencanaan Gedung dan Bangunan', 0),
(533005, 'Belanja Modal Pengawasan Gedung dan Bangunan', 0),
(533006, 'Belanja Modal Gedung dan Bangunan Lainnya', 0),
(534001, 'Belanja Modal Pengadaan Jalan, Irigasi, dan Jaringan', 0),
(534002, 'Belanja Modal Penambahan Nilai Jalan, Irigasi, dan Jaringan', 0),
(534003, 'Belanja Modal Honorarium Pengadaan Jalan, Irigasi, dan Jaringan', 0),
(534004, 'Belanja Modal Perencanaan Jalan, Irigasi dan Jaringan', 0),
(534005, 'Belanja Modal Pengawasan Jalan, Irigasi dan Jaringan', 0),
(534006, 'Belanja Modal Jalan, Irigasi, dan Jaringan Lainnya', 0),
(535001, 'Belanja Pengadaan Barang Modal Lainnya', 0),
(535002, 'Belanja Modal Penambahan Nilai Barang Modal Lainnya', 0),
(535003, 'Belanja Modal Honorarium Pengadaan Barang Modal Lainnya', 3960000),
(535004, 'Belanja Modal Lainnya', 0),
(536101, 'Belanja Modal Investasi Jangka Pendek Deposito', 0),
(536102, 'Belanja Modal Investasi Jangka Pendek Surat Berharga Negara', 0),
(536103, 'Belanja Modal Bagian Lancar Investasi Non Permanen', 0),
(536104, 'Belanja Modal Investasi Jangka Pendek Sekolah Laboratorium ', 0),
(536199, 'Belanja Modal Investasi Jangka Pendek Lainnya', 0),
(536201, 'Belanja Modal Investasi Surat Berharga', 0),
(536202, 'Belanja Modal Investasi Jangka Panjang Non Permanen Lainnya', 0),
(536203, 'Belanja Modal Investasi Pada Anak Perusahaan ', 0),
(536299, 'Belanja Modal Investasi Jangka Panjang Permanen Lainnya', 0),
(541001, 'Belanja Pembayaran Bunga/Bagi Hasil Kewajiban Jangka Pendek', 0),
(541002, 'Belanja Pembayaran Bunga/Bagi Hasil Kewajiban Jangka Panjang', 0),
(551001, 'Belanja Subsidi Sekolah Laboratorium Percontohan', 0),
(561001, 'Hibah Penelitian dan Pengabdian Masyarakat', 0),
(562001, 'Hibah Kepada Masyarakat', 0),
(563001, 'Hibah Akreditasi', 120000000),
(564001, 'Bantuan Pengelolaan Jurnal', 0),
(564002, 'Bantuan Persiapan Publikasi Jurnal', 5000000),
(564003, 'Hibah Penulisan Buku', 0),
(571001, 'Beasiswa Mahasiswa', 0),
(571002, 'Bantuan Kegiatan Kemahasiswaan', 32000000),
(571003, 'Bantuan/Santunan Mahasiswa', 5000000),
(571004, 'Bantuan Kewirausahaan Mahasiswa', 7000000),
(571005, 'Bantuan Kesehatan Mahasiswa', 0),
(571006, 'Bantuan Operasional Perkuliahan Daring Untuk Mahasiswa', 0),
(571007, 'Bantuan Biaya Pendidikan UPI', 0),
(572001, 'Penghargaan Prestasi Mahasiswa', 53000000),
(573001, 'Bantuan Masyarakat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proker`
--

CREATE TABLE `proker` (
  `kode_proker` int(11) NOT NULL,
  `nama_proker` varchar(255) NOT NULL,
  `nim_pengaju_proker` int(11) NOT NULL,
  `nama_pengaju_proker` varchar(255) NOT NULL,
  `tgl_proker` date NOT NULL,
  `anggaran_proker` int(11) NOT NULL,
  `file_spj` varchar(255) NOT NULL,
  `kode_kegiatan` varchar(255) NOT NULL,
  `isAcc` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proker`
--

INSERT INTO `proker` (`kode_proker`, `nama_proker`, `nim_pengaju_proker`, `nama_pengaju_proker`, `tgl_proker`, `anggaran_proker`, `file_spj`, `kode_kegiatan`, `isAcc`) VALUES
(15, 'santuy di teras', 2106515, 'Fachri Najm Noer Kartiman', '2022-03-23', 20000000, '6299b9095ad33-Background-Biru-Nice.jpg', '1.1.5.1', 1),
(16, 'tetap mnyantuy di teras', 234523, 'alika', '2022-07-15', 15000000, '6299b9ea8de68-background mokaku ilkom 21.png', '1.1.7.40', 1),
(17, 'tetap mnyantuy di teras', 234523, 'alika', '2022-08-20', 15000000, '6299ba5510ec7-background mokaku ilkom 21.png', '1.1.7.40', 1),
(18, 'membeli kursi santuy', 34212, 'padil', '2022-06-23', 23000000, '6299ba907b17b-BG Zoom_Tutorial PAI.png', '1.1.11.5', 1),
(19, 'santuy dengan permen', 21331, 'talit', '2022-06-01', 20000000, '6299baebbe72f-Background-Biru-Nice.jpg', '1.1.7.15', 0),
(20, 'santuy dengan permen', 21331, 'talit', '2022-06-01', 20000000, '6299bc0a4d541-Background-Biru-Nice.jpg', '1.1.7.15', 0),
(21, 'santuy dengan permen', 21331, 'talit', '2022-06-01', 20000000, '6299bc2760a36-Background-Biru-Nice.jpg', '1.1.7.15', 0),
(28, 'santuy dengan permen', 2106515, 'talit', '2022-06-04', 20000000, '629a0d4de418e-sbu.sql', '1.1.7.15', 0),
(29, 'MBKM', 246353, 'sipatih', '2022-07-01', 2000000, '629a3a65a2aa6-mbkm.zip', '1.1.4.3', 0),
(30, 'MBKM', 12312, 'talit', '2022-06-03', 3000000, '629a3b7955a1d-mbkm.zip', '1.1.4.3', 0),
(31, 'MBKM', 234, 'mkbang', '2022-06-10', 3000000, '629a3c0036af6-mbkm.zip', '1.1.4.3', 0),
(32, 'pelatihan digital', 21331, 'alika', '2022-07-22', 2000000, '629a3f6be58da-satu.zip', '1.1.2.3', 1),
(33, 'MBKM', 21331, 'talit', '2022-08-12', 5000000, '629a42ea60da5-mbkm.zip', '1.1.11.1', 1);

--
-- Triggers `proker`
--
DELIMITER $$
CREATE TRIGGER `tr_delete_proker` BEFORE DELETE ON `proker` FOR EACH ROW UPDATE kegiatan SET terpakai_kegiatan = terpakai_kegiatan - old.anggaran_proker WHERE kode_kegiatan = old.kode_kegiatan AND old.isAcc = '1'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_insert_proker` BEFORE INSERT ON `proker` FOR EACH ROW UPDATE kegiatan SET terpakai_kegiatan = terpakai_kegiatan + new.anggaran_proker WHERE kode_kegiatan = new.kode_kegiatan AND new.isAcc = '1'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_update_proker_0` AFTER UPDATE ON `proker` FOR EACH ROW UPDATE kegiatan SET terpakai_kegiatan = terpakai_kegiatan - old.anggaran_proker WHERE kode_kegiatan = new.kode_kegiatan AND new.isAcc = '0'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_update_proker_1` AFTER UPDATE ON `proker` FOR EACH ROW IF old.anggaran_proker = new.anggaran_proker THEN
UPDATE kegiatan SET terpakai_kegiatan = terpakai_kegiatan + new.anggaran_proker WHERE kode_kegiatan = new.kode_kegiatan AND new.isAcc = '1';

ELSE

UPDATE kegiatan SET terpakai_kegiatan = terpakai_kegiatan - old.anggaran_proker + new.anggaran_proker WHERE kode_kegiatan = new.kode_kegiatan AND new.isAcc = '1';

END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_update_proker_kode` AFTER UPDATE ON `proker` FOR EACH ROW IF old.kode_kegiatan <> new.kode_kegiatan THEN

UPDATE kegiatan SET terpakai_kegiatan = 0
WHERE kode_kegiatan = old.kode_kegiatan AND new.isAcc = '1';

UPDATE kegiatan SET terpakai_kegiatan = terpakai_kegiatan + new.anggaran_proker WHERE kode_kegiatan = new.kode_kegiatan AND new.isAcc = '1';

END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `proker_spj`
--

CREATE TABLE `proker_spj` (
  `kode_proker_spj` int(11) NOT NULL,
  `kode_proker` int(11) NOT NULL,
  `kode_spj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proker_spj`
--

INSERT INTO `proker_spj` (`kode_proker_spj`, `kode_proker`, `kode_spj`) VALUES
(1, 29, 478),
(2, 29, 514),
(3, 29, 543),
(4, 29, 532),
(5, 29, 488),
(6, 29, 477),
(7, 30, 497),
(8, 30, 480),
(9, 30, 507),
(10, 31, 541),
(11, 31, 539),
(12, 31, 546),
(13, 31, 540),
(14, 32, 541),
(15, 32, 539),
(16, 32, 546),
(17, 32, 478),
(18, 32, 515),
(19, 33, 541),
(20, 33, 495),
(21, 33, 514),
(22, 33, 526),
(23, 33, 479),
(24, 33, 525);

-- --------------------------------------------------------

--
-- Table structure for table `sbu`
--

CREATE TABLE `sbu` (
  `kode_sbu` varchar(255) NOT NULL,
  `kode_sbu_1` varchar(255) NOT NULL,
  `kode_sbu_2` varchar(255) DEFAULT NULL,
  `kode_sbu_3` varchar(255) DEFAULT NULL,
  `kode_sbu_4` varchar(255) DEFAULT NULL,
  `kode_sbu_5` varchar(255) DEFAULT NULL,
  `besaran_sbu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu`
--

INSERT INTO `sbu` (`kode_sbu`, `kode_sbu_1`, `kode_sbu_2`, `kode_sbu_3`, `kode_sbu_4`, `kode_sbu_5`, `besaran_sbu`) VALUES
('1.1.4', '1', '1.1', NULL, NULL, NULL, 8107000),
('1.10.1.1.15', '1', '1.10', '1.10.1', '1.10.1.1', NULL, 5560000),
('1.10.1.2.15', '1', '1.10', '1.10.1', '1.10.1.2', NULL, 5010000),
('1.10.1.3.18', '1', '1.10', '1.10.1', '1.10.1.3', NULL, 3960000),
('1.10.1.6', '1', '1.10', '1.10.1', NULL, NULL, 1600000),
('1.10.2.1', '1', '1.10', '1.10.2', NULL, NULL, 420000),
('1.10.2.1.1.15', '1', '1.10', '1.10.2', NULL, '1.10.2.1.1', 3250000),
('1.2.16', '1', '1.2', NULL, NULL, NULL, 7370000),
('1.3.16', '1', '1.3', NULL, NULL, NULL, 4620000),
('1.4.16', '1', '1.4', NULL, NULL, NULL, 3840000),
('1.5.16', '1', '1.5', NULL, NULL, NULL, 4420000),
('1.6.16', '1', '1.6', NULL, NULL, NULL, 7140000),
('1.7.16', '1', '1.7', NULL, NULL, NULL, 3450000),
('1.8.4', '1', '1.8', NULL, NULL, NULL, 4620000),
('1.9.11', '1', '1.9', NULL, NULL, NULL, 2760000),
('10.1.1.1', '10', '10.1', '10.1.1', NULL, NULL, 1700000),
('10.1.2.3', '10', '10.1', '10.1.2', NULL, NULL, 12500000),
('10.1.3.2', '10', '10.1', '10.1.3', NULL, NULL, 1700000),
('10.1.4.2', '10', '10.1', '10.1.4', NULL, NULL, 10000000),
('10.1.5.2', '10', '10.1', '10.1.5', NULL, NULL, 588000),
('10.1.6.5', '10', '10.1', '10.1.6', NULL, NULL, 1000000),
('10.1.7.1', '10', '10.1', '10.1.7', NULL, NULL, 650000),
('10.2.1.5', '10', '10.2', '10.2.1', NULL, NULL, 11700000),
('10.2.2.5', '10', '10.2', '10.2.2', NULL, NULL, 11700000),
('10.2.3.1', '10', '10.2', '10.2.3', NULL, NULL, 1176000),
('10.2.4.5', '10', '10.2', '10.2.4', NULL, NULL, 1500000),
('10.2.5.1.1', '10', '10.2', '10.2.5', '10.2.5.1', NULL, 2350000),
('10.2.5.2.1', '10', '10.2', '10.2.5', '10.2.5.2', NULL, 7000000),
('10.2.6.1', '10', '10.2', '10.2.6', NULL, NULL, 400000),
('10.2.6.2.2', '10', '10.2', '10.2.6', '10.2.6.2', NULL, 650000),
('11.1.1.1', '11', '11.1', '11.1.1', NULL, NULL, 1500000),
('11.2.2', '11', '11.2', NULL, NULL, NULL, 5000000),
('11.3.1', '11', '11.3', NULL, NULL, NULL, 1000000),
('11.4.1', '11', '11.4', NULL, NULL, NULL, 500000),
('11.5.1', '11', '11.5', NULL, NULL, NULL, 500000),
('12.1', '12', NULL, NULL, NULL, NULL, 700000),
('13.2', '13', NULL, NULL, NULL, NULL, 1500000),
('14.1', '14', NULL, NULL, NULL, NULL, 50000),
('15.1.1.1.2', '15', '15.1', '15.1.1', '15.1.1.1', NULL, 150000),
('15.1.1.2.2', '15', '15.1', '15.1.1', '15.1.1.2', NULL, 200000),
('15.1.2.1.2', '15', '15.1', '15.1.2', '15.1.2.1', NULL, 200000),
('15.1.2.2.2', '15', '15.1', '15.1.2', '15.1.2.2', NULL, 300000),
('15.2.2', '15', '15.2', NULL, NULL, NULL, 200000),
('16.1', '16', '16.1', NULL, NULL, NULL, 2000000),
('16.2.6', '16', '16.2', NULL, NULL, NULL, 14460000),
('16.3.1', '16', '16.3', '16.3.1', NULL, NULL, 5000000),
('16.3.2.4', '16', '16.3', '16.3.2', NULL, NULL, 6000000),
('16.4.1.6', '16', '16.4', '16.4.1', NULL, NULL, 4500000),
('16.4.2.6', '16', '16.4', '16.4.2', NULL, NULL, 3000000),
('16.4.3.2', '16', '16.4', '16.4.3', NULL, NULL, 1250000),
('16.4.4.2', '16', '16.4', '16.4.4', NULL, NULL, 250000),
('16.4.5.2', '16', '16.4', '16.4.5', NULL, NULL, 200000),
('16.4.6', '16', '16.4', '16.4.6', NULL, NULL, 4000000),
('16.4.7.6', '16', '16.4', '16.4.7', NULL, NULL, 1500000),
('16.4.8.5', '16', '16.4', '16.4.8', NULL, NULL, 500000),
('16.4.9.4', '16', '16.4', '16.4.9', NULL, NULL, 12000000),
('17.2', '17', NULL, NULL, NULL, NULL, 150000),
('17.4.1', '17', '17.4', NULL, NULL, NULL, 1000000),
('18.1.2', '18', '18.1', NULL, NULL, NULL, 400000),
('18.2.1.2', '18', '18.2', '18.2.1', NULL, NULL, 1000000),
('18.2.2.2', '18', '18.2', '18.2.2', NULL, NULL, 2000000),
('18.2.3.3', '18', '18.2', '18.2.3', NULL, NULL, 4000000),
('19.1.3', '19', '19.1', NULL, NULL, NULL, 20000000),
('19.2.3', '19', '19.2', NULL, NULL, NULL, 500000),
('19.3.1', '19', '19.3', NULL, NULL, NULL, 5000000),
('19.4.1.1', '19', '19.4', '19.4.1', NULL, NULL, 10000000),
('19.4.2.1', '19', '19.4', '19.4.2', NULL, NULL, 15000000),
('19.4.3.1', '19', '19.4', '19.4.3', NULL, NULL, 25000000),
('19.4.4.1', '19', '19.4', '19.4.4', NULL, NULL, 250000),
('19.5.1.1.1', '19', '19.5', '19.5.1', '19.5.1.1', NULL, 5000000),
('19.5.1.2.1', '19', '19.5', '19.5.1', '19.5.1.2', NULL, 7500000),
('19.5.1.3.1', '19', '19.5', '19.5.1', '19.5.1.3', NULL, 10000000),
('19.6.1', '19', '19.6', NULL, NULL, NULL, 5000000),
('2.1.1.2', '2', '2.1', '2.1.1', NULL, NULL, 4500000),
('2.1.2.2', '2', '2.1', '2.1.2', NULL, NULL, 4000000),
('2.1.3.3', '2', '2.1', '2.1.3', NULL, NULL, 7000000),
('2.1.4.2', '2', '2.1', '2.1.4', NULL, NULL, 20000000),
('2.10.3', '2', '2.10', NULL, NULL, NULL, 700000),
('2.11.1', '2', '2.11', NULL, NULL, NULL, 150000),
('2.2.1.2', '2', '2.2', '2.2.1', NULL, NULL, 5500000),
('2.2.2.2', '2', '2.2', '2.2.2', NULL, NULL, 5000000),
('2.2.3', '2', '2.2', '2.2.3', NULL, NULL, 100000000),
('2.2.4', '2', '2.2', '2.2.4', NULL, NULL, 2000000),
('2.2.5', '2', '2.2', '2.2.5', NULL, NULL, 4000000),
('2.3.1.2', '2', '2.3', '2.3.1', NULL, NULL, 2000000),
('2.3.2.2', '2', '2.3', '2.3.2', NULL, NULL, 2500000),
('2.4.5', '2', '2.4', NULL, NULL, NULL, 450000),
('2.5.1', '2', '2.5', NULL, NULL, NULL, 4000000),
('2.6.1.3', '2', '2.6', '2.6.1', NULL, NULL, 4000000),
('2.6.2.2', '2', '2.6', '2.6.2', NULL, NULL, 1500000),
('2.6.3.1', '2', '2.6', '2.6.3', NULL, NULL, 1000000),
('2.7.1', '2', '2.7', NULL, NULL, NULL, 650000),
('2.8.1', '2', '2.8', NULL, NULL, NULL, 1000000),
('2.9.1', '2', '2.9', NULL, NULL, NULL, 750000),
('2.9.7.1', '2', '2.9', '2.9.7', NULL, NULL, 1000000),
('20.3', '20', NULL, NULL, NULL, NULL, 25000000),
('21.1.2', '21', '21.1', NULL, NULL, NULL, 500000),
('21.2.1', '21', '21.2', NULL, NULL, NULL, 2465000),
('21.3.2', '21', '21.3', NULL, NULL, NULL, 500000),
('21.4.1', '21', '21.4', NULL, NULL, NULL, 1765000),
('22.1.1', '22', '22.1', NULL, NULL, NULL, 1800000),
('23.1.1', '23', '23.1', NULL, NULL, NULL, 1500000),
('23.2.1.1.1', '23', '23.2', '23.2.1', '23.2.1.1', NULL, 2000000),
('23.2.2.1.1', '23', '23.2', '23.2.2', '23.2.2.1', NULL, 4000000),
('24.1', '24', NULL, NULL, NULL, NULL, 150000),
('25.8', '25', NULL, NULL, NULL, NULL, 5000000),
('26.1', '26', NULL, NULL, NULL, NULL, 19000),
('27.1', '27', '27.1', NULL, NULL, NULL, 1200000),
('27.2.2', '27', '27.2', NULL, NULL, NULL, 300000),
('28.1.1.1', '28', '28.1', '28.1.1', NULL, NULL, 300000),
('28.1.2.1', '28', '28.1', '28.1.2', NULL, NULL, 671000),
('28.2', '28', '28.2', NULL, NULL, NULL, 2100000),
('28.3.1', '28', '28.3', NULL, NULL, NULL, 3000000),
('28.4.1', '28', '28.4', NULL, NULL, NULL, 3000000),
('28.5', '28', '28.5', NULL, NULL, NULL, 50000),
('28.6', '28', '28.6', NULL, NULL, NULL, 40000),
('28.7', '28', '28.7', NULL, NULL, NULL, 200000),
('28.8', '28', '28.8', NULL, NULL, NULL, 500000),
('29.1.1', '29', '29.1', NULL, NULL, NULL, 150000),
('29.2.1', '29', '29.2', NULL, NULL, NULL, 150000),
('3.1.4', '3', '3.1', NULL, NULL, NULL, 25000),
('3.2.1', '3', '3.2', NULL, NULL, NULL, 17000),
('3.3.5', '3', '3.3', NULL, NULL, NULL, 45000),
('30.1.4', '30', '30.1', NULL, NULL, NULL, 3000000),
('30.2', '30', '30.2', NULL, NULL, NULL, 1500000),
('30.3.3', '30', '30.3', NULL, NULL, NULL, 1000000),
('30.4.1.1.1', '30', '30.4', '30.4.1', '30.4.1.1', NULL, 1750000),
('30.4.1.2.1', '30', '30.4', '30.4.1', '30.4.1.2', NULL, 1750000),
('30.4.2.1.1', '30', '30.4', '30.4.2', '30.4.2.1', NULL, 1500000),
('30.4.2.2.1', '30', '30.4', '30.4.2', '30.4.2.2', NULL, 1000000),
('30.5.1', '30', '30.5', NULL, NULL, NULL, 1000000),
('30.6.6', '30', '30.6', NULL, NULL, NULL, 6500000),
('30.7.2', '30', '30.7', NULL, NULL, NULL, 2500000),
('31.1.1', '31', '31.1', NULL, NULL, NULL, 5000000),
('31.2.3', '31', '31.2', NULL, NULL, NULL, 5000000),
('32.2', '32', NULL, NULL, NULL, NULL, 5000000),
('33.1.1', '33', '33.1', NULL, NULL, NULL, 1000000),
('34.3', '34', NULL, NULL, NULL, NULL, 250000),
('35.1', '35', NULL, NULL, NULL, NULL, 1500000),
('35.32.1', '35', '35.32', NULL, NULL, NULL, 400000),
('35.33.3', '35', '35.33', NULL, NULL, NULL, 150000),
('35.34', '35', '35.34', NULL, NULL, NULL, 35000),
('35.35.2', '35', '35.35', NULL, NULL, NULL, 500000),
('35.36.3', '35', '35.36', NULL, NULL, NULL, 300000),
('35.37.3', '35', '35.37', NULL, NULL, NULL, 300000),
('35.38.1', '35', '35.38', NULL, NULL, NULL, 2000000),
('35.39.1', '35', '35.39', NULL, NULL, NULL, 750000),
('35.40.1.1', '35', '35.40', '35.40.1', NULL, NULL, 500000),
('36.1.5', '36', '36.1', NULL, NULL, NULL, 600000),
('37.1', '37', NULL, NULL, NULL, NULL, 450000),
('38.1', '38', NULL, NULL, NULL, NULL, 400000),
('39.1', '39', '39.1', NULL, NULL, NULL, 300000),
('39.2.2', '39', '39.2', NULL, NULL, NULL, 850000),
('4.1.4', '4', '4.1', NULL, NULL, NULL, 300000),
('40.1.2', '40', '40.1', NULL, NULL, NULL, 100000),
('40.2.1.1', '40', '40.2', '40.2.1', NULL, NULL, 200000),
('40.2.2.3', '40', '40.2', '40.2.2', NULL, NULL, 500000),
('40.3.1.1.1', '40', '40.3', '40.3.1', '40.3.1.1', NULL, 900000),
('40.3.1.2.1.1', '40', '40.3', '40.3.1', '40.3.1.2', '40.3.1.2.1', 900000),
('40.3.1.2.2.1', '40', '40.3', '40.3.1', '40.3.1.2', '40.3.1.2.2', 600000),
('40.3.1.3.1', '40', '40.3', '40.3.1', '40.3.1.3', NULL, 800000),
('40.4.1.1.1', '40', '40.4', '40.4.1', '40.4.1.1', NULL, 200000),
('40.4.2.2', '40', '40.4', '40.4.2', NULL, NULL, 500000),
('40.5.1.1.2', '40', '40.5', '40.5.1', '40.5.1.1', NULL, 250000),
('40.5.1.2.7', '40', '40.5', '40.5.1', '40.5.1.2', NULL, 1500000),
('40.6.1.3', '40', '40.6', '40.6.1', NULL, NULL, 375000),
('40.6.2.7', '40', '40.6', '40.6.2', NULL, NULL, 1300000),
('41.1.1.1', '41', '41.1', '41.1.1', NULL, NULL, 250000),
('41.1.1.3.1', '41', '41.1', '41.1.1', '41.1.1.3', NULL, 50000),
('41.1.2.1', '41', '41.1', '41.1.2', NULL, NULL, 260000),
('41.2.1', '41', '41.2', NULL, NULL, NULL, 270000),
('41.2.3.3', '41', '41.2', '41.2.3', NULL, NULL, 270000),
('42.4', '42', NULL, NULL, NULL, NULL, 5000000),
('43.4', '43', NULL, NULL, NULL, NULL, 5000000),
('44.1.3', '44', '44.1', NULL, NULL, NULL, 6000000),
('44.2.3', '44', '44.2', NULL, NULL, NULL, 9000000),
('44.3.3', '44', '44.3', NULL, NULL, NULL, 12000000),
('45.1.1.1', '45', '45.1', '45.1.1', NULL, NULL, 2000000),
('45.1.2.1', '45', '45.1', '45.1.2', NULL, NULL, 2500000),
('45.1.3.1', '45', '45.1', '45.1.3', NULL, NULL, 3000000),
('45.1.4.1', '45', '45.1', '45.1.4', NULL, NULL, 1500000),
('45.2.1.1', '45', '45.2', '45.2.1', NULL, NULL, 2500000),
('45.2.2.1', '45', '45.2', '45.2.2', NULL, NULL, 3000000),
('45.2.3.1', '45', '45.2', '45.2.3', NULL, NULL, 3500000),
('45.2.4.1', '45', '45.2', '45.2.4', NULL, NULL, 2500000),
('45.3.1.1', '45', '45.3', '45.3.1', NULL, NULL, 2500000),
('45.3.2.1', '45', '45.3', '45.3.2', NULL, NULL, 3500000),
('45.3.3.1', '45', '45.3', '45.3.3', NULL, NULL, 4000000),
('45.3.4.2', '45', '45.3', '45.3.4', NULL, NULL, 3000000),
('45.4.1.1', '45', '45.4', '45.4.1', NULL, NULL, 6000000),
('45.4.2.1', '45', '45.4', '45.4.2', NULL, NULL, 7000000),
('45.4.3.1', '45', '45.4', '45.4.3', NULL, NULL, 8500000),
('45.4.4.1', '45', '45.4', '45.4.4', NULL, NULL, 6000000),
('46.1', '46', NULL, NULL, NULL, NULL, 7000000),
('47.4', '47', NULL, NULL, NULL, NULL, 2000000),
('48.1.1', '48', '48.1', NULL, NULL, NULL, 1000000),
('48.2.1', '48', '48.2', NULL, NULL, NULL, 1500000),
('48.3.1', '48', '48.3', NULL, NULL, NULL, 500000),
('49.1', '49', NULL, NULL, NULL, NULL, 2500000),
('5.1', '5', '5.1', NULL, NULL, NULL, 300000),
('5.2.2', '5', '5.2', NULL, NULL, NULL, 2500000),
('50.3', '50', NULL, NULL, NULL, NULL, 150000),
('6.1.1', '6', '6.1', NULL, NULL, NULL, 300000),
('6.2.3', '6', '6.2', NULL, NULL, NULL, 5000000),
('7.1', '7', NULL, NULL, NULL, NULL, 500000),
('8.1.1', '8', '8.1', NULL, NULL, NULL, 45000),
('8.2.1', '8', '8.2', NULL, NULL, NULL, 75000),
('8.3.1', '8', '8.3', NULL, NULL, NULL, 125000),
('8.4.1', '8', '8.4', NULL, NULL, NULL, 50000),
('9.1.1', '9', '9.1', NULL, NULL, NULL, 35000),
('9.2.3', '9', '9.2', NULL, NULL, NULL, 41000),
('9.3', '9', '9.3', NULL, NULL, NULL, 100000);

--
-- Triggers `sbu`
--
DELIMITER $$
CREATE TRIGGER `tr_update_sbu` BEFORE UPDATE ON `sbu` FOR EACH ROW UPDATE mak SET anggaran_mak = anggaran_mak - old.besaran_sbu + new.besaran_sbu WHERE kode_mak = f_coa(new.kode_sbu)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sbu_1`
--

CREATE TABLE `sbu_1` (
  `kode_sbu_1` varchar(255) NOT NULL,
  `nama_sbu_1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu_1`
--

INSERT INTO `sbu_1` (`kode_sbu_1`, `nama_sbu_1`) VALUES
('1', 'PEJABAT PERBENDAHARAAN/PENGELOLA ANGGARAN/PELAKSANA PENGADAAN BARANG/JASA'),
('10', 'SEMINAR/ WORKSHOP/SARASEHAN/DISEMINASI/ RAKOR/SOSIALISASI/FOCUS GROUP DISSCUSSION (FGD)/KEGIATAN DOSEN TAMU/KEGIATAN SEJENIS'),
('11', 'KEGIATAN AUDIT INTERNAL'),
('12', 'PENDAMPINGAN AUDIT/ PEMERIKSAAN EKSTERNAL'),
('13', 'HONORARIUM PENGEMBANGAN BAHAN AJAR/RENCANA PEMBELAJARAN SEMESTER'),
('14', 'INSENTIF KEHADIRAN TENAGA KEPENDIDIKAN'),
('15', 'LAYANAN PENGGUNAAN KENDARAAN DINAS'),
('16', 'TARIF SEWA'),
('17', 'PENERJEMAHAN DARI BAHASA ASING DAN BAHASA LOKAL/ DAERAH KE BAHASA INDONESIA ATAU SEBALIKNYA'),
('18', 'TIM PENYUSUNAN/PENGEMBANG JURNAL/MAJALAH/BULETIN/PROSIDING'),
('19', 'PUBLIKASI KARYA ILMIAH/PENULISAN BUKU'),
('2', 'HONORARIUM KEGIATAN'),
('20', 'BANTUAN MENGIKUTI SEMINAR DENGAN PROSIDING TERINDEKS SCOPUS'),
('21', 'KEGIATAN TEKNOLOGI KOMUNIKASI DAN INFORMASI'),
('22', 'PELAYANAN ADVOKASI DAN HUKUM'),
('23', 'PRODUK PUBLIKASI DALAM BENTUK VIDEO DAN PAGELARAN SENI'),
('24', 'TENAGA HARIAN LEPAS'),
('25', 'PAKAIAN DINAS KANTOR'),
('26', 'PENAMBAH DAYA TAHAN TUBUH'),
('27', 'KEGIATAN PENDIDIKAN DAN PELATIHAN'),
('28', 'SATUAN BIAYA KESEJAHTERAAN'),
('29', 'SATUAN BIAYA LAYANAN KESEHATAN'),
('3', 'UANG LEMBUR DAN UANG MAKAN LEMBUR'),
('30', 'PENGHARGAAN DAN CINDERAMATA'),
('31', 'BANTUAN SOSIAL'),
('32', 'BANTUAN TES DAN UJI KOMPETENSI'),
('33', 'TUNJANGAN JABATAN FUNGSIONAL'),
('34', 'HONORARIUM ASESOR'),
('35', 'PENERIMAAN MAHASISWA BARU SELEKSI MANDIRI (SM) UPI'),
('36', 'PENGHAPUSAN ASET'),
('37', 'HONORARIUM PENGELOLA SISTEM AKUNTANSI INSTANSI (SAI)'),
('38', 'HONORARIUM PENGELOLAAN ASET'),
('39', 'PENGURUSAN ASET TANAH'),
('4', 'UANG SAKU RAPAT/SIDANG/PLENO/RAPAT KERJA (RAKER)/RAPAT KOORDINASI (RAKOR)'),
('40', 'PEMBIMBING AKADEMIK/TUGAS AKHIR DAN PENGUJI'),
('41', 'PELAKSANAAN UJIAN TULIS (UTS/UAS) DIPLOMA/SARJANA/PASCASARJANA'),
('42', 'PEMBIMBING KEGIATAN KEMAHASISWAAN/REVIEWER PROPOSAL'),
('43', 'BANTUAN KEGIATAN KEMAHASISWAAN'),
('44', 'BANTUAN KEGIATAN KOMPETISI MAHASISWA'),
('45', 'PENGHARGAAN KEJUARAAN MAHASISWA'),
('46', 'PROGRAM KEWIRAUSAHAAN MAHASISWA'),
('47', 'HONORARIUM MAHASISWA PARUH WAKTU'),
('48', 'MAHASISWA BERPRESTASI'),
('49', 'PENGHARGAAN MAHASISWA LULUSAN TERBAIK'),
('5', 'PENILAI ANGKA KREDIT'),
('50', 'HONORARIUM KEGIATAN REVIEWER PROPOSAL/PELAKSANAAN PENELITIAN/PENGABDIAN'),
('6', 'RAPAT/RAKER/RAKOR MAJELIS WALI AMANAT (MWA)'),
('7', 'RAPAT/SIDANG/PLENO/RAKER/RAKOR DALAM KANTOR UNTUK SENAT AKADEMIK, DEWAN GURU BESAR, DAN KOMITE AUDIT'),
('8', 'KONSUMSI PENYELENGGARAAN RAPAT ATAU PERTEMUAN LAIN'),
('9', 'UANG MAKAN PEGAWAI');

-- --------------------------------------------------------

--
-- Table structure for table `sbu_2`
--

CREATE TABLE `sbu_2` (
  `kode_sbu_2` varchar(255) NOT NULL,
  `nama_sbu_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu_2`
--

INSERT INTO `sbu_2` (`kode_sbu_2`, `nama_sbu_2`) VALUES
('1.1', 'Pengguna Anggaran (PA)'),
('1.10', 'HONORARIUM PENGADAAN BARANG DAN JASA'),
('1.2', 'KUASA PENGGUNA ANGGARAN (KPA)'),
('1.3', 'ATASAN LANGSUNG BENDAHARA'),
('1.4', 'BENDAHARA PENERIMA DAN PENGELUARAN'),
('1.5', 'PEJABAT PENANDATANGAN SURAT PERINTAH MEMBAYAR (PPSPM)'),
('1.6', 'PEJABAT PEMBUAT KOMITMEN (PPK)'),
('1.7', 'BENDAHARA PENGELUARAN PEMBANTU (BPP) / PETUGAS PENGELOLA ADMINISTRASI BELANJA\nPEGAWAI (PPABP)'),
('1.8', 'STAF PENGGUNA ANGGARAN'),
('1.9', 'PENGADMINISTRASI KEUANGAN (YANG MEMBANTU BPP/PPABP)'),
('10.1', 'Tingkat Lokal dan Nasional'),
('10.2', 'Tingkat Internasional'),
('11.1', 'Auditor'),
('11.2', 'Bantuan tenaga ahli auditor SPI'),
('11.3', 'Audit Penjaminan Mutu'),
('11.4', 'Kegiatan Audit Kearsipan'),
('11.5', 'Audit Internal ISO'),
('15.1', 'Insentif Sopir/Pembantu Sopir Ke Luar Kota'),
('15.2', 'Biaya Lainnya'),
('16.1', 'Biaya Sewa Ruangan dan Gedung Pertemuan'),
('16.2', 'Biaya Sewa Kendaraan dan Alat Operasional LainnyaI'),
('16.3', 'Biaya Sewa Peralatan Kantor'),
('16.4', 'Biaya Sewa Peralatan Lainnya'),
('17.4', 'PENERJEMAH/ PERAGA BAHASA ISYARAT'),
('18.1', 'Buletin/Majalah'),
('18.2', 'Jurnal/Prosiding'),
('19.1', 'Publikasi Karya Ilmiah'),
('19.2', 'Honorarium Penerbitan Buku'),
('19.3', 'Insentif HAKI'),
('19.4', 'Insentif Penulisan Buku dan Publikasi Lainnya'),
('19.5', 'Pencetakan ulang naskah buku'),
('19.6', 'Bantuan Penerbitan Karya Ilmiah'),
('2.1', 'HONORARIUM KEGIATAN AKREDITASI NASIONAL'),
('2.10', 'Layanan Psikotest'),
('2.11', 'KEGIATAN OLAHRAGA'),
('2.2', 'HONORARIUM KEGIATAN AKREDITASI INTERNASIONAL'),
('2.3', 'HONORARIUM KEGIATAN ISO'),
('2.4', 'HONORARIUM KEGIATAN PPG'),
('2.5', 'HONORARIUM PIU'),
('2.6', 'HONORARIUM KEGIATAN PENYUSUNAN LAPORAN KINERJA/LAPORAN TAHUNAN/TENGAH TAHUNAN/LAPORAN KEUANGAN/STANDAR UNIVERSITAS/PENYUSUNAN RKAT/PENYUSUNAN DAN PENETAPAN PAGU/PENYUSUNAN STANDAR BIAYA UMUM (SBU)/PENYUSUNAN PENETAPAN UKT/PENYUSUNAN KURIKULUM/PENYUSUNAN P'),
('2.7', 'HONORARIUM TIM PELAKSANA KEGIATAN'),
('2.8', 'PENGELOLA KERJASAMA'),
('2.9', 'HONORARIUM PANITIA ACARA/KEGIATAN'),
('21.1', 'Honorarium Tim Pengelola Website'),
('21.2', 'Honorarium Pelaksana Kegiatan Pengembangan Sistem'),
('21.3', 'Honorarium Tim Pengelola Sistem'),
('21.4', 'DIGITASI (ALIH MEDIA)'),
('22.1', 'Pelayanan Advokasi Dan Hukum'),
('23.1', 'Publikasi Video Pembelajaran/Profil UPI'),
('23.2', 'Pegelaran Seni'),
('27.1', 'Pembicara/penceramah Diklat dari luar UPI'),
('27.2', 'Tutor/ instruktur/ pengajar/ peserta'),
('28.1', 'Insentif Keagamaan PNS. PT dan PTT'),
('28.2', 'Pembinaan motivasi dan peningkatan kinerja pegawai'),
('28.3', 'Gaji ke-13'),
('28.4', 'Gaji ke-14'),
('28.5', 'Uang kopi petugas keamanan'),
('28.6', 'Uang Makan sahur petugas keamanan'),
('28.7', 'Insentif petugas keamanan libur Idul Fitri (sebelum dan sesudah)'),
('28.8', 'Bingkisan Hari Raya Idul Fitri'),
('29.1', 'Asuransi'),
('29.2', 'Insentif Tenaga Medis'),
('3.1', 'Uang Lembur Aparatur Sipil Negara (ASN)/PNS/Pegawai Tetap'),
('3.2', 'Uang Lembur Pegawai Tidak Tetap'),
('3.3', 'Uang Makan Lembur Aparatur Sipil Negara (ASN)/PNS/Pegawai Tetap/ Pegawai Tidak Tetap'),
('30.1', 'Penghargaan Purna Bakti PNS dan PT'),
('30.2', 'Penghargaan Berakhirnya Masa Kerja PTT'),
('30.3', 'Penghargaan Satyalancana Karya Satya'),
('30.4', 'Penghargaan Pegawai dan Dosen Berprestasi'),
('30.5', 'Penghargaan Ibadah Umroh'),
('30.6', 'Cinderamata Purna Bakti PNS dan PT'),
('30.7', 'Cinderamata Mitra/Tamu'),
('31.1', 'Pegawai UPI'),
('31.2', 'Mahasiswa UPI'),
('33.1', 'Tunjangan Jabatan Fungsional Dosen/Tenaga Kependidikan Tetap'),
('35.32', 'Pelaksanaan Tes Keterampilan'),
('35.33', 'Interviewer'),
('35.34', 'Honorarium Pemantapan Uang Kuliah Tunggal dan penyelesaian masalah terkait dengan mahasiswa baru'),
('35.35', 'Pelaksanaan Tes Dan Kursus Bahasa di Balai Bahasa'),
('35.36', 'Pelaksanaan Rekrutmen Pegawai/Seleksi Pejabat UPI'),
('35.37', 'Pelaksanaan Test Kemampuan Bidang Rekruitment CPNS/Pegawai Tetap UPI'),
('35.38', 'Pewawancara Seleksi Pejabat'),
('35.39', 'Pemeriksaan Hasil Tes Kompetensi Bidang ( TKB) Rekrutmen Pegawai Tetap UPI'),
('35.40', 'Pelaksanaan Semester Padat (SP)'),
('36.1', 'Panitia Penghapusan'),
('39.1', 'Saksi Ukur Tanah'),
('39.2', 'Tim Pensertifikatan Tanah'),
('4.1', 'Rapat di Dalam Kantor (RDK)'),
('40.1', 'Pembimbing akademik'),
('40.2', 'Pembimbing Tugas Akhir*)'),
('40.3', 'Pascasarjana'),
('40.4', 'Pelaksanaan Seminar Proposal dan Ujian Akhir*)'),
('40.5', 'Pascasarjana'),
('40.6', 'Program Non Reguler'),
('41.1', 'Diploma dan Sarjana'),
('41.2', 'Pascasarjana'),
('44.1', 'Regional (kabupaten/kota/provinsi)'),
('44.2', 'Nasional'),
('44.3', 'Internasional'),
('45.1', 'Internal'),
('45.2', 'Regional'),
('45.3', 'Nasional'),
('45.4', 'Internasional'),
('48.1', 'Mahasiswa berprestasi/Lulusan Terbaik tingkat fakultas/kampus Daerah'),
('48.2', 'Mahasiswa berprestasi tingkat Universitas'),
('48.3', 'Penguji'),
('5.1', 'Honorarium Sidang Tim Penilai Angka Kredit'),
('5.2', 'Penilaian Usulan Guru Besar'),
('6.1', 'Rapat Rutin'),
('6.2', 'Sidang/Pleno Majelis Wali Amanat'),
('8.1', 'Berbentuk Box'),
('8.2', 'Prasmanan'),
('8.3', 'Mengundang Pejabat Tingkat Menteri/Eselon I/Pihak Eksternal/Swasta'),
('8.4', 'Jamuan Tamu Kerumahtanggaan'),
('9.1', 'Pegawai Tidak Tetap'),
('9.2', 'Pegawai Tetap'),
('9.3', 'Aparatur Sipil Negara/PNS');

-- --------------------------------------------------------

--
-- Table structure for table `sbu_3`
--

CREATE TABLE `sbu_3` (
  `kode_sbu_3` varchar(255) NOT NULL,
  `nama_sbu_3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu_3`
--

INSERT INTO `sbu_3` (`kode_sbu_3`, `nama_sbu_3`) VALUES
('1.10.1', 'PEJABAT PENGADAAN BARANG DAN JASA'),
('1.10.2', 'PENERIMA HASIL PEKERJAAN'),
('10.1.1', ' Narasumber/ Pembicara/Pembahas'),
('10.1.2', ' Praktisi/Pakar pembicara khusus'),
('10.1.3', ' Keynote Speaker'),
('10.1.4', ' Praktisi/Pakar pembicara khusus'),
('10.1.5', ' Penunjang'),
('10.1.6', ' Fasilitator'),
('10.1.7', ' Panitia Pelaksana Seminar Nasional'),
('10.2.1', 'Narasumber /Pembicara /Pembahas'),
('10.2.2', 'Keynote Speaker'),
('10.2.3', 'Penunjang'),
('10.2.4', 'Fasilitator'),
('10.2.5', 'Panitia Seminar Internasional'),
('10.2.6', 'Pembaca Doa dan Rohaniawan'),
('11.1.1', 'Pendampingan SPI Dalam Penyusunan Pertanggungjawaban Keuangan Unit Kerja'),
('11.5.1', 'Auditor'),
('15.1.1', 'Hari Kerja'),
('15.1.2', 'Hari Libur'),
('16.3.1', 'Mesin Fotocopy Digital'),
('16.3.2', 'LCD Projector'),
('16.4.1', 'Genset'),
('16.4.2', 'Sound system'),
('16.4.3', 'AC Portable'),
('16.4.4', 'Kipas Angin'),
('16.4.5', 'Microfon'),
('16.4.6', 'CCTV 4 titik'),
('16.4.7', 'Big Screen'),
('16.4.8', 'Tenda'),
('16.4.9', 'Rigging'),
('18.2.1', 'Lokal'),
('18.2.2', 'Nasional'),
('18.2.3', 'Internasional'),
('19.4.1', 'Buku ajar bahasa indonesia (ISBN)'),
('19.4.2', 'Buku teks bahasa indonesia (ISBN)'),
('19.4.3', 'Buku Teks berbahasa asing'),
('19.4.4', 'Insentif Sitasi Artikel/Jurnal/Buku/Prosiding'),
('19.5.1', 'Insentif/Bantuan Penulisan Buku dan Publikasi Lainnya'),
('2.1.1', 'Tingkat Prodi/Departemen'),
('2.1.2', 'Tingkat Fakultas/ Biro/ Direktorat/Kampus Daerah Sekolah Pasca Sarjana/ Arsip Universitas/ UPT Layanan Kesehatan / UPT Museum Pendidikan Nasional /Perpustakaan / dan Akreditasi Lainnya'),
('2.1.3', 'Tingkat Universitas'),
('2.1.4', 'Bantuan Akreditasi Nasional'),
('2.2.1', 'Tingkat Prodi/Departemen'),
('2.2.2', 'Tingkat Fakultas/Kampus Daerah/Sekolah Pascasarjana'),
('2.2.3', 'Bantuan Akreditasi Internasional'),
('2.2.4', 'Pengguna Lulusan/Alumni'),
('2.2.5', 'Pembimbing Penyiapan Dokumen'),
('2.3.1', 'Tingkat Prodi/Departemen'),
('2.3.2', 'Tingkat Fakultas/Biro/Direktorat/Badan/Lembaga/Kampus Daerah/Sekolah Pascasarjana/Arsip'),
('2.6.1', 'Tingkat Universitas'),
('2.6.2', 'Tingkat Fakultas/SPs/Kampus Daerah/Direktorat/Biro/Badan'),
('2.6.3', 'Tingkat Unit Lainnya'),
('2.9.7', 'Tim Penilai/Juri'),
('23.2.1', 'Tingkat Nasional'),
('23.2.2', 'Tingkat Internasional'),
('28.1.1', 'Munggah PNS dan PT'),
('28.1.2', 'Tunjangan Hari Raya Idul Fitri PNS, PT dan PTT/Dosen Luar Biasa'),
('30.4.1', 'Tingkat Nasional'),
('30.4.2', 'Tingkat Universitas'),
('35.40.1', 'Honorarium Pengelola SP di Fakultas (10%)'),
('40.2.1', 'Program Diploma'),
('40.2.2', 'Program Sarjana'),
('40.3.1', 'Program Reguler'),
('40.4.1', 'Program Diploma dan Sarjana'),
('40.4.2', 'Pelaksanaan Ujian Sidang Program Diploma dan Sarjana'),
('40.5.1', 'Program Reguler'),
('40.6.1', 'Program Magister (S2)'),
('40.6.2', 'Program doktor (S3)'),
('41.1.1', 'Kelas Reguler'),
('41.1.2', 'Kelas Internasional'),
('41.2.3', 'Honor mengawas Ujian'),
('45.1.1', 'Individual/Single'),
('45.1.2', 'Berpasangan/double'),
('45.1.3', 'Beregu/tim - (3 atau lebih)'),
('45.1.4', 'Tim Pembina/Tim Pembimbing'),
('45.2.1', 'Individual/Single'),
('45.2.2', 'Berpasangan/double'),
('45.2.3', 'Beregu/tim - (3 atau lebih)'),
('45.2.4', 'Tim Pembina/Tim Pembimbing'),
('45.3.1', 'Individual/Single'),
('45.3.2', 'Berpasangan/double'),
('45.3.3', 'Beregu/tim - (3 atau lebih)'),
('45.3.4', 'Tim Pembina/Tim Pembimbing'),
('45.4.1', 'Individual/Single'),
('45.4.2', 'Berpasangan/double'),
('45.4.3', 'Beregu/tim - (3 atau lebih)'),
('45.4.4', 'Tim Pembina/Tim Pembimbing');

-- --------------------------------------------------------

--
-- Table structure for table `sbu_4`
--

CREATE TABLE `sbu_4` (
  `kode_sbu_4` varchar(255) NOT NULL,
  `nama_sbu_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu_4`
--

INSERT INTO `sbu_4` (`kode_sbu_4`, `nama_sbu_4`) VALUES
('1.10.1.1', 'HONORARIUM KELOMPOK KERJA PEMILIHAN UNIT KERJA PENGADAAN BARANG (KONSTRUKSI)'),
('1.10.1.2', 'HONORARIUM KELOMPOK KERJA PEMILIHAN UNIT KERJA PENGADAAN BARANG (NON-KONSTRUKSI)'),
('1.10.1.3', 'HONORARIUM KELOMPOK KERJA PEMILIHAN UNIT KERJA PENGADAAN JASA (KONSULTASI DAN JASA LAINNYA)'),
('10.2.5.1', 'Pelaksana'),
('10.2.5.2', 'Bidang Publikasi Seminar Internasional Proceeding terindek scopus'),
('10.2.6.2', 'Rohaniawan'),
('15.1.1.1', 'Kendaraan roda 4 (empat)'),
('15.1.1.2', 'Kendaraan roda 6 (enam) atau lebih'),
('15.1.2.1', 'Kendaraan roda 4 (empat)'),
('15.1.2.2', 'Kendaraan roda 6 (enam) atau lebih'),
('19.5.1.1', 'Buku ajar bahasa indonesia (ISBN)'),
('19.5.1.2', 'Buku teks bahasa indonesia (ISBN)'),
('19.5.1.3', 'Buku Teks berbahasa asing'),
('23.2.1.1', 'Tim Artistik'),
('23.2.2.1', 'Tim Artistik'),
('30.4.1.1', 'Dosen/Kaprodi'),
('30.4.1.2', 'Tenaga Kependidikan'),
('30.4.2.1', 'Dosen/Ka Prodi/Tenaga Kependidikan'),
('30.4.2.2', 'Tingkat Fakultas/Kampus Daerah/Departemen/Prodi'),
('40.3.1.1', 'Pembimbing Tesis/S2'),
('40.3.1.2', 'Pembimbing Disertasi/S3'),
('40.3.1.3', 'Reviu Disertasi'),
('40.4.1.1', 'Seminar Proposal Penelitian/Skripsi'),
('40.5.1.1', 'Program Magister (S2)'),
('40.5.1.2', 'Program Doktor (S3)'),
('41.1.1.3', 'Penyusunan soal ujian');

-- --------------------------------------------------------

--
-- Table structure for table `sbu_5`
--

CREATE TABLE `sbu_5` (
  `kode_sbu_5` varchar(255) NOT NULL,
  `nama_sbu_5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu_5`
--

INSERT INTO `sbu_5` (`kode_sbu_5`, `nama_sbu_5`) VALUES
('1.10.2.1.1', 'PANITIA PEMERIKSA HASIL PEKERJAAN/ PENGADAAN BARANG/ JASA'),
('40.3.1.2.1', '2 (dua) orang pembimbing'),
('40.3.1.2.2', '3 (tiga) orang pembimbing');

-- --------------------------------------------------------

--
-- Table structure for table `spj`
--

CREATE TABLE `spj` (
  `kode_spj` int(11) NOT NULL,
  `nama_spj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spj`
--

INSERT INTO `spj` (`kode_spj`, `nama_spj`) VALUES
(541, 'Berita Acara Pembayaran'),
(539, 'Berita Acara Pemeriksaan'),
(546, 'Berita Acara Pemeriksaan Pekerjaan'),
(540, 'Berita Acara Serah Terima'),
(547, 'Berita Acara Serah Terima Pekerjaan/ Barang'),
(499, 'Boarding Pass'),
(497, 'Bukti DL dari SIMPEG (untuk uang harian lebih dari 8 jam) Surat tugas/Surat ijin'),
(480, 'Bukti finger print'),
(507, 'Bukti kehadiran di LN (SPPD LN)'),
(511, 'Bukti kontrak, apabila menggunakan EO'),
(495, 'Bukti Kunjungan (cap/ttd tempat tujuan)'),
(500, 'Bukti pembayaran akomodasi (tiket, bill hotel)'),
(528, 'Bukti Pembayaran halfday/fullday/fullboard'),
(522, 'Bukti pembayaran paket rapat'),
(502, 'Bukti pembayaran tol'),
(524, 'Bukti pembayaran transport'),
(523, 'Bukti pembayaran uang saku rapat'),
(501, 'Bukti pembelian BBM'),
(544, 'Bukti perjanjian/ringkasan kontrak dan kontrak'),
(535, 'Bukti serah terima barang'),
(521, 'Bukti Submit (Hibah Penelitian) Undangan'),
(489, 'Curriculum Vitae (untuk Pakar/Praktisi)'),
(478, 'Daftar hadir'),
(515, 'Daftar hadir/penerima konsumsi sesuai dengan jumlah undangan'),
(519, 'Daftar pembayaran yang ditandatangani penerima bantuan/hibah'),
(484, 'Daftar penerima honorarium yang mencantumkan jabatan dalam kegiatan tersebut, satuan dan tarif sesuai SBU'),
(514, 'Daftar Undangan'),
(543, 'Dokumen lain yang dipersyaratkan dalam kontrak/SPK (Dokumen Asli)'),
(552, 'Dokumen lain yang dipersyaratkan didalam perjanjian/kontrak (Dokumen Asli)'),
(505, 'Dokumen perizinan dari Setneg'),
(496, 'Dokumentasi ditempat tujuan'),
(483, 'Dokumentasi kegiatan'),
(530, 'Dokumentasi pelaksanaan kegiatan'),
(512, 'Dokumentasi Perjalanan Dinas di tempat tujuan (foto)'),
(504, 'Dokumentasi Perjalanan Dinas di tempat tujuan (foto) Surat tugas'),
(526, 'Dokumentasi rapat'),
(549, 'Faktur pajak beserta Surat Setoran Pajak (SSP) yang telah ditandatangani oleh Wajib'),
(532, 'Fotocopy cover depan belakang, kata pengantar, dan daftar isi'),
(506, 'Invitation letter (surat undangan)'),
(538, 'Jaminan Bank dan Keterangan Bank'),
(551, 'Jaminan yang dikeluarkan oleh bank atau lembaga keuangan lainnya sebagaimana dipersyaratkan dalam peraturan perundangan tentang pengadaan barang/jasa pemerintah'),
(517, 'Kontrak hibah'),
(537, 'Kontrak/Surat Perintah Kerja (SPK) Pengadaan Barang/jasa'),
(534, 'Kuitansi apabila dalam struk/cash register harga belum termasuk pajak'),
(509, 'Kuitansi tanda terima uang harian LN dan biaya perjalanan dinas lain'),
(536, 'Kuitansi yang telah ditandatangani oleh penyedia barang dan pejabat pengadaan/PPK'),
(548, 'Kuitansi yang telah ditandatangani oleh penyedia barang/jasa dan PPK'),
(491, 'Laporan & dokumentasi lembur'),
(482, 'Laporan kegiatan/Output Kegiatan'),
(520, 'Laporan pendukung dari penerima bantuan/hibah'),
(510, 'Laporan perjalanan LN/laporan kegiatan Bukti Pertanggungjawaban'),
(518, 'Lembar pengesahan (Hibah Penelitian)'),
(488, 'Materi'),
(479, 'Notula'),
(525, 'Notula rapat'),
(542, 'NPWP dan Faktur Pajak'),
(529, 'Output kegiatan'),
(550, 'Pajak/Bendahara Pengeluaran'),
(545, 'Referensi Bank yang menunjukkan nama dan nomor rekening penyedia barang/jasa'),
(492, 'Rincian Perhitungan Uang Lembur'),
(487, 'Rundown Acara'),
(531, 'SK'),
(516, 'SK penetapan hibah'),
(498, 'SPPD'),
(503, 'SPPD Rampung (sesuai dengan pengeluaran riil)'),
(513, 'Struk/cash register'),
(493, 'Surat Ijin (untuk lembur lebih dari 14 jam dalam seminggu)'),
(486, 'Surat Kesediaan menjadi narasumber (Eksternal UPI)'),
(533, 'Surat rekomendasi Wakil Rektor yang membidangi'),
(485, 'Surat Tugas Narasumber (Internal UPI)'),
(490, 'Surat Tugas Pimpinan Unit'),
(481, 'Surat Tugas/SK'),
(494, 'Surat Tugas/Surat Ijin'),
(527, 'Surat yang diajukan oleh unit kepada Rektor atau Wakil Rektor untuk dibuatkan Surat Ijin/Rekomendasi yang menerangkan bahwa tidak ada fasilitas di UPI yang memadai untuk pelaksanaan kegiatan tersebut'),
(508, 'Tiket pesawat (Receipt dan Boarding Pass)'),
(477, 'Undangan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `lvl_user` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `foto`, `lvl_user`) VALUES
(1, 'admin', 'admin@gmail.com', 'passuser1', NULL, 'admin'),
(2, 'user', 'user@gmail.com', 'passuser2', NULL, 'user'),
(7, 'user9', 'user9@gmail.com', 'passuser9', NULL, 'user'),
(8, 'user10', 'user10@gmail.com', 'passuser10', NULL, 'user'),
(16, 'user33', 'user33@gmail.com', 'passuser33', NULL, 'user'),
(17, 'user34', 'user34@gmail.com', 'passuser34', NULL, 'user'),
(19, 'user36', 'user36@gmail.com', 'passuser36', NULL, 'user');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_coa`
-- (See below for the actual view)
--
CREATE TABLE `v_coa` (
`kode_sbu_1` varchar(255)
,`nama_sbu_1` varchar(255)
,`kode_sbu_2` varchar(255)
,`nama_sbu_2` varchar(255)
,`kode_sbu_3` varchar(255)
,`nama_sbu_3` varchar(255)
,`kode_sbu_4` varchar(255)
,`nama_sbu_4` varchar(255)
,`kode_sbu_5` varchar(255)
,`nama_sbu_5` varchar(255)
,`besaran_sbu` varchar(19)
,`kode_mak` int(11)
,`nama_mak` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_daya_serap_bulan`
-- (See below for the actual view)
--
CREATE TABLE `v_daya_serap_bulan` (
`bulan` varchar(9)
,`persentase` varchar(53)
,`pengeluaran` varchar(48)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_daya_serap_ik`
-- (See below for the actual view)
--
CREATE TABLE `v_daya_serap_ik` (
`kode_indeks_kerja` varchar(255)
,`nama_indeks_kerja` varchar(255)
,`daya_serap` varchar(23)
,`keterangan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ik_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_ik_kegiatan` (
`kode_ik` varchar(255)
,`nama_ik` varchar(255)
,`kode_kegiatan` varchar(255)
,`nama_kegiatan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kegiatan_mak`
-- (See below for the actual view)
--
CREATE TABLE `v_kegiatan_mak` (
`kode_kegiatan` varchar(255)
,`nama_kegiatan` varchar(255)
,`kode_mak` int(11)
,`nama_mak` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_proker`
-- (See below for the actual view)
--
CREATE TABLE `v_proker` (
`kode_proker` int(11)
,`nama_proker` varchar(255)
,`nim_pengaju_proker` int(11)
,`nama_pengaju_proker` varchar(255)
,`tgl_proker` date
,`anggaran_proker` int(11)
,`file_spj` varchar(255)
,`kode_kegiatan` varchar(255)
,`nama_kegiatan` varchar(255)
,`isAcc` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_proker_spj`
-- (See below for the actual view)
--
CREATE TABLE `v_proker_spj` (
`kode_proker` int(11)
,`nama_proker` varchar(255)
,`kode_spj` int(11)
,`nama_spj` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `v_coa`
--
DROP TABLE IF EXISTS `v_coa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_coa`  AS   (select `sbu_1`.`kode_sbu_1` AS `kode_sbu_1`,`sbu_1`.`nama_sbu_1` AS `nama_sbu_1`,`sbu_2`.`kode_sbu_2` AS `kode_sbu_2`,`sbu_2`.`nama_sbu_2` AS `nama_sbu_2`,`sbu_3`.`kode_sbu_3` AS `kode_sbu_3`,`sbu_3`.`nama_sbu_3` AS `nama_sbu_3`,`sbu_4`.`kode_sbu_4` AS `kode_sbu_4`,`sbu_4`.`nama_sbu_4` AS `nama_sbu_4`,`sbu_5`.`kode_sbu_5` AS `kode_sbu_5`,`sbu_5`.`nama_sbu_5` AS `nama_sbu_5`,concat('Rp',format(`sbu`.`besaran_sbu`,2)) AS `besaran_sbu`,`mak`.`kode_mak` AS `kode_mak`,`mak`.`nama_mak` AS `nama_mak` from (((((((`coa` join `sbu` on(`coa`.`kode_sbu` = `sbu`.`kode_sbu`)) join `mak` on(`coa`.`kode_mak` = `mak`.`kode_mak`)) left join `sbu_1` on(`sbu`.`kode_sbu_1` = `sbu_1`.`kode_sbu_1`)) left join `sbu_2` on(`sbu`.`kode_sbu_2` = `sbu_2`.`kode_sbu_2`)) left join `sbu_3` on(`sbu`.`kode_sbu_3` = `sbu_3`.`kode_sbu_3`)) left join `sbu_4` on(`sbu`.`kode_sbu_4` = `sbu_4`.`kode_sbu_4`)) left join `sbu_5` on(`sbu`.`kode_sbu_5` = `sbu_5`.`kode_sbu_5`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_daya_serap_bulan`
--
DROP TABLE IF EXISTS `v_daya_serap_bulan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_daya_serap_bulan`  AS   (select monthname(`proker`.`tgl_proker`) AS `bulan`,concat(format(sum(`proker`.`anggaran_proker`) / `pagu`() * 100,2),'%') AS `persentase`,concat('Rp',format(sum(`proker`.`anggaran_proker`),2)) AS `pengeluaran` from `proker` where `proker`.`isAcc` = 1 group by monthname(`proker`.`tgl_proker`))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_daya_serap_ik`
--
DROP TABLE IF EXISTS `v_daya_serap_ik`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_daya_serap_ik`  AS   (select `iku_ikt`.`kode_ik` AS `kode_indeks_kerja`,`iku_ikt`.`nama_ik` AS `nama_indeks_kerja`,concat(format(`iku_ikt`.`terpakai_ik` / `iku_ikt`.`anggaran_ik` * 100,2),'%') AS `daya_serap`,`iku_ikt`.`ket_ik` AS `keterangan` from `iku_ikt` where `iku_ikt`.`terpakai_ik` / `iku_ikt`.`anggaran_ik` * 100 is not null)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_ik_kegiatan`
--
DROP TABLE IF EXISTS `v_ik_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ik_kegiatan`  AS   (select `iku_ikt`.`kode_ik` AS `kode_ik`,`iku_ikt`.`nama_ik` AS `nama_ik`,`kegiatan`.`kode_kegiatan` AS `kode_kegiatan`,`kegiatan`.`nama_kegiatan` AS `nama_kegiatan` from ((`ik_kegiatan` join `iku_ikt` on(`ik_kegiatan`.`kode_ik` = `iku_ikt`.`kode_ik`)) join `kegiatan` on(`ik_kegiatan`.`kode_kegiatan` = `kegiatan`.`kode_kegiatan`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_kegiatan_mak`
--
DROP TABLE IF EXISTS `v_kegiatan_mak`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kegiatan_mak`  AS   (select `kegiatan`.`kode_kegiatan` AS `kode_kegiatan`,`kegiatan`.`nama_kegiatan` AS `nama_kegiatan`,`mak`.`kode_mak` AS `kode_mak`,`mak`.`nama_mak` AS `nama_mak` from ((`kegiatan_mak` join `kegiatan` on(`kegiatan_mak`.`kode_kegiatan` = `kegiatan`.`kode_kegiatan`)) join `mak` on(`kegiatan_mak`.`kode_mak` = `mak`.`kode_mak`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_proker`
--
DROP TABLE IF EXISTS `v_proker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_proker`  AS   (select `proker`.`kode_proker` AS `kode_proker`,`proker`.`nama_proker` AS `nama_proker`,`proker`.`nim_pengaju_proker` AS `nim_pengaju_proker`,`proker`.`nama_pengaju_proker` AS `nama_pengaju_proker`,`proker`.`tgl_proker` AS `tgl_proker`,`proker`.`anggaran_proker` AS `anggaran_proker`,`proker`.`file_spj` AS `file_spj`,`proker`.`kode_kegiatan` AS `kode_kegiatan`,`kegiatan`.`nama_kegiatan` AS `nama_kegiatan`,`proker`.`isAcc` AS `isAcc` from (`proker` join `kegiatan` on(`proker`.`kode_kegiatan` = `kegiatan`.`kode_kegiatan`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_proker_spj`
--
DROP TABLE IF EXISTS `v_proker_spj`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_proker_spj`  AS   (select `proker`.`kode_proker` AS `kode_proker`,`proker`.`nama_proker` AS `nama_proker`,`spj`.`kode_spj` AS `kode_spj`,`spj`.`nama_spj` AS `nama_spj` from ((`proker_spj` join `proker` on(`proker_spj`.`kode_proker` = `proker`.`kode_proker`)) join `spj` on(`proker_spj`.`kode_spj` = `spj`.`kode_spj`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`kode_coa`),
  ADD KEY `kode_sbu` (`kode_sbu`),
  ADD KEY `kode_mak` (`kode_mak`);

--
-- Indexes for table `iku_ikt`
--
ALTER TABLE `iku_ikt`
  ADD PRIMARY KEY (`kode_ik`);

--
-- Indexes for table `ik_kegiatan`
--
ALTER TABLE `ik_kegiatan`
  ADD PRIMARY KEY (`kode_iku_ikt_kegiatan`),
  ADD KEY `kode_ik` (`kode_ik`),
  ADD KEY `kode_kegiatan` (`kode_kegiatan`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`kode_kegiatan`);

--
-- Indexes for table `kegiatan_mak`
--
ALTER TABLE `kegiatan_mak`
  ADD PRIMARY KEY (`kode_kegiatan_mak`),
  ADD KEY `kode_kegiatan` (`kode_kegiatan`),
  ADD KEY `kode_mak` (`kode_mak`),
  ADD KEY `kode_kegiatan_mak` (`kode_kegiatan_mak`);

--
-- Indexes for table `mak`
--
ALTER TABLE `mak`
  ADD PRIMARY KEY (`kode_mak`);

--
-- Indexes for table `proker`
--
ALTER TABLE `proker`
  ADD PRIMARY KEY (`kode_proker`),
  ADD KEY `kode_ik` (`kode_kegiatan`);

--
-- Indexes for table `proker_spj`
--
ALTER TABLE `proker_spj`
  ADD PRIMARY KEY (`kode_proker_spj`),
  ADD KEY `kode_proker` (`kode_proker`),
  ADD KEY `kode_spj` (`kode_spj`);

--
-- Indexes for table `sbu`
--
ALTER TABLE `sbu`
  ADD PRIMARY KEY (`kode_sbu`),
  ADD KEY `kode_sbu_1` (`kode_sbu_1`),
  ADD KEY `kode_sbu_2` (`kode_sbu_2`),
  ADD KEY `kode_sbu_3` (`kode_sbu_3`),
  ADD KEY `kode_sbu_4` (`kode_sbu_4`),
  ADD KEY `kode_sbu_5` (`kode_sbu_5`);

--
-- Indexes for table `sbu_1`
--
ALTER TABLE `sbu_1`
  ADD PRIMARY KEY (`kode_sbu_1`);

--
-- Indexes for table `sbu_2`
--
ALTER TABLE `sbu_2`
  ADD PRIMARY KEY (`kode_sbu_2`);

--
-- Indexes for table `sbu_3`
--
ALTER TABLE `sbu_3`
  ADD PRIMARY KEY (`kode_sbu_3`);

--
-- Indexes for table `sbu_4`
--
ALTER TABLE `sbu_4`
  ADD PRIMARY KEY (`kode_sbu_4`);

--
-- Indexes for table `sbu_5`
--
ALTER TABLE `sbu_5`
  ADD PRIMARY KEY (`kode_sbu_5`);

--
-- Indexes for table `spj`
--
ALTER TABLE `spj`
  ADD PRIMARY KEY (`kode_spj`),
  ADD UNIQUE KEY `nama_spj` (`nama_spj`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `kode_coa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT for table `ik_kegiatan`
--
ALTER TABLE `ik_kegiatan`
  MODIFY `kode_iku_ikt_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `kegiatan_mak`
--
ALTER TABLE `kegiatan_mak`
  MODIFY `kode_kegiatan_mak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5035;

--
-- AUTO_INCREMENT for table `proker`
--
ALTER TABLE `proker`
  MODIFY `kode_proker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `proker_spj`
--
ALTER TABLE `proker_spj`
  MODIFY `kode_proker_spj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `spj`
--
ALTER TABLE `spj`
  MODIFY `kode_spj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coa`
--
ALTER TABLE `coa`
  ADD CONSTRAINT `coa_ibfk_1` FOREIGN KEY (`kode_mak`) REFERENCES `mak` (`kode_mak`),
  ADD CONSTRAINT `coa_ibfk_2` FOREIGN KEY (`kode_sbu`) REFERENCES `sbu` (`kode_sbu`);

--
-- Constraints for table `ik_kegiatan`
--
ALTER TABLE `ik_kegiatan`
  ADD CONSTRAINT `ik_kegiatan_ibfk_1` FOREIGN KEY (`kode_kegiatan`) REFERENCES `kegiatan` (`kode_kegiatan`),
  ADD CONSTRAINT `ik_kegiatan_ibfk_2` FOREIGN KEY (`kode_ik`) REFERENCES `iku_ikt` (`kode_ik`);

--
-- Constraints for table `kegiatan_mak`
--
ALTER TABLE `kegiatan_mak`
  ADD CONSTRAINT `kegiatan_mak_ibfk_1` FOREIGN KEY (`kode_mak`) REFERENCES `mak` (`kode_mak`),
  ADD CONSTRAINT `kegiatan_mak_ibfk_2` FOREIGN KEY (`kode_kegiatan`) REFERENCES `kegiatan` (`kode_kegiatan`);

--
-- Constraints for table `proker`
--
ALTER TABLE `proker`
  ADD CONSTRAINT `proker_ibfk_1` FOREIGN KEY (`kode_kegiatan`) REFERENCES `kegiatan` (`kode_kegiatan`);

--
-- Constraints for table `proker_spj`
--
ALTER TABLE `proker_spj`
  ADD CONSTRAINT `proker_spj_ibfk_1` FOREIGN KEY (`kode_spj`) REFERENCES `spj` (`kode_spj`),
  ADD CONSTRAINT `proker_spj_ibfk_2` FOREIGN KEY (`kode_proker`) REFERENCES `proker` (`kode_proker`);

--
-- Constraints for table `sbu`
--
ALTER TABLE `sbu`
  ADD CONSTRAINT `sbu_ibfk_1` FOREIGN KEY (`kode_sbu_1`) REFERENCES `sbu_1` (`kode_sbu_1`),
  ADD CONSTRAINT `sbu_ibfk_2` FOREIGN KEY (`kode_sbu_2`) REFERENCES `sbu_2` (`kode_sbu_2`),
  ADD CONSTRAINT `sbu_ibfk_3` FOREIGN KEY (`kode_sbu_3`) REFERENCES `sbu_3` (`kode_sbu_3`),
  ADD CONSTRAINT `sbu_ibfk_4` FOREIGN KEY (`kode_sbu_4`) REFERENCES `sbu_4` (`kode_sbu_4`),
  ADD CONSTRAINT `sbu_ibfk_5` FOREIGN KEY (`kode_sbu_5`) REFERENCES `sbu_5` (`kode_sbu_5`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
