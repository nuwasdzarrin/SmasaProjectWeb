-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 04 Sep 2017 pada 06.01
-- Versi Server: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tulisanu_sma`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_years`
--

CREATE TABLE `academic_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year` varchar(9) NOT NULL COMMENT 'Tahun Akademik',
  `semester` enum('odd','even') NOT NULL DEFAULT 'odd' COMMENT 'odd = Ganjil, even = Genap',
  `is_active` enum('true','false') NOT NULL DEFAULT 'false',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `academic_years`
--

INSERT INTO `academic_years` (`id`, `academic_year`, `semester`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, '2016-2017', 'odd', 'true', '2017-08-13 15:32:25', '2017-08-13 15:32:25', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `type` bigint(20) NOT NULL DEFAULT '0',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `year` year(4) NOT NULL DEFAULT '0000',
  `organizer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_title` varchar(255) NOT NULL,
  `album_description` varchar(255) DEFAULT NULL,
  `album_slug` varchar(255) DEFAULT NULL,
  `album_cover` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `albums`
--

INSERT INTO `albums` (`id`, `album_title`, `album_description`, `album_slug`, `album_cover`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'reuni', '', 'reuni', 'c3c977cf9bd8b0527fe45772df8db3a7.jpg', '2017-08-13 15:56:14', '2017-08-13 15:57:30', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, 'Jawa Timur Festival', '', 'jawa-timur-festival', 'ca407d55887a5acb1edbf6c4e00b5178.jpg', '2017-08-18 10:36:22', '2017-08-18 10:42:16', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(3, 'Extra', '', 'extra', 'f2570629bcb7738cdc4027c3df1c481b.jpg', '2017-08-18 10:42:29', '2017-08-18 10:45:32', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(4, 'Alumni', '', 'alumni', 'f75bd6f4cd6ae5a15516a0406e828aa5.JPG', '2017-08-18 10:45:48', '2017-08-18 10:48:57', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` enum('_blank','_self','_parent','_top') DEFAULT '_blank',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `title`, `url`, `target`, `image`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'CMS Sekolahku', 'http://sekolahku.web.id', '_blank', '1.png', '2017-07-19 15:10:28', '2017-07-19 15:10:28', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 'President University', 'http://president.ac.id', '_blank', '2.png', '2017-07-19 15:10:28', '2017-07-19 15:10:28', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_groups`
--

CREATE TABLE `class_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(100) DEFAULT NULL,
  `sub_class` varchar(100) DEFAULT NULL,
  `major_id` bigint(20) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `class_groups`
--

INSERT INTO `class_groups` (`id`, `class`, `sub_class`, `major_id`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'X', '1', 1, '2017-08-13 15:37:34', '2017-09-01 14:59:08', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(2, 'X', '2', 1, '2017-09-01 14:58:13', '2017-09-01 14:59:16', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(3, 'X', '3', 1, '2017-09-01 14:58:52', '2017-09-01 14:58:52', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(4, 'X', '4', 1, '2017-09-01 14:59:29', '2017-09-01 14:59:29', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(5, 'X', '5', 1, '2017-09-01 14:59:48', '2017-09-01 14:59:48', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(6, 'X', '6', 1, '2017-09-01 15:00:05', '2017-09-01 15:00:05', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(7, 'X', '7', 1, '2017-09-01 15:00:18', '2017-09-01 15:00:18', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(8, 'X', '1', 2, '2017-09-01 15:00:34', '2017-09-01 15:00:34', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(9, 'X', '2', 2, '2017-09-01 15:00:49', '2017-09-01 15:00:49', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_group_settings`
--

CREATE TABLE `class_group_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) NOT NULL DEFAULT '0',
  `class_group_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Kelas',
  `student_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `class_group_settings`
--

INSERT INTO `class_group_settings` (`id`, `academic_year_id`, `class_group_id`, `student_id`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 1, 1, 2, '2017-09-01 15:01:26', '2017-09-01 15:01:26', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 1, 1, 11, '2017-09-01 15:21:41', '2017-09-01 15:21:41', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 1, 2, 5, '2017-09-01 15:21:53', '2017-09-01 15:21:53', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(15, 1, 2, 10, '2017-09-01 15:22:20', '2017-09-01 15:22:20', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(16, 1, 3, 3, '2017-09-01 15:22:45', '2017-09-01 15:22:45', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(17, 1, 3, 8, '2017-09-01 15:22:45', '2017-09-01 15:22:45', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(21, 1, 4, 4, '2017-09-01 15:23:35', '2017-09-01 15:23:35', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(22, 1, 4, 7, '2017-09-01 15:23:35', '2017-09-01 15:23:35', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(23, 1, 8, 9, '2017-09-01 15:23:58', '2017-09-01 15:23:58', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(32, 1, 7, 6, '2017-09-01 15:24:46', '2017-09-01 15:24:46', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_post_id` bigint(20) NOT NULL DEFAULT '0',
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_url` varchar(255) DEFAULT NULL,
  `comment_ip` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` enum('approved','unapproved','spam') DEFAULT 'approved',
  `comment_agent` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `comment_type` enum('post','message') DEFAULT 'post',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_letter_number` varchar(255) DEFAULT NULL COMMENT 'Nomor Surat Tugas',
  `assignment_letter_date` date DEFAULT NULL COMMENT 'Tanggal Surat Tugas',
  `assignment_start_date` date DEFAULT NULL COMMENT 'TMT Tugas',
  `parent_school_status` enum('true','false') NOT NULL DEFAULT 'true' COMMENT 'Status Sekolah Induk',
  `full_name` varchar(150) NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `nik` varchar(50) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rt` varchar(10) DEFAULT NULL COMMENT 'Rukun Tetangga',
  `rw` varchar(10) DEFAULT NULL COMMENT 'Rukun Warga',
  `sub_village` varchar(255) DEFAULT NULL COMMENT 'Nama Dusun',
  `village` varchar(255) DEFAULT NULL COMMENT 'Nama Kelurahan/ Desa',
  `sub_district` varchar(255) DEFAULT NULL COMMENT 'Kecamatan',
  `district` varchar(255) DEFAULT NULL COMMENT 'Kabupaten',
  `postal_code` varchar(20) DEFAULT NULL COMMENT 'Kode POS',
  `religion` bigint(20) NOT NULL DEFAULT '0',
  `marital_status` bigint(20) NOT NULL DEFAULT '0',
  `spouse_name` varchar(255) DEFAULT NULL COMMENT 'Nama Pasangan : Suami / Istri',
  `spouse_employment` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Pekerjaan Pasangan : Suami / Istri',
  `citizenship` enum('WNI','WNA') NOT NULL DEFAULT 'WNI' COMMENT 'Kewarganegaraan',
  `country` varchar(255) DEFAULT NULL,
  `npwp` varchar(100) DEFAULT NULL,
  `employment_status` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Status Kepegawaian',
  `nip` varchar(100) DEFAULT NULL,
  `niy` varchar(100) DEFAULT NULL COMMENT 'NIY/NIGK',
  `nuptk` varchar(100) DEFAULT NULL,
  `employment_type` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Jenis Guru dan Tenaga Kependidikan (GTK)',
  `decree_appointment` varchar(255) DEFAULT NULL COMMENT 'SK Pengangkatan',
  `appointment_start_date` date DEFAULT NULL COMMENT 'TMT Pengangkatan',
  `institutions_lifter` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Lembaga Pengangkat',
  `decree_cpns` varchar(100) DEFAULT NULL COMMENT 'SK CPNS',
  `pns_start_date` date DEFAULT NULL COMMENT 'TMT CPNS',
  `rank` bigint(20) DEFAULT '0' COMMENT 'Pangkat / Golongan',
  `salary_source` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Sumber Gaji',
  `headmaster_license` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Punya Lisensi Kepala Sekolah ?',
  `skills_laboratory` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Keahlian Lab oratorium',
  `handle_special_needs` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Mampu Menangani Kebutuhan Khusus',
  `braille_skills` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Keahlian Braile ?',
  `sign_language_skills` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Keahlian Bahasa Isyarat ?',
  `phone` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `assignment_letter_number`, `assignment_letter_date`, `assignment_start_date`, `parent_school_status`, `full_name`, `gender`, `nik`, `birth_place`, `birth_date`, `mother_name`, `street_address`, `rt`, `rw`, `sub_village`, `village`, `sub_district`, `district`, `postal_code`, `religion`, `marital_status`, `spouse_name`, `spouse_employment`, `citizenship`, `country`, `npwp`, `employment_status`, `nip`, `niy`, `nuptk`, `employment_type`, `decree_appointment`, `appointment_start_date`, `institutions_lifter`, `decree_cpns`, `pns_start_date`, `rank`, `salary_source`, `headmaster_license`, `skills_laboratory`, `handle_special_needs`, `braille_skills`, `sign_language_skills`, `phone`, `mobile_phone`, `email`, `photo`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, '', '0000-00-00', '0000-00-00', 'true', 'Sri Podang S.Pd', 'F', '12345567', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 89, 101, '', 10, 'WNI', '', NULL, 111, NULL, NULL, '', 123, '', '0000-00-00', 104, '', '0000-00-00', 148, 150, 'true', 157, 23, 'true', 'true', '', '', 'sripodang@gmail.com', NULL, '2017-08-18 10:03:42', '2017-08-18 10:03:42', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, '', '0000-00-00', '0000-00-00', 'true', 'Pontjo Yuono', 'M', '3787161553', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 89, 101, '', 10, 'WNI', '', NULL, 111, NULL, NULL, '', 123, '', '0000-00-00', 104, '', '0000-00-00', 133, 150, 'true', 157, 23, 'true', 'true', '', '', 'pontjo@gmail.com', NULL, '2017-08-18 10:10:11', '2017-08-18 10:10:11', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_title` varchar(255) DEFAULT NULL,
  `file_description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_category_id` bigint(20) NOT NULL DEFAULT '0',
  `file_path` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_visibility` enum('public','private') DEFAULT 'public',
  `file_counter` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `file_title`, `file_description`, `file_name`, `file_type`, `file_category_id`, `file_path`, `file_ext`, `file_size`, `file_visibility`, `file_counter`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Jadwal', NULL, NULL, NULL, 1, NULL, NULL, NULL, 'public', 0, '2017-08-13 15:59:55', '2017-08-13 15:59:55', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_categories`
--

CREATE TABLE `file_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `file_categories`
--

INSERT INTO `file_categories` (`id`, `category`, `slug`, `description`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Uncategorized', 'uncategorized', 'Uncategorized', '2017-07-19 15:10:27', '2017-07-19 15:10:27', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `caption`, `image`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Peresmian masjid besar SMAN 1 NGAWI oleh kepala dinas kab ngawi', '97cf9882f3a41e853b0313a9b814d83a.jpg', '2017-07-19 15:10:29', '2017-08-16 07:52:10', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(2, '', '49373b5f8e6d765e8ff2c0c68b9b87ad.jpg', '2017-07-19 15:10:29', '2017-08-16 07:52:51', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(3, 'Parade Band sebagai event tahunan yang di selengaran oleh OSIS SMAN 1 NGAWI', '0aad94fafa18868d8d68ecb277ea0b9b.jpg', '2017-08-13 15:23:06', '2017-08-16 07:53:47', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(4, 'Artesis sang jurnalisnya SMasa', '87d2ce094d91fd31ba82ef0cabe8173f.jpg', '2017-08-13 15:45:00', '2017-08-16 07:54:32', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(5, 'Barisan Paskibra Smasa dengan segudang prestasi', 'fd913b2b0386da582ec9da64d7b8ae62.JPG', '2017-08-16 07:54:53', '2017-08-16 07:55:39', NULL, NULL, 1, 1, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` enum('_blank','_self','_parent','_top') DEFAULT '_blank',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `target`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'CMS Sekolahku', 'http://sekolahku.web.id', '_blank', '2017-07-19 15:10:28', '2017-08-13 15:50:30', '2017-08-13 15:50:30', NULL, NULL, NULL, 1, NULL, 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `counter` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `datetime` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `counter`, `datetime`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, '::1', 1, '2017-08-13 22:10:25', '2017-08-13 15:10:25', '2017-08-13 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major` varchar(255) DEFAULT NULL COMMENT 'Program Keahlian / Jurusan',
  `short_name` varchar(255) DEFAULT NULL COMMENT 'Nama Singkat',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `majors`
--

INSERT INTO `majors` (`id`, `major`, `short_name`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Mipa', 'M', '2017-09-01 14:56:46', '2017-09-01 14:56:46', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, 'IPS', 'S', '2017-09-01 14:57:04', '2017-09-01 14:57:04', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_title` varchar(150) NOT NULL,
  `menu_url` varchar(150) NOT NULL,
  `menu_target` enum('_blank','_self','_parent','_top') DEFAULT '_self',
  `menu_type` varchar(100) NOT NULL DEFAULT 'pages',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `menu_title`, `menu_url`, `menu_target`, `menu_type`, `parent_id`, `position`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Hubungi Kami', 'hubungi-kami', '_self', 'modules', 0, 6, '2017-07-19 15:10:29', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 'Gallery Photo', 'gallery-photo', '_self', 'modules', 9, 1, '2017-07-19 15:10:29', '2017-07-19 15:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 'Gallery Video', 'gallery-video', '_self', 'modules', 9, 2, '2017-07-19 15:10:29', '2017-07-19 15:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(4, 'Formulir PPDB', 'formulir-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 1, '2017-07-19 15:10:29', '2017-07-19 15:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(5, 'Hasil Seleksi', 'hasil-seleksi-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 2, '2017-07-19 15:10:29', '2017-07-19 15:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(6, 'Cetak Formulir', 'cetak-formulir-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 3, '2017-07-19 15:10:29', '2017-07-19 15:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(7, 'Download Formulir', 'download-formulir-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 4, '2017-07-19 15:10:29', '2017-07-19 15:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(8, 'PPDB 2017', '#', '_self', 'links', 0, 3, '2017-07-19 15:10:29', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(9, 'Gallery', '#', '_self', 'links', 0, 5, '2017-07-19 15:10:29', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(10, 'PROFIL', '#', '_parent', 'links', 0, 1, '2017-07-19 15:10:29', '2017-08-18 10:16:22', NULL, '2017-08-18 10:16:22', NULL, 1, NULL, 1, 'false'),
(13, 'Profil Sekolah', 'read/8/profil-sekolah', '_self', 'pages', 10, 1, '2017-08-18 10:11:38', '2017-08-18 10:20:21', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(15, 'GURU&TENDIK', 'employee-directory', '', 'modules', 10, 3, '2017-08-18 10:18:30', '2017-08-18 10:32:38', NULL, '2017-08-18 10:19:15', NULL, 1, NULL, 1, 'false'),
(16, 'Komite Sekolah', 'read/11/komite-sekolah', '_self', 'pages', 10, 2, '2017-08-18 10:22:30', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(17, 'Extrakurikuler', '#', '_parent', 'links', 0, 4, '2017-08-18 10:26:23', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(18, 'OSIS', 'http://osis.sman1ngawi.sch.id', '_blank', 'links', 17, 1, '2017-08-18 10:26:57', '2017-08-18 10:30:01', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(19, 'pmr', 'http://lamere.sman1ngawi.sch.id', '_blank', 'links', 17, 2, '2017-08-18 10:27:19', '2017-08-18 10:30:01', NULL, '2017-08-18 10:29:08', NULL, 1, NULL, 1, 'false'),
(20, 'pramuka', 'http://winscout.sman1ngawi.sch.id', '_blank', 'links', 17, 3, '2017-08-18 10:28:01', '2017-08-18 10:30:01', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(21, 'baskara', 'http://baskara.sman1ngawi.sch.id', '_blank', 'links', 17, 4, '2017-08-18 10:28:16', '2017-08-18 10:30:02', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(22, 'Akademik', 'category/akademik', '_self', 'post_categories', 0, 2, '2017-08-18 10:32:04', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(23, 'Kesiswaan', 'category/kesiswaan', '_self', 'post_categories', 10, 4, '2017-08-18 10:32:04', '2017-08-18 10:32:38', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(24, 'Direktori Peserta Didik', 'student-directory', '_self', 'modules', 22, 1, '2017-09-01 15:31:02', '2017-09-01 15:31:53', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(26, 'Sarana Prasarana', 'category/sarana-prasarana', '_self', 'post_categories', 0, 0, '2017-09-01 23:04:19', '2017-09-01 23:04:19', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_description` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'true',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_description`, `module_url`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Pengguna', 'Pengguna', 'acl', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 'PPDB / PMB', 'PPDB / PMB', 'admission', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 'Tampilan', 'Tampilan', 'appearance', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(4, 'Blog', 'Blog', 'blog', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(5, 'GTK / Staff / Dosen', 'GTK / Staff / Dosen', 'employees', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(6, 'Media', 'Media', 'media', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(7, 'Plugins', 'Plugins', 'plugins', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(8, 'Data Referensi', 'Data Referensi', 'reference', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(9, 'Pengaturan', 'Pengaturan', 'settings', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(10, 'Peserta Didik / Mahasiswa', 'Peserta Didik / Mahasiswa', 'students', 'true', '2017-07-19 15:10:24', '2017-07-19 15:10:24', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(100) NOT NULL,
  `option` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `group`, `option`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'student_status', 'Aktif', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 'student_status', 'Lulus', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 'student_status', 'Mutasi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(4, 'student_status', 'Dikeluarkan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(5, 'student_status', 'Mengundurkan Diri', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(6, 'student_status', 'Putus Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(7, 'student_status', 'Meninggal', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(8, 'student_status', 'Hilang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(9, 'student_status', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(10, 'employment', 'Tidak bekerja', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(11, 'employment', 'Nelayan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(12, 'employment', 'Petani', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(13, 'employment', 'Peternak', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(14, 'employment', 'PNS/TNI/POLRI', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(15, 'employment', 'Karyawan Swasta', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(16, 'employment', 'Pedagang Kecil', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(17, 'employment', 'Pedagang Besar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(18, 'employment', 'Wiraswasta', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(19, 'employment', 'Wirausaha', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(20, 'employment', 'Buruh', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(21, 'employment', 'Pensiunan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(22, 'employment', 'Lain-lain', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(23, 'special_needs', 'Tidak', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(24, 'special_needs', 'Tuna Netra', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(25, 'special_needs', 'Tuna Rungu', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(26, 'special_needs', 'Tuna Grahita ringan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(27, 'special_needs', 'Tuna Grahita Sedang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(28, 'special_needs', 'Tuna Daksa Ringan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(29, 'special_needs', 'Tuna Daksa Sedang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(30, 'special_needs', 'Tuna Laras', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(31, 'special_needs', 'Tuna Wicara', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(32, 'special_needs', 'Tuna ganda', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(33, 'special_needs', 'Hiper aktif', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(34, 'special_needs', 'Cerdas Istimewa', '2017-07-19 15:10:25', '2017-08-16 08:08:50', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(35, 'special_needs', 'Bakat Istimewa', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(36, 'special_needs', 'Kesulitan Belajar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(37, 'special_needs', 'Narkoba', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(38, 'special_needs', 'Indigo', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(39, 'special_needs', 'Down Sindrome', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(40, 'special_needs', 'Autis', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(41, 'special_needs', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(42, 'education', 'Tidak sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(43, 'education', 'Putus SD', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(44, 'education', 'SD Sederajat', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(45, 'education', 'SMP Sederajat', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(46, 'education', 'SMA Sederajat', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(47, 'education', 'D1', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(48, 'education', 'D2', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(49, 'education', 'D3', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(50, 'education', 'D4/S1', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(51, 'education', 'S2', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(52, 'education', 'S3', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(53, 'scholarship', 'Anak berprestasi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(54, 'scholarship', 'Anak Miskin', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(55, 'scholarship', 'Pendidikan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(56, 'scholarship', 'Unggulan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(57, 'scholarship', 'Lain-lain', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(58, 'achievement_type', 'Sains', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(59, 'achievement_type', 'Seni', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(60, 'achievement_type', 'Olahraga', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(61, 'achievement_type', 'Lain-lain', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(62, 'achievement_level', 'Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(63, 'achievement_level', 'Kecamatan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(64, 'achievement_level', 'Kabupaten', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(65, 'achievement_level', 'Provinsi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(66, 'achievement_level', 'Nasional', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(67, 'achievement_level', 'Internasional', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(68, 'monthly_income', 'Kurang dari 500,000', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(69, 'monthly_income', '500.000 - 999.9999', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(70, 'monthly_income', '1 Juta - 1.999.999', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(71, 'monthly_income', '2 Juta - 4.999.999', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(72, 'monthly_income', '5 Juta - 20 Juta', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(73, 'monthly_income', 'Lebih dari 20 Juta', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(74, 'residence', 'Bersama orang tua', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(75, 'residence', 'Wali', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(76, 'residence', 'Kos', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(77, 'residence', 'Asrama', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(78, 'residence', 'Panti Asuhan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(79, 'residence', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(80, 'transportation', 'Jalan kaki', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(81, 'transportation', 'Kendaraan pribadi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(82, 'transportation', 'Kendaraan Umum / angkot / Pete-pete', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(83, 'transportation', 'Jemputan Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(84, 'transportation', 'Kereta Api', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(85, 'transportation', 'Ojek', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(86, 'transportation', 'Andong / Bendi / Sado / Dokar / Delman / Beca', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(87, 'transportation', 'Perahu penyebrangan / Rakit / Getek', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(88, 'transportation', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(89, 'religion', 'Islam', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(90, 'religion', 'kristen / protestan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(91, 'religion', 'Katholik', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(92, 'religion', 'Hindu', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(93, 'religion', 'Budha', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(94, 'religion', 'Khong Hu Chu', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(95, 'religion', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(96, 'school_level', '1 - Sekolah Dasar (SD)/ Sederajat', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(97, 'school_level', '2 - Sekolah Menengah Pertama (SMP)/ Sederajat', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(98, 'school_level', '3 - Sekolah Menengah Atas (SMA) / Aliyah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(99, 'school_level', '4 - Sekolah Menengah Kejuruan (SMK)', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(100, 'school_level', '5 - Perguruan Tinggi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(101, 'marital_status', 'Kawin', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(102, 'marital_status', 'Belum Kawin', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(103, 'marital_status', 'Berpisah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(104, 'institutions_lifter', 'Pemerintah Pusat', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(105, 'institutions_lifter', 'Pemerintah Provinsi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(106, 'institutions_lifter', 'Pemerintah Kab/Kota', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(107, 'institutions_lifter', 'Ketua yaysan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(108, 'institutions_lifter', 'Kepala Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(109, 'institutions_lifter', 'Komite Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(110, 'institutions_lifter', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(111, 'employment_status', 'PNS ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(112, 'employment_status', 'PNS Diperbantukan ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(113, 'employment_status', 'PNS DEPAG ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(114, 'employment_status', 'GTY/PTY ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(115, 'employment_status', 'GTT/PTT Provinsi ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(116, 'employment_status', 'GTT/PTT Kabupaten/Kota', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(117, 'employment_status', 'Guru Bantu Pusat ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(118, 'employment_status', 'Guru Honor Sekolah ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(119, 'employment_status', 'Tenaga Honor Sekolah ', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(120, 'employment_status', 'CPNS', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(121, 'employment_status', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(122, 'employment_type', 'Guru Kelas', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(123, 'employment_type', 'Guru Mata Pelajaran', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(124, 'employment_type', 'Guru BK', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(125, 'employment_type', 'Guru Inklusi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(126, 'employment_type', 'Tenaga Administrasi Sekola', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(127, 'employment_type', 'Gurtu Pendamping', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(128, 'employment_type', 'Guru Magang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(129, 'employment_type', 'Guru TIK', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(130, 'employment_type', 'Laboran', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(131, 'employment_type', 'Pustakawan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(132, 'employment_type', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(133, 'rank', 'I/A', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(134, 'rank', 'I/B', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(135, 'rank', 'I/C', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(136, 'rank', 'I/D', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(137, 'rank', 'II/A', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(138, 'rank', 'II/B', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(139, 'rank', 'II/C', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(140, 'rank', 'II/D', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(141, 'rank', 'III/A', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(142, 'rank', 'III/B', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(143, 'rank', 'III/C', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(144, 'rank', 'III/D', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(145, 'rank', 'IV/A', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(146, 'rank', 'IV/B', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(147, 'rank', 'IV/C', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(148, 'rank', 'IV/D', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(149, 'rank', 'IV/E', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(150, 'salary_source', 'APBN', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(151, 'salary_source', 'APBD Provinsi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(152, 'salary_source', 'APBD Kab/Kota', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(153, 'salary_source', 'Yaysan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(154, 'salary_source', 'Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(155, 'salary_source', 'Lembaga Donor', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(156, 'salary_source', 'Lainnya', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(157, 'skills_laboratory', 'Lab IPA', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(158, 'skills_laboratory', 'Lab Fisika', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(159, 'skills_laboratory', 'Lab Biologi', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(160, 'skills_laboratory', 'Lab Kimia', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(161, 'skills_laboratory', 'Lab Bahasa', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(162, 'skills_laboratory', 'Lab Komputer', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(163, 'skills_laboratory', 'Teknik Bangunan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(164, 'skills_laboratory', 'Teknik Serveai & Pemetaan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(165, 'skills_laboratory', 'Teknik Ketenagakerjaan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(166, 'skills_laboratory', 'Teknik Pendidnginan & Tata Udara', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(167, 'skills_laboratory', 'Teknik Mesin', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_album_id` bigint(20) NOT NULL DEFAULT '0',
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `photo_album_id`, `photo_name`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 1, '2d65446be93c659d195f3889c4147821.jpg', '2017-08-13 15:57:59', '2017-08-13 15:57:59', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 1, '82b6f9c6b69934389bdbcaffcc94a665.jpg', '2017-08-13 15:58:01', '2017-08-13 15:58:01', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 1, '542347270ff9c8a28e114a5c764812f8.jpg', '2017-08-13 15:58:02', '2017-08-13 15:58:02', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(4, 2, '70d42e2de4967ac63bd94a9436638a18.jpg', '2017-08-18 10:37:28', '2017-08-18 10:37:28', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(5, 2, '178c4f40b05b268dc2fb9bd61f48c108.jpg', '2017-08-18 10:37:31', '2017-08-18 10:37:31', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(6, 2, '2207ef570ea7b685f0e22de23709df63.jpg', '2017-08-18 10:37:36', '2017-08-18 10:37:36', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(7, 3, '0a8fcf1ebfc03a2a41ceb6695e9d97d6.JPG', '2017-08-18 10:43:25', '2017-08-18 10:43:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(8, 3, 'b264d2c72fca2530ac03826c58c53021.JPG', '2017-08-18 10:43:44', '2017-08-18 10:43:44', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(9, 3, '25203d27ad44741d6100f03c8d49759a.JPG', '2017-08-18 10:44:02', '2017-08-18 10:44:02', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(10, 3, 'cfe578565fb130507258f517b24bed51.jpg', '2017-08-18 10:44:08', '2017-08-18 10:44:08', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(11, 4, '24a825cfd37d363e0d6a4fc02b0b92a0.jpg', '2017-08-18 10:46:58', '2017-08-18 10:46:58', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pollings`
--

CREATE TABLE `pollings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_content` longtext,
  `post_image` varchar(100) DEFAULT NULL,
  `post_author` bigint(20) DEFAULT '0',
  `post_categories` varchar(255) DEFAULT NULL,
  `post_type` varchar(50) NOT NULL DEFAULT 'post',
  `post_status` enum('publish','draft') DEFAULT 'publish',
  `post_visibility` enum('public','private') DEFAULT 'public',
  `post_comment_status` enum('open','close') DEFAULT 'open',
  `post_slug` varchar(255) DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `post_counter` bigint(20) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_content`, `post_image`, `post_author`, `post_categories`, `post_type`, `post_status`, `post_visibility`, `post_comment_status`, `post_slug`, `post_tags`, `post_counter`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, '', '<p>sambutan kepala sekolah sma yang sangat dinantikan oeh seluaruh siswa yang ingin berkembang mneuju jenjang yang lebih abaik yang selalu amembahata auaabj&nbsp; ajakja ag aku agak mau melihat sesuatu yang belum beras di pulikksaijksb cecara umum hala tersebut akan mengirangi ahaugaydaxj au adbek adadadey</p>', 'headmaster_photo.png', 0, '', 'welcome', 'publish', 'public', 'open', '', '', 0, '2017-07-19 15:10:29', '2017-08-13 15:31:43', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(2, 'halaman 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 1, '1', 'page', 'publish', 'public', 'open', 'halaman-1', 'berita, pengumuman, sekilas-info', 1, '2017-07-19 15:10:29', '2017-08-18 09:57:44', '2017-08-18 09:57:44', NULL, NULL, 1, 1, NULL, 'true'),
(3, 'Palang Merah', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '48218abb1893cd891716cd8bf1c25950.jpg', 1, '6', 'post', 'publish', 'public', 'open', 'palang-merah', 'berita, pengumuman, sekilas-info', 5, '2017-07-19 15:10:29', '2017-08-16 08:01:35', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(4, 'Kesiswaan 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'c10743f6a5afd6643eb993da1d0c15be.jpg', 1, '4', 'post', 'publish', 'public', 'open', 'kesiswaan-1', 'berita, pengumuman, sekilas-info', 2, '2017-07-19 15:10:29', '2017-08-17 06:30:24', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(5, 'Akademik 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '360b8d5bf5ee0e1ab1773770770493bb.jpg', 1, '', 'post', 'publish', 'public', 'open', 'akademik-1', 'berita, pengumuman, sekilas-info', 1, '2017-07-19 15:10:29', '2017-08-16 08:02:40', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(6, 'Sarana Prasarana 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1bb909e1c643a271d0e645f85b8525f8.jpg', 1, '5', 'post', 'publish', 'public', 'open', 'sarana-prasarana-1', 'berita, pengumuman, sekilas-info', 1, '2017-07-19 15:10:29', '2017-08-16 08:03:51', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(7, 'Pramuka', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1b7e51a1e7a8361ee22861bbcd3c301d.jpg', 1, '6', 'post', 'publish', 'public', 'open', 'pramuka', 'berita, pengumuman, sekilas-info', 1, '2017-07-19 15:10:29', '2017-08-16 08:05:41', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(8, 'Profil Sekolah', '<p>sman 1 ngawi beralamatkan di jalan</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'profil-sekolah', NULL, 2, '2017-08-18 09:58:26', '2017-09-01 15:32:19', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(9, 'sarana prasarana', '<p>mempunyai peralatan yang telah lengkap</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'sarana-prasarana', NULL, 0, '2017-08-18 09:59:16', '2017-08-18 09:59:16', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(10, 'Prestasi Sekolah', '<p>sekolah yang sangat berprestasi</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'prestasi-sekolah', NULL, 0, '2017-08-18 10:00:57', '2017-08-18 10:00:57', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(11, 'Komite Sekolah', '<p>dapat di laporkan komite sekolaah sebagai berikut</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'komite-sekolah', NULL, 2, '2017-08-18 10:22:06', '2017-09-01 15:32:28', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(12, 'Jadwal 2017', '<p>di bawah ini meruapkana jadwal pelajaran 2017</p>', 'e13a4d9b282ca012782bff705fd81c86.jpg', 1, '3', 'post', 'publish', 'public', 'open', 'jadwal-2017', '', 3, '2017-08-18 10:58:09', '2017-08-23 00:36:53', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `post_categories`
--

INSERT INTO `post_categories` (`id`, `category`, `slug`, `description`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Uncategorized', 'uncategorized', 'Uncategorized', '2017-07-19 15:10:26', '2017-08-13 15:55:22', '2017-08-13 15:55:22', NULL, NULL, NULL, 1, NULL, 'true'),
(2, 'Palang Merah', 'palang-merah', NULL, '2017-08-13 15:28:32', '2017-08-16 03:18:54', '2017-08-16 03:18:54', NULL, 1, NULL, 1, NULL, 'true'),
(3, 'Akademik', 'akademik', 'berkaitan tentang keakademikan', '2017-08-13 15:29:40', '2017-08-13 15:29:40', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(4, 'Kesiswaan', 'kesiswaan', '', '2017-08-16 03:19:30', '2017-08-16 03:19:30', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(5, 'Sarana Prasarana', 'sarana-prasarana', '', '2017-08-16 03:19:47', '2017-08-16 03:19:47', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(6, 'Extra Kurikuler', 'extra-kurikuler', NULL, '2017-08-16 08:01:30', '2017-08-16 08:01:30', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'false',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote` varchar(255) DEFAULT NULL,
  `quote_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `quote_by`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'cai ilmu sampai ke negeri cina', 'nabi muhammad saw', '2017-08-13 15:30:19', '2017-08-13 15:30:19', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, 'do the best for youe life', 'prof yohanes', '2017-08-16 03:21:23', '2017-08-16 03:21:23', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(3, 'life is problem', 'prof madala', '2017-08-16 03:22:07', '2017-08-16 03:22:07', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(4, 'keberhasilan berbanding lurus dengan gaya', 'sir issac newton', '2017-08-16 03:22:40', '2017-08-16 03:22:40', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registration_phases`
--

CREATE TABLE `registration_phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL DEFAULT '0000' COMMENT 'Tahun PPDB',
  `phase` varchar(255) NOT NULL COMMENT 'Gelombang / Fase Pendaftaran',
  `start_date` date DEFAULT NULL COMMENT 'Tanggal Mulai',
  `end_date` date DEFAULT NULL COMMENT 'Tanggal Selesai',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `registration_phases`
--

INSERT INTO `registration_phases` (`id`, `year`, `phase`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 2018, 'Pertama', '2017-08-27', '2017-09-30', '2017-09-01 15:37:30', '2017-09-01 16:08:21', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(2, 2018, 'Kedua', '2018-06-02', '2018-06-30', '2017-09-01 15:38:28', '2017-09-01 15:38:28', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registration_quotas`
--

CREATE TABLE `registration_quotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL DEFAULT '0000' COMMENT 'Tahun PPDB',
  `major_id` bigint(20) DEFAULT '0' COMMENT 'Program Keahlian',
  `quota` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Kuota yang diterima secara keseluruhan',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `registration_quotas`
--

INSERT INTO `registration_quotas` (`id`, `year`, `major_id`, `quota`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 2018, 1, 350, '2017-09-01 15:39:02', '2017-09-01 15:39:02', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, 2018, 2, 60, '2017-09-01 15:39:29', '2017-09-01 15:39:29', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `scholarships`
--

CREATE TABLE `scholarships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) NOT NULL DEFAULT '0',
  `type` bigint(20) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `start_year` year(4) NOT NULL DEFAULT '0000',
  `end_year` year(4) NOT NULL DEFAULT '0000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(100) NOT NULL,
  `variable` varchar(255) DEFAULT NULL,
  `value` text,
  `default` text,
  `group_access` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `group`, `variable`, `value`, `default`, `group_access`, `description`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'general', 'site_maintenance', 'true', 'false', 'public, student, employee, administrator, super_user', 'Pemeliharaan situs', '2017-07-19 15:10:25', '2017-08-15 10:08:44', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(2, 'general', 'site_maintenance_end_date', NULL, '2017-01-01', 'public, student, employee, administrator, super_user', 'Tanggal Berakhir Pemeliharaan Situs', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 'general', 'site_cache', NULL, 'false', 'public, student, employee, administrator, super_user', 'Cache situs', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(4, 'general', 'site_cache_time', NULL, '10', 'public, student, employee, administrator, super_user', 'Lama Cache Situs', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(5, 'general', 'meta_description', NULL, 'CMS Sekolahku adalah Content Management System dan PPDB Online gratis untuk SD SMP/Sederajat SMA/Sederajat', 'public, student, employee, administrator, super_user', 'Deskripsi Meta', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(6, 'general', 'meta_keywords', NULL, 'CMS, Website Sekolah Gratis, Cara Membuat Website Sekolah, membuat web sekolah, contoh website sekolah, fitur website sekolah, Sekolah, Website, Internet,Situs, CMS Sekolah, Web Sekolah, Website Sekolah Gratis, Website Sekolah, Aplikasi Sekolah, PPDB Online, PSB Online, PSB Online Gratis, Penerimaan Siswa Baru Online, Raport Online, Kurikulum 2013, SD, SMP, SMA, Aliyah, MTs, SMK', 'public, student, employee, administrator, super_user', 'Kata Kunci Meta', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(7, 'general', 'google_map_api_key', NULL, '1234567890', 'public, student, employee, administrator, super_user', 'API Key Google Map', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(8, 'general', 'favicon', 'fd265f88c7d1221a8be0e3be9bc5834d.jpg', 'favicon.png', 'public, student, employee, administrator, super_user', 'Favicon', '2017-07-19 15:10:25', '2017-09-01 14:28:07', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(9, 'general', 'header', '019521e64b178638ced2f1f30968e8aa.png', 'header.png', 'public, student, employee, administrator, super_user', 'Gambar Header', '2017-07-19 15:10:25', '2017-08-16 07:22:56', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(10, 'media', 'file_allowed_types', NULL, 'jpg, jpeg, png, gif', 'public, student, employee, administrator, super_user', 'Tipe file yang diizinkan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(11, 'media', 'upload_max_filesize', NULL, '0', 'public, student, employee, administrator, super_user', 'Maksimal Ukuran File yang Diupload', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(12, 'media', 'thumbnail_size_height', NULL, '100', 'administrator, super_user', 'Tinggi Gambar Thumbnail', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(13, 'media', 'thumbnail_size_width', NULL, '150', 'administrator, super_user', 'Lebar Gambar Thumbnail', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(14, 'media', 'medium_size_height', NULL, '308', 'administrator, super_user', 'Tinggi Gambar Sedang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(15, 'media', 'medium_size_width', NULL, '460', 'administrator, super_user', 'Lebar Gambar Sedang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(16, 'media', 'large_size_height', NULL, '600', 'administrator, super_user', 'Tinggi Gambar Besar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(17, 'media', 'large_size_width', NULL, '800', 'administrator, super_user', 'Lebar Gambar Besar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(18, 'media', 'album_cover_height', '150', '250', 'administrator, super_user', 'Tinggi Cover Album Photo', '2017-07-19 15:10:25', '2017-09-01 14:25:56', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(19, 'media', 'album_cover_width', NULL, '400', 'administrator, super_user', 'Lebar Cover Album Photo', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(20, 'media', 'banner_height', NULL, '81', 'administrator, super_user', 'Tinggi Iklan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(21, 'media', 'banner_width', NULL, '245', 'administrator, super_user', 'Lebar Iklan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(22, 'media', 'image_slider_height', '600', '400', 'administrator, super_user', 'Tinggi Gambar Slide', '2017-07-19 15:10:25', '2017-08-16 11:46:52', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(23, 'media', 'image_slider_width', '1000', '900', 'administrator, super_user', 'Lebar Gambar Slide', '2017-07-19 15:10:25', '2017-08-16 11:46:32', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(24, 'media', 'student_photo_height', NULL, '400', 'public, student, employee, administrator, super_user', 'Tinggi Photo Peserta Didik', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(25, 'media', 'student_photo_width', NULL, '150', 'public, student, employee, administrator, super_user', 'Lebar Photo Peserta Didik', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(26, 'media', 'employee_photo_height', NULL, '226', 'employee, administrator, super_user', 'Tinggi Photo Guru dan Tenaga Kependidikan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(27, 'media', 'employee_photo_width', NULL, '151', 'employee, administrator, super_user', 'Lebar Photo Guru dan Tenaga Kependidikan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(28, 'media', 'headmaster_photo_height', NULL, '344', 'administrator, super_user', 'Tinggi Photo Kepala Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(29, 'media', 'headmaster_photo_width', NULL, '252', 'administrator, super_user', 'Lebar Photo Kepala Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(30, 'media', 'header_height', '50', '80', 'administrator, super_user', 'Tinggi Gambar Header', '2017-07-19 15:10:25', '2017-08-16 16:02:18', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(31, 'media', 'header_width', '100', '200', 'administrator, super_user', 'Lebar Gambar Header', '2017-07-19 15:10:25', '2017-08-16 16:02:27', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(32, 'media', 'logo_height', NULL, '120', 'administrator, super_user', 'Tinggi Logo Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(33, 'media', 'logo_width', NULL, '120', 'administrator, super_user', 'Lebar Logo Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(34, 'writing', 'default_post_category', NULL, '1', 'administrator, super_user', 'Default Kategori Tulisan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(35, 'writing', 'default_post_status', NULL, 'publish', 'administrator, super_user', 'Default Status Tulisan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(36, 'writing', 'default_post_visibility', NULL, 'public', 'administrator, super_user', 'Default Akses Tulisan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(37, 'writing', 'default_post_discussion', NULL, 'open', 'administrator, super_user', 'Default Komentar Tulisan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(38, 'writing', 'post_image_thumbnail_height', NULL, '100', 'administrator, super_user', 'Tinggi Gambar Kecil', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(39, 'writing', 'post_image_thumbnail_width', NULL, '150', 'administrator, super_user', 'Lebar Gambar Kecil', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(40, 'writing', 'post_image_medium_height', NULL, '250', 'administrator, super_user', 'Tinggi Gambar Sedang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(41, 'writing', 'post_image_medium_width', NULL, '400', 'administrator, super_user', 'Lebar Gambar Sedang', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(42, 'writing', 'post_image_large_height', NULL, '450', 'administrator, super_user', 'Tinggi Gambar Besar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(43, 'writing', 'post_image_large_width', NULL, '840', 'administrator, super_user', 'Lebar Gambar Besar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(44, 'reading', 'post_per_page', NULL, '10', 'public, student, employee, administrator, super_user', 'Tulisan per halaman', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(45, 'reading', 'post_rss_count', NULL, '10', 'public, student, employee, administrator, super_user', 'Jumlah RSS', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(46, 'reading', 'post_related_count', NULL, '10', 'public, student, employee, administrator, super_user', 'Jumlah Tulisan Terkait', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(47, 'reading', 'comment_per_page', NULL, '10', 'public, student, employee, administrator, super_user', 'Komentar per halaman', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(48, 'discussion', 'comment_moderation', NULL, 'false', 'administrator, super_user', 'Komentar harus disetujui secara manual', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(49, 'discussion', 'comment_registration', NULL, 'false', 'public, student, employee, administrator, super_user', 'Pengguna harus terdaftar dan login untuk komentar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(50, 'discussion', 'comment_blacklist', NULL, 'kampret', 'public, student, employee, administrator, super_user', 'Komentar disaring', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(51, 'discussion', 'comment_order', NULL, 'asc', 'public, student, employee, administrator, super_user', 'Urutan Komentar', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(52, 'social_account', 'facebook', 'facebook.com', 'https://www.facebook.com/cmssekolahku/', 'public, student, employee, administrator, super_user', 'Facebook', '2017-07-19 15:10:25', '2017-09-01 14:25:10', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(53, 'social_account', 'twitter', NULL, 'https://twitter.com/antonsofyan', 'public, student, employee, administrator, super_user', 'Twitter', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(54, 'social_account', 'google_plus', NULL, 'google.com/+AntonSofyan', 'public, student, employee, administrator, super_user', 'Google Plus', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(55, 'social_account', 'linked_in', NULL, 'https://www.linkedin.com/in/anton-sofyan-1428937a/', 'public, student, employee, administrator, super_user', 'Linked In', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(56, 'social_account', 'youtube', NULL, '-', 'public, student, employee, administrator, super_user', 'Youtube', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(57, 'social_account', 'instagram', NULL, 'https://www.instagram.com/anton_sofyan/', 'public, student, employee, administrator, super_user', 'Instagram', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(58, 'mail_server', 'mail_server_protocol', NULL, 'smpt', 'administrator, super_user', 'Mail Server Protocol', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(59, 'mail_server', 'mail_server_hostname', NULL, 'ssl://smtp.gmail.com', 'administrator, super_user', 'Mail Server Hostname', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(60, 'mail_server', 'mail_server_username', NULL, 'admin', 'administrator, super_user', 'Mail Server Username', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(61, 'mail_server', 'mail_server_password', NULL, 'admin', 'administrator, super_user', 'Mail Server Password', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(62, 'mail_server', 'mail_server_port', NULL, '465', 'administrator, super_user', 'Mail Server Port', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(63, 'school_profile', 'npsn', NULL, '123', 'public, student, employee, administrator, super_user', 'NPSN', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(64, 'school_profile', 'school_name', 'SMA Negeri 1 NGAWI', 'SMA Negeri 9 Kuningan', 'public, student, employee, administrator, super_user', 'Nama Sekolah', '2017-07-19 15:10:25', '2017-08-16 07:46:07', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(65, 'school_profile', 'headmaster', 'Drs Sukamdi', 'Anton Sofyan', 'public, student, employee, administrator, super_user', 'Kepala Sekolah', '2017-07-19 15:10:25', '2017-08-13 16:15:03', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(66, 'school_profile', 'headmaster_photo', '38af654580a19657d7cce9710f0e51d4.jpg', 'headmaster_photo.png', 'public, student, employee, administrator, super_user', 'Photo Kepala Sekolah', '2017-07-19 15:10:25', '2017-08-18 10:41:27', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(67, 'school_profile', 'school_level', '3', '3', 'public, student, employee, administrator, super_user', 'Bentuk Pendidikan', '2017-07-19 15:10:25', '2017-08-13 14:57:32', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(68, 'school_profile', 'school_status', NULL, '1', 'public, student, employee, administrator, super_user', 'Status Sekolah', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(69, 'school_profile', 'ownership_status', NULL, '1', 'administrator, super_user', 'Status Kepemilikan', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(70, 'school_profile', 'decree_operating_permit', NULL, '-', 'administrator, super_user', 'SK Izin Operasional', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(71, 'school_profile', 'decree_operating_permit_date', NULL, '2017-07-19', 'administrator, super_user', 'Tanggal SK Izin Operasional', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(72, 'school_profile', 'tagline', 'Terakreditasi A ||| Qualified Dream School', 'Where Tomorrow\'s Leaders Come Together', 'public, student, employee, administrator, super_user', 'Slogan', '2017-07-19 15:10:25', '2017-08-18 09:54:06', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(73, 'school_profile', 'rt', NULL, '12', 'public, student, employee, administrator, super_user', 'RT', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(74, 'school_profile', 'rw', NULL, '06', 'public, student, employee, administrator, super_user', 'RW', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(75, 'school_profile', 'sub_village', 'Beran', 'Wage', 'public, student, employee, administrator, super_user', 'Dusun', '2017-07-19 15:10:25', '2017-08-16 07:46:54', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(76, 'school_profile', 'village', 'Beran', 'Kadugede', 'public, student, employee, administrator, super_user', 'Kelurahan / Desa', '2017-07-19 15:10:25', '2017-08-16 07:47:25', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(77, 'school_profile', 'sub_district', 'NGAWI', 'Kadugede', 'public, student, employee, administrator, super_user', 'Kecamatan', '2017-07-19 15:10:25', '2017-08-16 07:46:43', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(78, 'school_profile', 'district', 'Ngawi', 'Kuningan', 'public, student, employee, administrator, super_user', 'Kabupaten', '2017-07-19 15:10:25', '2017-08-16 07:45:11', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(79, 'school_profile', 'postal_code', NULL, '45561', 'public, student, employee, administrator, super_user', 'Kode Pos', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(80, 'school_profile', 'street_address', 'JL A. YANI No. 45 NGAWI', 'Jalan Raya Kadugede No. 11', 'public, student, employee, administrator, super_user', 'Alamat Jalan', '2017-07-19 15:10:25', '2017-08-16 07:46:32', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(81, 'school_profile', 'latitude', NULL, '1234567890', 'public, student, employee, administrator, super_user', 'Latitude', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(82, 'school_profile', 'longitude', NULL, '1234567890', 'public, student, employee, administrator, super_user', 'Longitude', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(83, 'school_profile', 'phone', NULL, '0232123456', 'public, student, employee, administrator, super_user', 'Telepon', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(84, 'school_profile', 'fax', NULL, '0232123456', 'public, student, employee, administrator, super_user', 'Fax', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(85, 'school_profile', 'email', 'admin@sman1ngawi.sch.id', 'info@sman9kuningan.sch.id', 'public, student, employee, administrator, super_user', 'Email', '2017-07-19 15:10:25', '2017-08-16 07:45:36', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(86, 'school_profile', 'website', 'http://www.sman1ngawi.sch.id', 'http://www.sman9kuningan.sch.id', 'public, student, employee, administrator, super_user', 'Website', '2017-07-19 15:10:25', '2017-08-16 07:47:45', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(87, 'school_profile', 'logo', 'e4b94881f5930289cfa5591aaacdca72.jpg', 'logo.png', 'public, student, employee, administrator, super_user', 'Logo', '2017-07-19 15:10:25', '2017-08-16 07:44:57', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(88, 'admission', 'admission_status', NULL, 'open', 'public, student, employee, administrator, super_user', 'Status Penerimaan Peserta Didik Baru', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(89, 'admission', 'admission_year', '2018', '2017', 'public, student, employee, administrator, super_user', 'Tahun Penerimaan Peserta Didik Baru', '2017-07-19 15:10:25', '2017-09-01 22:58:29', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(90, 'admission', 'admission_start_date', NULL, '2017-01-01', 'public, student, employee, administrator, super_user', 'Tanggal Mulai PPDB', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(91, 'admission', 'admission_end_date', NULL, '2017-12-31', 'public, student, employee, administrator, super_user', 'Tanggal Selesai PPDB', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(92, 'admission', 'announcement_start_date', NULL, '2017-01-01', 'public, student, employee, administrator, super_user', 'Tanggal Mulai Pengumuman Hasil Seleksi PPDB', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(93, 'admission', 'announcement_end_date', NULL, '2017-12-31', 'public, student, employee, administrator, super_user', 'Tanggal Selesai Pengumuman Hasil Seleksi PPDB', '2017-07-19 15:10:25', '2017-07-19 15:10:25', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major_id` bigint(20) DEFAULT NULL COMMENT 'Jurusan / Program Keahlian',
  `first_choice` bigint(20) DEFAULT '0' COMMENT 'Pilihan Pertama PPDB',
  `second_choice` bigint(20) DEFAULT '0' COMMENT 'Pilihan Kedua PPDB',
  `registration_number` varchar(10) DEFAULT NULL COMMENT 'Nomor Pendaftaran',
  `selection_result` varchar(100) DEFAULT NULL COMMENT 'Hasil Seleksi PPDB',
  `admission_phase_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Gelombang Pendaftaran',
  `photo` varchar(100) DEFAULT NULL,
  `is_transfer` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Jenis Pendaftaran : Baru / Pindahan ?',
  `is_prospective_student` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Calon Siswa Baru ?',
  `re_registration` enum('true','false') DEFAULT NULL COMMENT 'Konfirmasi Pendaftaran Ulang Calon Siswa Baru',
  `is_alumni` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Alumni ?',
  `is_student` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Student Aktif ?',
  `start_date` date DEFAULT NULL COMMENT 'Tanggal Masuk Sekolah',
  `nim` varchar(50) DEFAULT NULL COMMENT 'Nomor Induk Mahasiswa',
  `nis` varchar(50) DEFAULT NULL COMMENT 'Nomor Induk Siswa',
  `nisn` varchar(50) DEFAULT NULL COMMENT 'Nomor Induk Siswa Nasional',
  `nik` varchar(50) DEFAULT NULL COMMENT 'Nomor Induk Kependudukan / KTP',
  `prev_exam_number` varchar(50) DEFAULT NULL COMMENT 'Nomor Peserta Ujian Sebelumnya',
  `paud` enum('true','false') DEFAULT NULL COMMENT 'Apakah pernah PAUD',
  `tk` enum('true','false') DEFAULT NULL COMMENT 'Apakah pernah TK',
  `skhun` varchar(50) DEFAULT NULL COMMENT 'No. Seri Surat Keterangan Hasil Ujian Nasional Sebelumnya',
  `diploma_number` varchar(50) DEFAULT NULL COMMENT 'No. Seri Ijazah Sebelumnya',
  `hobby` varchar(255) DEFAULT NULL,
  `ambition` varchar(255) DEFAULT NULL COMMENT 'Cita-cita',
  `full_name` varchar(150) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `religion` bigint(20) DEFAULT NULL,
  `special_needs` bigint(20) DEFAULT NULL COMMENT 'Berkeburuhan Khusus',
  `street_address` varchar(255) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rt` varchar(10) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rw` varchar(10) DEFAULT NULL COMMENT 'Alamat Jalan',
  `sub_village` varchar(255) DEFAULT NULL COMMENT 'Nama Dusun',
  `village` varchar(255) DEFAULT NULL COMMENT 'Nama Kelurahan/ Desa',
  `sub_district` varchar(255) DEFAULT NULL COMMENT 'Kecamatan',
  `district` varchar(255) DEFAULT NULL COMMENT 'Kabupaten',
  `postal_code` varchar(20) DEFAULT NULL COMMENT 'Kode POS',
  `residence` bigint(20) DEFAULT NULL COMMENT 'Tempat Tinggal',
  `transportation` bigint(20) DEFAULT NULL COMMENT 'Moda Transportasi',
  `phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `sktm` varchar(100) DEFAULT NULL COMMENT 'Surat Keterangan Tidak Mampu (SKTM)',
  `kks` varchar(100) DEFAULT NULL COMMENT 'Kartu Keluarga Sejahtera (KKS)',
  `kps` varchar(100) DEFAULT NULL COMMENT 'Kartu Pra Sejahtera (KPS)',
  `kip` varchar(100) DEFAULT NULL COMMENT 'Kartu Indonesia Pintar (KIP)',
  `kis` varchar(100) DEFAULT NULL COMMENT 'Kartu Indonesia Sehat (KIS)',
  `citizenship` enum('WNI','WNA') NOT NULL DEFAULT 'WNI' COMMENT 'Kewarganegaraan',
  `country` varchar(255) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `father_birth_year` year(4) DEFAULT NULL,
  `father_education` bigint(20) DEFAULT '0',
  `father_employment` bigint(20) DEFAULT '0',
  `father_monthly_income` bigint(20) DEFAULT '0',
  `father_special_needs` bigint(20) DEFAULT '0',
  `mother_name` varchar(150) DEFAULT NULL,
  `mother_birth_year` year(4) DEFAULT NULL,
  `mother_education` bigint(20) DEFAULT NULL,
  `mother_employment` bigint(20) DEFAULT NULL,
  `mother_monthly_income` bigint(20) DEFAULT NULL,
  `mother_special_needs` bigint(20) DEFAULT NULL,
  `guardian_name` varchar(150) DEFAULT NULL,
  `guardian_birth_year` year(4) DEFAULT NULL,
  `guardian_education` bigint(20) DEFAULT NULL,
  `guardian_employment` bigint(6) DEFAULT NULL,
  `guardian_monthly_income` bigint(20) DEFAULT NULL,
  `mileage` smallint(6) DEFAULT NULL COMMENT 'Jarak tempat tinggal ke sekolah',
  `traveling_time` smallint(6) DEFAULT NULL COMMENT 'Waktu Tempuh',
  `height` smallint(3) DEFAULT NULL COMMENT 'Tinggi Badan',
  `weight` smallint(3) DEFAULT NULL COMMENT 'Berat Badan',
  `sibling_number` smallint(2) DEFAULT '0' COMMENT 'Jumlah Saudara Kandng',
  `student_status` bigint(20) DEFAULT NULL COMMENT 'Status siswa',
  `end_date` date DEFAULT NULL COMMENT 'Tanggal Keluar',
  `reason` varchar(255) DEFAULT NULL COMMENT 'Diisi jika peserta didik sudah keluar',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `major_id`, `first_choice`, `second_choice`, `registration_number`, `selection_result`, `admission_phase_id`, `photo`, `is_transfer`, `is_prospective_student`, `re_registration`, `is_alumni`, `is_student`, `start_date`, `nim`, `nis`, `nisn`, `nik`, `prev_exam_number`, `paud`, `tk`, `skhun`, `diploma_number`, `hobby`, `ambition`, `full_name`, `gender`, `birth_place`, `birth_date`, `religion`, `special_needs`, `street_address`, `rt`, `rw`, `sub_village`, `village`, `sub_district`, `district`, `postal_code`, `residence`, `transportation`, `phone`, `mobile_phone`, `email`, `sktm`, `kks`, `kps`, `kip`, `kis`, `citizenship`, `country`, `father_name`, `father_birth_year`, `father_education`, `father_employment`, `father_monthly_income`, `father_special_needs`, `mother_name`, `mother_birth_year`, `mother_education`, `mother_employment`, `mother_monthly_income`, `mother_special_needs`, `guardian_name`, `guardian_birth_year`, `guardian_education`, `guardian_employment`, `guardian_monthly_income`, `mileage`, `traveling_time`, `height`, `weight`, `sibling_number`, `student_status`, `end_date`, `reason`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'true', 'false', '2017-08-01', NULL, '238739719018', '389482084092', '3098382038', NULL, NULL, NULL, NULL, NULL, 'mancing', 'mancing', 'kusun', 'M', 'ngawaw', '2017-02-05', 89, 23, 'ngawaw', '8', '1', 'ploso', 'sri guwak', 'pitu', 'nagwaw', '489589', 74, 85, '0450938459879482', '490385098309', 'alupadia@yahoo.com', '3948927349', '83490829308409', '49349294', '349032492', '429349324', 'WNI', 'indonesia', 'kusun', 1990, 52, 19, 68, 23, 'riyani', 1996, 47, 12, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-08-13 15:36:29', '2017-08-13 15:36:29', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '2017-08-01', NULL, '3309', '88973920280', '32089280280', NULL, NULL, NULL, NULL, NULL, 'bola', 'pemain', 'yushua', 'M', 'Ngawi', '2017-01-01', 91, 23, 'jl podang', '3', '2', 'dumpleng', 'ngaw', 'ngaw', 'ngawi', '44582', 74, 81, '093028020', '902832098309', 'yoshua@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 14:49:27', '2017-09-01 14:49:27', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(3, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '2017-09-01', NULL, '979073907', '787972578', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'yoga', 'M', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'yoga@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:03:06', '2017-09-01 15:03:06', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(4, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '2017-09-01', NULL, '33367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'dian', 'F', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'dian@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:04:08', '2017-09-01 15:04:08', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(5, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '2017-09-01', NULL, '4467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'dani', 'M', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'dani@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:05:01', '2017-09-01 15:05:01', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(6, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '0000-00-00', NULL, '7768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'numes', 'M', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'numes@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:17:30', '2017-09-01 15:17:30', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(7, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '0000-00-00', NULL, '7765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'dinda', 'M', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'dinda@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:18:11', '2017-09-01 15:18:11', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(8, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '0000-00-00', NULL, '8876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'laala', 'F', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'lala@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:18:52', '2017-09-01 15:18:52', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(9, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '0000-00-00', NULL, '9980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'gusti', 'F', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'gusti@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:19:34', '2017-09-01 15:19:34', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(10, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '0000-00-00', NULL, '7754', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'nawang', 'F', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'nawang@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:20:19', '2017-09-01 15:20:19', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(11, NULL, 0, 0, NULL, NULL, 0, NULL, 'false', 'false', NULL, 'false', 'true', '0000-00-00', NULL, '2234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'nina', 'F', '', '0000-00-00', 89, 23, '', '', '', '', '', '', '', '', 74, 80, '', '', 'nina@gmail.com', '', '', '', '', '', 'WNI', '', '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 23, '', 0000, 42, 10, 68, 0, 0, 0, 0, 0, 1, '0000-00-00', '', '2017-09-01 15:21:02', '2017-09-01 15:21:02', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(12, NULL, 1, 2, '2017000001', NULL, 1, NULL, 'false', 'true', 'true', 'false', 'false', NULL, NULL, NULL, NULL, '796969890', NULL, NULL, NULL, NULL, NULL, '', '', 'yanu', 'M', 'Ngawi', '2017-09-13', 89, 23, 'jl mangga', '', '', '', '', '', 'ngawi', '', 0, 0, '', '0865162571', NULL, '', '', '', '', '', 'WNI', '', 'musto', 1987, 0, 0, 0, 23, 'liem', 0000, 0, 0, 0, 23, '', 0000, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2017-09-01 16:10:46', '2017-09-01 16:39:32', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(13, NULL, 1, 2, '2017000002', NULL, 1, '5bc4f0e6edbb96e798a61ca4bfbceaa9.jpg', 'false', 'true', 'true', 'false', 'false', NULL, NULL, NULL, NULL, '89270027', NULL, NULL, NULL, NULL, NULL, '', '', 'dila', 'F', 'padang', '2017-09-04', 89, 23, 'jl tikus', '', '', '', '', '', 'ngawi', '', 0, 0, '', '08673286299', NULL, '', '', '', '', '', 'WNI', '', 'jim', 1988, 0, 0, 0, 23, 'lin', 0000, 0, 0, 0, 23, '', 0000, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2017-09-01 16:27:17', '2017-09-01 16:38:41', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(14, NULL, 2, 1, '2017000003', 'unapproved', 1, NULL, 'false', 'true', 'true', 'false', 'false', NULL, NULL, NULL, NULL, '796969890', NULL, NULL, NULL, NULL, NULL, '', '', 'tika', 'F', 'Ngawi', '2017-09-13', 89, 23, 'jl mangga', '', '', '', '', '', 'ngawi', '', 0, 0, '', '0865162571', NULL, '', '', '', '', '', 'WNI', '', 'musto', 1987, 0, 0, 0, 23, 'liem', 0000, 0, 0, 0, 23, '', 0000, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2017-09-01 16:28:17', '2017-09-01 16:41:31', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(15, NULL, 2, 1, '2017000004', NULL, 1, NULL, 'false', 'true', 'true', 'false', 'false', NULL, NULL, NULL, NULL, '93297327', NULL, NULL, NULL, NULL, NULL, '', '', 'vema', 'F', 'jakarta', '2017-09-03', 90, 23, 'jl kenangan', '', '', '', '', '', 'madiun', '', 0, 0, '', '08326723572', NULL, '', '', '', '', '', 'WNI', '', 'mna', 1966, 0, 0, 0, 23, 'si', 0000, 0, 0, 0, 23, '', 0000, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2017-09-01 16:33:37', '2017-09-01 16:39:46', NULL, NULL, NULL, 1, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'false',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `tag`, `slug`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Berita', 'berita', '2017-07-19 15:10:27', '2017-07-19 15:10:27', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 'Pengumuman', 'pengumuman', '2017-07-19 15:10:27', '2017-07-19 15:10:27', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(3, 'Sekilas Info', 'sekilas-info', '2017-07-19 15:10:27', '2017-07-19 15:10:27', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(4, 'sekilas-info', 'sekilas-info', '2017-08-13 15:28:50', '2017-08-13 15:28:50', NULL, NULL, NULL, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `theme_folder` varchar(255) DEFAULT NULL,
  `theme_author` varchar(255) DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'false',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_folder`, `theme_author`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Cosmo', 'cosmo', 'Anton Sofyan', 'true', '2017-07-19 15:10:27', '2017-08-13 16:02:33', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(2, 'Flatly', 'flatly', 'Anton Sofyan', 'false', '2017-07-19 15:10:27', '2017-08-13 16:02:14', NULL, NULL, NULL, 1, NULL, NULL, 'false'),
(3, 'Journal', 'journal', 'Anton Sofyan', 'false', '2017-07-19 15:10:27', '2017-08-13 16:02:33', NULL, NULL, NULL, 1, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_full_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_url` varchar(100) DEFAULT NULL,
  `biography` text,
  `user_registered` datetime DEFAULT NULL,
  `user_group_id` bigint(20) NOT NULL DEFAULT '0',
  `user_type` enum('super_user','administrator','employee','student') NOT NULL DEFAULT 'administrator',
  `profile_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'student_id OR employee_id',
  `forgot_password_key` varchar(100) DEFAULT NULL,
  `forgot_password_request_date` date DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'true',
  `is_logged_in` enum('true','false') DEFAULT 'false',
  `last_logged_in` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password`, `user_full_name`, `user_email`, `user_url`, `biography`, `user_registered`, `user_group_id`, `user_type`, `profile_id`, `forgot_password_key`, `forgot_password_request_date`, `is_active`, `is_logged_in`, `last_logged_in`, `ip_address`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'admin', '$2y$10$HizNC2R9JWxnv6Q/R/70LuRj7gd/1xxdcZi/ihvsJJD0obI7PqF9i', 'admin', 'admin@gmail.com', NULL, NULL, '2017-08-13 21:57:32', 0, 'super_user', NULL, NULL, NULL, 'true', 'true', '2017-09-02 09:46:49', '61.5.54.248', '2017-08-13 14:57:32', '2017-09-02 02:46:49', NULL, NULL, NULL, NULL, NULL, NULL, 'false'),
(2, 'teacher', '$2y$10$BSft7y8lFoFOmZLJySVR9O37QVhY/cvjyPjy0PawmfnUPGYWn9GDK', 'teacher', 'teacher@gmail.com', 'http://sma.tulisanunik.com/employees', '', NULL, 1, 'administrator', NULL, NULL, NULL, 'true', 'false', NULL, NULL, '2017-09-01 22:54:48', '2017-09-01 22:56:58', NULL, NULL, 1, 1, NULL, NULL, 'false'),
(3, 'siswa', '$2y$10$aKIhWWS2HpYnazMuWYSc6eufgEUNVlfI6nwcySZ7.FBDXv9ELGvKS', 'siswa', 'siswa@gmail.com', 'http://sma.tulisanunik.com/students', '', NULL, 2, 'administrator', NULL, NULL, NULL, 'true', 'false', NULL, NULL, '2017-09-01 22:55:47', '2017-09-01 22:57:46', NULL, NULL, 1, 1, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_groups`
--

INSERT INTO `user_groups` (`id`, `group`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'guru', '2017-08-13 15:40:01', '2017-08-13 15:40:01', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, 'siswa', '2017-08-13 16:11:34', '2017-08-13 16:11:34', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_privileges`
--

CREATE TABLE `user_privileges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `restored_by` bigint(20) DEFAULT NULL,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_privileges`
--

INSERT INTO `user_privileges` (`id`, `user_group_id`, `module_id`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 1, 5, '2017-08-13 16:10:30', '2017-08-13 16:10:30', NULL, NULL, 1, NULL, NULL, NULL, 'false'),
(2, 2, 10, '2017-08-13 16:12:09', '2017-08-13 16:12:09', NULL, NULL, 1, NULL, NULL, NULL, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_captcha`
--

CREATE TABLE `_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `_captcha`
--

INSERT INTO `_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(18, 1504279940, '180.247.212.230', '50721'),
(19, 1504279948, '180.247.212.230', '57021'),
(20, 1504280425, '180.247.212.230', '49857'),
(21, 1504281456, '180.247.212.230', '41326'),
(22, 1504281539, '180.247.212.230', '69043'),
(23, 1504281787, '180.247.212.230', '87614'),
(24, 1504281976, '180.247.212.230', '04781'),
(25, 1504282012, '180.247.212.230', '56342'),
(26, 1504282112, '180.247.212.230', '19654'),
(27, 1504283075, '180.247.212.230', '61549'),
(28, 1504283256, '180.247.212.230', '32958'),
(29, 1504283259, '180.247.212.230', '62749'),
(30, 1504283319, '180.247.212.230', '09647'),
(31, 1504283333, '180.247.212.230', '59437'),
(32, 1504283425, '180.247.212.230', '79841'),
(33, 1504283456, '180.247.212.230', '24315'),
(34, 1504283502, '180.247.212.230', '85621'),
(35, 1504283634, '180.247.212.230', '91460'),
(36, 1504311906, '64.233.173.20', '79135'),
(37, 1504442793, '64.233.173.18', '06218'),
(38, 1504478523, '54.173.35.129', '87413');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_sessions`
--

CREATE TABLE `_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `_sessions`
--

INSERT INTO `_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('utesrk2ai5sgsraq29rum6lmqnd53m7d', '180.247.212.230', 1504307059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343330363932363b746f6b656e7c733a33323a223035623637663036386465623534373933333863636337326333643436646364223b637372665f746f6b656e7c733a33323a223035623637663036386465623534373933333863636337326333643436646364223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b69647c733a313a2231223b757365725f6e616d657c733a353a2261646d696e223b757365725f66756c6c5f6e616d657c733a353a2261646d696e223b757365725f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365725f75726c7c4e3b757365725f726567697374657265647c733a31393a22323031372d30382d31332032313a35373a3332223b757365725f67726f75705f69647c733a313a2230223b757365725f747970657c733a31303a2273757065725f75736572223b70726f66696c655f69647c4e3b69735f6c6f676765645f696e7c623a313b757365725f70726976696c656765737c613a31343a7b693a303b733a393a2264617368626f617264223b693a313b733a31353a226368616e67655f70617373776f7264223b693a323b733a31313a226d61696e74656e616e6365223b693a333b733a333a2261636c223b693a343b733a393a2261646d697373696f6e223b693a353b733a31303a22617070656172616e6365223b693a363b733a343a22626c6f67223b693a373b733a393a22656d706c6f79656573223b693a383b733a353a226d65646961223b693a393b733a373a22706c7567696e73223b693a31303b733a393a227265666572656e6365223b693a31313b733a383a2273657474696e6773223b693a31323b733a383a2273747564656e7473223b693a31333b733a373a2270726f66696c65223b7d7468756d626e61696c5f73697a655f6865696768747c733a333a22313030223b7468756d626e61696c5f73697a655f77696474687c733a333a22313530223b6d656469756d5f73697a655f6865696768747c733a333a22333038223b6d656469756d5f73697a655f77696474687c733a333a22343630223b6c617267655f73697a655f6865696768747c733a333a22363030223b6c617267655f73697a655f77696474687c733a333a22383030223b616c62756d5f636f7665725f6865696768747c733a333a22313530223b616c62756d5f636f7665725f77696474687c733a333a22343030223b62616e6e65725f6865696768747c733a323a223831223b62616e6e65725f77696474687c733a333a22323435223b696d6167655f736c696465725f6865696768747c733a333a22363030223b696d6167655f736c696465725f77696474687c733a343a2231303030223b656d706c6f7965655f70686f746f5f6865696768747c733a333a22323236223b656d706c6f7965655f70686f746f5f77696474687c733a333a22313531223b686561646d61737465725f70686f746f5f6865696768747c733a333a22333434223b686561646d61737465725f70686f746f5f77696474687c733a333a22323532223b6865616465725f6865696768747c733a323a223530223b6865616465725f77696474687c733a333a22313030223b6c6f676f5f6865696768747c733a333a22313230223b6c6f676f5f77696474687c733a333a22313230223b64656661756c745f706f73745f63617465676f72797c733a313a2231223b64656661756c745f706f73745f7374617475737c733a373a227075626c697368223b64656661756c745f706f73745f7669736962696c6974797c733a363a227075626c6963223b64656661756c745f706f73745f64697363757373696f6e7c733a343a226f70656e223b706f73745f696d6167655f7468756d626e61696c5f6865696768747c733a333a22313030223b706f73745f696d6167655f7468756d626e61696c5f77696474687c733a333a22313530223b706f73745f696d6167655f6d656469756d5f6865696768747c733a333a22323530223b706f73745f696d6167655f6d656469756d5f77696474687c733a333a22343030223b706f73745f696d6167655f6c617267655f6865696768747c733a333a22343530223b706f73745f696d6167655f6c617267655f77696474687c733a333a22383430223b636f6d6d656e745f6d6f6465726174696f6e7c733a353a2266616c7365223b6d61696c5f7365727665725f70726f746f636f6c7c733a343a22736d7074223b6d61696c5f7365727665725f686f73746e616d657c733a32303a2273736c3a2f2f736d74702e676d61696c2e636f6d223b6d61696c5f7365727665725f757365726e616d657c733a353a2261646d696e223b6d61696c5f7365727665725f70617373776f72647c733a353a2261646d696e223b6d61696c5f7365727665725f706f72747c733a333a22343635223b6f776e6572736869705f7374617475737c733a313a2231223b6465637265655f6f7065726174696e675f7065726d69747c733a313a222d223b6465637265655f6f7065726174696e675f7065726d69745f646174657c733a31303a22323031372d30372d3139223b),
('bjr56bibmrn98hnueupsm776ntol6ni2', '64.233.173.19', 1504311905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343331313835373b746f6b656e7c733a33323a223362613538373431633164343561323937663932396562643062656139316465223b637372665f746f6b656e7c733a33323a223362613538373431633164343561323937663932396562643062656139316465223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('cejviqd5ev3nbutvpa4jhgq81cmrv5pp', '64.233.173.18', 1504321730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343332313531393b746f6b656e7c733a33323a223431303661393236643038666630646530613636303239303435393234643730223b637372665f746f6b656e7c733a33323a223431303661393236643038666630646530613636303239303435393234643730223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('evuvek28un4q7bl9pbvk06v14d2ajudk', '61.5.54.248', 1504321654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343332313536303b746f6b656e7c733a33323a223666646135373366346433356664323461333836643364636464623833306162223b637372665f746f6b656e7c733a33323a223666646135373366346433356664323461333836643364636464623833306162223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('kjmu28d007du2jea1apdhiot1hg2ttq7', '64.233.173.18', 1504321692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343332313632373b746f6b656e7c733a33323a226333623832626465666534303262393138366539373737343139303965363861223b637372665f746f6b656e7c733a33323a226333623832626465666534303262393138366539373737343139303965363861223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('d1u1l8kp94bi1i0756hfadiphfbf24ip', '61.5.54.248', 1504322029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343332313833333b746f6b656e7c733a33323a223833373637613961353531306333393935633937333039626535663366393562223b637372665f746f6b656e7c733a33323a223833373637613961353531306333393935633937333039626535663366393562223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b69647c733a313a2231223b757365725f6e616d657c733a353a2261646d696e223b757365725f66756c6c5f6e616d657c733a353a2261646d696e223b757365725f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365725f75726c7c4e3b757365725f726567697374657265647c733a31393a22323031372d30382d31332032313a35373a3332223b757365725f67726f75705f69647c733a313a2230223b757365725f747970657c733a31303a2273757065725f75736572223b70726f66696c655f69647c4e3b69735f6c6f676765645f696e7c623a313b757365725f70726976696c656765737c613a31343a7b693a303b733a393a2264617368626f617264223b693a313b733a31353a226368616e67655f70617373776f7264223b693a323b733a31313a226d61696e74656e616e6365223b693a333b733a333a2261636c223b693a343b733a393a2261646d697373696f6e223b693a353b733a31303a22617070656172616e6365223b693a363b733a343a22626c6f67223b693a373b733a393a22656d706c6f79656573223b693a383b733a353a226d65646961223b693a393b733a373a22706c7567696e73223b693a31303b733a393a227265666572656e6365223b693a31313b733a383a2273657474696e6773223b693a31323b733a383a2273747564656e7473223b693a31333b733a373a2270726f66696c65223b7d7468756d626e61696c5f73697a655f6865696768747c733a333a22313030223b7468756d626e61696c5f73697a655f77696474687c733a333a22313530223b6d656469756d5f73697a655f6865696768747c733a333a22333038223b6d656469756d5f73697a655f77696474687c733a333a22343630223b6c617267655f73697a655f6865696768747c733a333a22363030223b6c617267655f73697a655f77696474687c733a333a22383030223b616c62756d5f636f7665725f6865696768747c733a333a22313530223b616c62756d5f636f7665725f77696474687c733a333a22343030223b62616e6e65725f6865696768747c733a323a223831223b62616e6e65725f77696474687c733a333a22323435223b696d6167655f736c696465725f6865696768747c733a333a22363030223b696d6167655f736c696465725f77696474687c733a343a2231303030223b656d706c6f7965655f70686f746f5f6865696768747c733a333a22323236223b656d706c6f7965655f70686f746f5f77696474687c733a333a22313531223b686561646d61737465725f70686f746f5f6865696768747c733a333a22333434223b686561646d61737465725f70686f746f5f77696474687c733a333a22323532223b6865616465725f6865696768747c733a323a223530223b6865616465725f77696474687c733a333a22313030223b6c6f676f5f6865696768747c733a333a22313230223b6c6f676f5f77696474687c733a333a22313230223b64656661756c745f706f73745f63617465676f72797c733a313a2231223b64656661756c745f706f73745f7374617475737c733a373a227075626c697368223b64656661756c745f706f73745f7669736962696c6974797c733a363a227075626c6963223b64656661756c745f706f73745f64697363757373696f6e7c733a343a226f70656e223b706f73745f696d6167655f7468756d626e61696c5f6865696768747c733a333a22313030223b706f73745f696d6167655f7468756d626e61696c5f77696474687c733a333a22313530223b706f73745f696d6167655f6d656469756d5f6865696768747c733a333a22323530223b706f73745f696d6167655f6d656469756d5f77696474687c733a333a22343030223b706f73745f696d6167655f6c617267655f6865696768747c733a333a22343530223b706f73745f696d6167655f6c617267655f77696474687c733a333a22383430223b636f6d6d656e745f6d6f6465726174696f6e7c733a353a2266616c7365223b6d61696c5f7365727665725f70726f746f636f6c7c733a343a22736d7074223b6d61696c5f7365727665725f686f73746e616d657c733a32303a2273736c3a2f2f736d74702e676d61696c2e636f6d223b6d61696c5f7365727665725f757365726e616d657c733a353a2261646d696e223b6d61696c5f7365727665725f70617373776f72647c733a353a2261646d696e223b6d61696c5f7365727665725f706f72747c733a333a22343635223b6f776e6572736869705f7374617475737c733a313a2231223b6465637265655f6f7065726174696e675f7065726d69747c733a313a222d223b6465637265655f6f7065726174696e675f7065726d69745f646174657c733a31303a22323031372d30372d3139223b),
('ag0r4io25j405ofnpe6r4nacjqj8d4ai', '64.233.173.20', 1504356106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343335363130363b746f6b656e7c733a33323a223139663766373762323737343635303636363763363038363765316436613534223b637372665f746f6b656e7c733a33323a223139663766373762323737343635303636363763363038363765316436613534223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('mpncnmdn34k8e6iu0qf89p23de8pm1j4', '114.125.120.101', 1504362336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343336323331363b746f6b656e7c733a33323a223432663233306334343833353963353738333263306366633136363465303734223b637372665f746f6b656e7c733a33323a223432663233306334343833353963353738333263306366633136363465303734223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b);
INSERT INTO `_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('491uppo76eu859v26drdugocvs6ivmuf', '114.125.122.242', 1504370332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343337303333323b746f6b656e7c733a33323a223732323464333130623830626534323838313337316361306462366662363538223b637372665f746f6b656e7c733a33323a223732323464333130623830626534323838313337316361306462366662363538223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('9avvt90fr74gokd8tnhdpf91cck0cc38', '64.233.173.20', 1504401918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343430313931383b746f6b656e7c733a33323a226533333934666132313361616265323764383734353566373637663561383766223b637372665f746f6b656e7c733a33323a226533333934666132313361616265323764383734353566373637663561383766223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('gev2ssmldt1f0o8a2mbmqlrfbobsv3gh', '64.233.173.18', 1504442792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343434323739323b746f6b656e7c733a33323a223764646666313333373066646131373566393263376364616537623566303530223b637372665f746f6b656e7c733a33323a223764646666313333373066646131373566393263376364616537623566303530223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('fb1lg5k37dh5uucvlpc37qlc9mtgk8ek', '54.173.35.129', 1504477468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343437373436383b746f6b656e7c733a33323a223732376535323138373161623936636239303366353937393236386530363038223b637372665f746f6b656e7c733a33323a223732376535323138373161623936636239303366353937393236386530363038223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('ut1bjp3ko7cbff83ed446mne50middm4', '54.173.35.129', 1504478523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343437383530373b746f6b656e7c733a33323a226661303666336165333639666166323462353038323763306335663762396439223b637372665f746f6b656e7c733a33323a226661303666336165333639666166323462353038323763306335663762396439223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('mrroriq344am167oionpvadab5o86f3n', '54.173.35.129', 1504478760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343437383736303b),
('kpemsaggtfv66qicvq6lh890b411lh73', '54.173.35.129', 1504479275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343437393236333b746f6b656e7c733a33323a226136306435303961353431313033336366383634653663663633613862633636223b637372665f746f6b656e7c733a33323a226136306435303961353431313033336366383634653663663633613862633636223b736974655f6d61696e74656e616e63657c733a343a2274727565223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323031372d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a3130363a22434d532053656b6f6c61686b75206164616c616820436f6e74656e74204d616e6167656d656e742053797374656d2064616e2050504442204f6e6c696e652067726174697320756e74756b20534420534d502f5365646572616a617420534d412f5365646572616a6174223b6d6574615f6b6579776f7264737c733a3338313a22434d532c20576562736974652053656b6f6c6168204772617469732c2043617261204d656d6275617420576562736974652053656b6f6c61682c206d656d62756174207765622073656b6f6c61682c20636f6e746f6820776562736974652073656b6f6c61682c20666974757220776562736974652073656b6f6c61682c2053656b6f6c61682c20576562736974652c20496e7465726e65742c53697475732c20434d532053656b6f6c61682c205765622053656b6f6c61682c20576562736974652053656b6f6c6168204772617469732c20576562736974652053656b6f6c61682c2041706c696b6173692053656b6f6c61682c2050504442204f6e6c696e652c20505342204f6e6c696e652c20505342204f6e6c696e65204772617469732c2050656e6572696d61616e2053697377612042617275204f6e6c696e652c205261706f7274204f6e6c696e652c204b7572696b756c756d20323031332c2053442c20534d502c20534d412c20416c697961682c204d54732c20534d4b223b676f6f676c655f6d61705f6170695f6b65797c733a31303a2231323334353637383930223b66617669636f6e7c733a33363a2266643236356638386337643132323161386265306533626539626335383334642e6a7067223b6865616465727c733a33363a2230313935323165363462313738363338636564326631663330393638653861612e706e67223b66696c655f616c6c6f7765645f74797065737c733a31393a226a70672c206a7065672c20706e672c20676966223b75706c6f61645f6d61785f66696c6573697a657c733a313a2230223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22313530223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a31323a2266616365626f6f6b2e636f6d223b747769747465727c733a33313a2268747470733a2f2f747769747465722e636f6d2f616e746f6e736f6679616e223b676f6f676c655f706c75737c733a32333a22676f6f676c652e636f6d2f2b416e746f6e536f6679616e223b6c696e6b65645f696e7c733a35303a2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f616e746f6e2d736f6679616e2d31343238393337612f223b796f75747562657c733a313a222d223b696e7374616772616d7c733a33393a2268747470733a2f2f7777772e696e7374616772616d2e636f6d2f616e746f6e5f736f6679616e2f223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31383a22534d41204e65676572692031204e47415749223b686561646d61737465727c733a31313a224472732053756b616d6469223b686561646d61737465725f70686f746f7c733a33363a2233386166363534353830613139363537643763636539373130663065353164342e6a7067223b7363686f6f6c5f6c6576656c7c733a313a2233223b7363686f6f6c5f7374617475737c733a313a2231223b7461676c696e657c733a34323a22546572616b72656469746173692041207c7c7c205175616c696669656420447265616d205363686f6f6c223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a353a22426572616e223b76696c6c6167657c733a353a22426572616e223b7375625f64697374726963747c733a353a224e47415749223b64697374726963747c733a353a224e67617769223b706f7374616c5f636f64657c733a353a223435353631223b7374726565745f616464726573737c733a32333a224a4c20412e2059414e49204e6f2e203435204e47415749223b6c617469747564657c733a31303a2231323334353637383930223b6c6f6e6769747564657c733a31303a2231323334353637383930223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32333a2261646d696e40736d616e316e676177692e7363682e6964223b776562736974657c733a32383a22687474703a2f2f7777772e736d616e316e676177692e7363682e6964223b6c6f676f7c733a33363a2265346239343838316635393330323839636661353539316161616364636137322e6a7067223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303138223b61646d697373696f6e5f73746172745f646174657c733a31303a22323031372d30382d3237223b61646d697373696f6e5f656e645f646174657c733a31303a22323031372d30392d3330223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323031372d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323031372d31322d3331223b61646d697373696f6e5f70686173655f69647c733a313a2231223b61646d697373696f6e5f70686173657c733a373a2250657274616d61223b7468656d657c733a353a22636f736d6f223b),
('65gbu1rthok35i4hmngevq4kf6ei087o', '54.173.35.129', 1504479280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343437393238303b);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_year` (`academic_year`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_achievements` (`student_id`) USING BTREE;

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `album_title` (`album_title`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`question_id`,`answer`),
  ADD KEY `index_answers` (`question_id`) USING BTREE;

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `class_groups`
--
ALTER TABLE `class_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`class`,`sub_class`,`major_id`),
  ADD KEY `index_class_groups` (`major_id`) USING BTREE;

--
-- Indexes for table `class_group_settings`
--
ALTER TABLE `class_group_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`academic_year_id`,`student_id`),
  ADD KEY `index_class_group_settings` (`academic_year_id`,`class_group_id`,`student_id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments` (`comment_post_id`) USING BTREE;

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `npwp` (`npwp`),
  ADD UNIQUE KEY `niy` (`niy`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `index_employees` (`spouse_employment`,`employment_status`,`employment_type`,`institutions_lifter`,`rank`,`salary_source`,`skills_laboratory`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_files` (`file_category_id`) USING BTREE;

--
-- Indexes for table `file_categories`
--
ALTER TABLE `file_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `major` (`major`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_name` (`module_name`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`group`,`option`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_photos` (`photo_album_id`) USING BTREE;

--
-- Indexes for table `pollings`
--
ALTER TABLE `pollings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_pollings` (`answer_id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_posts` (`post_author`) USING BTREE;

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`category`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`quote`,`quote_by`);

--
-- Indexes for table `registration_phases`
--
ALTER TABLE `registration_phases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`year`,`phase`);

--
-- Indexes for table `registration_quotas`
--
ALTER TABLE `registration_quotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`year`,`major_id`,`quota`),
  ADD KEY `index_registration_quotas` (`major_id`) USING BTREE;

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_scholarships` (`student_id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`group`,`variable`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `index_students` (`registration_number`,`full_name`,`first_choice`,`second_choice`,`major_id`,`admission_phase_id`) USING BTREE;

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `theme_name` (`theme_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_url` (`user_url`),
  ADD KEY `index_users` (`user_group_id`,`profile_id`) USING BTREE;

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group` (`group`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`user_group_id`,`module_id`),
  ADD KEY `index_user_privileges` (`user_group_id`,`module_id`) USING BTREE;

--
-- Indexes for table `_captcha`
--
ALTER TABLE `_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `_sessions`
--
ALTER TABLE `_sessions`
  ADD KEY `ci_sessions_TIMESTAMP` (`timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `class_groups`
--
ALTER TABLE `class_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `class_group_settings`
--
ALTER TABLE `class_group_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `file_categories`
--
ALTER TABLE `file_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pollings`
--
ALTER TABLE `pollings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `registration_phases`
--
ALTER TABLE `registration_phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `registration_quotas`
--
ALTER TABLE `registration_quotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `_captcha`
--
ALTER TABLE `_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
