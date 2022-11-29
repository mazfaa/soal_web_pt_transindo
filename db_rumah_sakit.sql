-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 08:59 AM
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
-- Database: `db_rumah_sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id` int(11) UNSIGNED NOT NULL,
  `norec` varchar(255) NOT NULL,
  `statusenabled` varchar(255) NOT NULL,
  `jeniskelamin` varchar(255) NOT NULL,
  `tglregistrasi` datetime NOT NULL,
  `nocm` int(255) NOT NULL,
  `nocmfk` int(255) NOT NULL,
  `noregistrasi` int(255) NOT NULL,
  `namaruangan` varchar(255) NOT NULL,
  `namapasien` varchar(255) NOT NULL,
  `kelompokpasien` varchar(255) NOT NULL,
  `namarekanan` varchar(255) NOT NULL,
  `namadokter` varchar(255) NOT NULL,
  `tglpulang` datetime NOT NULL,
  `statuspasien` varchar(255) NOT NULL,
  `norec_pa` varchar(255) NOT NULL,
  `objectasuransipasienfk` varchar(255) NOT NULL,
  `pgid` int(255) NOT NULL,
  `objectruanganlastfk` int(255) NOT NULL,
  `nosep` varchar(255) NOT NULL,
  `norec_br` varchar(255) NOT NULL,
  `nostruklastfk` varchar(255) NOT NULL,
  `noreservasi` varchar(255) NOT NULL,
  `kelasditanggung` varchar(255) NOT NULL,
  `namakelas` varchar(255) NOT NULL,
  `tgllahir` datetime NOT NULL,
  `objectdepartmenfk` int(255) NOT NULL,
  `objectkelasfk` int(255) NOT NULL,
  `deptid` int(255) NOT NULL,
  `ppkrujukan` varchar(255) NOT NULL,
  `istelemedicine` varchar(255) NOT NULL,
  `jaminankhusus` varchar(255) NOT NULL,
  `noidentitas` int(255) NOT NULL,
  `statusschedule` varchar(255) NOT NULL,
  `isdiagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id`, `norec`, `statusenabled`, `jeniskelamin`, `tglregistrasi`, `nocm`, `nocmfk`, `noregistrasi`, `namaruangan`, `namapasien`, `kelompokpasien`, `namarekanan`, `namadokter`, `tglpulang`, `statuspasien`, `norec_pa`, `objectasuransipasienfk`, `pgid`, `objectruanganlastfk`, `nosep`, `norec_br`, `nostruklastfk`, `noreservasi`, `kelasditanggung`, `namakelas`, `tgllahir`, `objectdepartmenfk`, `objectkelasfk`, `deptid`, `ppkrujukan`, `istelemedicine`, `jaminankhusus`, `noidentitas`, `statusschedule`, `isdiagnosis`) VALUES
(1, 'a516faf0-1980-11ed-85c9-5d3d2533', 'true', 'PEREMPUAN', '2022-11-29 07:28:17', 72782, 4893, 220800173, 'IGD UMUM', 'CHAERUNNISA', 'BPJS', 'BPJS KESEHATAN - NON POLRI', 'dr. DERYANT IMAGODEI NORON', '2022-11-29 07:28:17', 'BARU', '5578d8d0-3249-11ed-bab5-f989f98e', '253705', 30017, 569, '0119R0040922V000240', 'null', '66607a50-510d-11ed-bd42-e78e480c', 'null', 'KELAS II', 'Non Kelas', '2022-11-29 07:28:17', 24, 6, 24, '-', 'null', 'null', 0, 'null', 'Other Specified Counselling'),
(2, 'a565e9a0-3f97-11ed-b717-635bc9ec', 'true', 'LAKI-LAKI', '2022-11-29 07:28:17', 72779, 4890, 220900000, 'Poliklinik Penyakit Dalam', 'HARI MULYONO', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. PANJI GUGAH BHASKARA, Sp. PD', '2022-11-29 07:28:17', 'LAMA', 'null', 'null', 30007, 33, 'null', 'null', 'null', 'null', 'null', 'Non Kelas', '2022-11-29 07:28:17', 18, 6, 18, 'null', 'null', 'null', 0, '2209000001', 'false'),
(3, 'bb5c3c30-3f9c-11ed-920d-a3e252d9', 'true', 'LAKI-LAKI', '2022-11-29 07:36:40', 72852, 4963, 220900000, 'Poliklinik Penyakit Dalam', 'TEST', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. PANJI GUGAH BHASKARA, Sp. PD', '2022-11-29 07:36:40', 'BARU', 'null', 'null', 30007, 33, 'null', 'null', 'null', 'null', 'null', 'Non Kelas', '2022-11-29 07:36:40', 18, 6, 18, 'null', 'null', 'null', 0, '2209000002', 'false'),
(4, 'befb9dd0-3fa3-11ed-942b-79197053', 'true', 'LAKI-LAKI', '2022-11-29 07:36:40', 1822, 1824, 220900000, 'Poliklinik Penyakit Dalam', 'MOCHAMAD RAGA PERBAWA', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. PANJI GUGAH BHASKARA, Sp. PD', '2022-11-29 07:36:40', 'LAMA', 'null', 'null', 30007, 33, 'null', 'null', 'de560240-5118-11ed-82be-0d2df1a9', 'null', 'null', 'Non Kelas', '2022-11-29 07:36:40', 18, 6, 18, 'null', 'null', 'null', 0, '2209000003', 'Other Specified Counselling'),
(5, '53c41c30-3fa5-11ed-9706-cb3e77b0', 'true', 'LAKI-LAKI', '2022-11-29 07:48:12', 72853, 4964, 220900000, 'Poliklinik Kebidanan & Kandungan', 'TESTING BAYI', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. MOHAMMAD WAHYU F. Sp. OG', '2022-11-29 07:48:12', 'BARU', 'null', 'null', 30002, 552, 'null', 'null', 'null', 'null', 'null', 'Non Kelas', '2022-11-29 07:48:12', 18, 6, 18, 'null', 'null', 'null', 0, '2209000004', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
