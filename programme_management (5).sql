-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2026 at 02:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programme_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `collaborators`
--

CREATE TABLE `collaborators` (
  `coll_id` int(11) NOT NULL,
  `coll_organisation_name` varchar(150) DEFAULT NULL,
  `coll_organisation_type` varchar(100) DEFAULT NULL,
  `coll_contact_person` varchar(100) DEFAULT NULL,
  `coll_phone` varchar(20) DEFAULT NULL,
  `coll_email` varchar(100) DEFAULT NULL,
  `coll_address` text DEFAULT NULL,
  `coll_date_created` datetime DEFAULT NULL,
  `com_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collaborators`
--

INSERT INTO `collaborators` (`coll_id`, `coll_organisation_name`, `coll_organisation_type`, `coll_contact_person`, `coll_phone`, `coll_email`, `coll_address`, `coll_date_created`, `com_id`) VALUES
(1, 'Green Earth NGO', 'NGO', 'Ahmad Zaki', '0123456789', 'contact@greenearth.org', 'No 12, Jalan Kampung Tanah Merah', '2025-12-24 16:38:36', 1),
(6, 'USM', 'Universiti', 'Hakim', '78945', 'hakim.usm@gmail', 'Pulau Pinang', '2026-01-07 10:18:17', 11),
(7, 'KBS Kedah', 'Kerajaan', 'Hasrul', '4646314', 'hasul@kbs.com', 'Alor Setar', '2026-01-07 18:20:46', 20),
(8, 'JKM', 'Kerajaan', 'Jamal', '6876876', 'jamal@jkm.com', 'Alor Setar', '2026-01-07 18:21:39', 20),
(9, 'UUM', 'Universiti', 'Sofiya', '464484646', 'sofiya@uum.com', 'Sintok', '2026-01-07 18:22:35', 20),
(10, 'Pusat Tuisyen Ahmad', 'Institute', 'Natasha', '644654654', 'tasha@mail', 'Jitra', '2026-01-07 18:28:26', 20),
(11, 'UNIMAS', 'Universiti', 'Khairul', '0126465', 'harith@gmail', 'Malaysia', '2026-01-15 06:48:55', 11);

-- --------------------------------------------------------

--
-- Table structure for table `collaboratorsproposal`
--

CREATE TABLE `collaboratorsproposal` (
  `coll_proposal_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `coll_id` int(11) NOT NULL,
  `coll_quantity` int(11) DEFAULT NULL,
  `coll_role` varchar(255) NOT NULL,
  `coll_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collaboratorsproposal`
--

INSERT INTO `collaboratorsproposal` (`coll_proposal_id`, `proposal_id`, `coll_id`, `coll_quantity`, `coll_role`, `coll_amount`) VALUES
(1, 44, 6, 1, 'Collaborator', NULL),
(2, 48, 7, 1, 'Collaborator', NULL),
(3, 48, 6, 1, 'Collaborator', NULL),
(4, 50, 1, 1, 'Collaborator', NULL),
(5, 50, 6, 1, 'Collaborator', NULL),
(6, 50, 9, 1, 'Collaborator', NULL),
(7, 52, 10, 1, 'Collaborator', NULL),
(8, 54, 6, 1, 'Collaborator', NULL),
(9, 55, 9, 1, 'Collaborator', NULL),
(10, 56, 6, 1, 'Collaborator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `com_id` int(11) NOT NULL,
  `com_name` varchar(100) DEFAULT NULL,
  `com_gender` enum('Male','Female') NOT NULL,
  `com_phone` varchar(20) DEFAULT NULL,
  `com_role` enum('Admin','Village Head','Exco') DEFAULT NULL,
  `com_position` varchar(50) DEFAULT NULL,
  `com_email` varchar(100) DEFAULT NULL,
  `com_dob` date DEFAULT NULL,
  `com_address` text DEFAULT NULL,
  `com_username` varchar(50) DEFAULT NULL,
  `com_password` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `com_status` enum('Active','Inactive') DEFAULT NULL,
  `com_passwordstatus` enum('Old','New') DEFAULT NULL,
  `com_date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`com_id`, `com_name`, `com_gender`, `com_phone`, `com_role`, `com_position`, `com_email`, `com_dob`, `com_address`, `com_username`, `com_password`, `creator_id`, `com_status`, `com_passwordstatus`, `com_date_created`) VALUES
(1, 'admin', 'Male', '0138405422', 'Admin', 'Admin', 'admin@gmail.com', '1996-01-01', 'no 80a, jitra, kedah', 'admin', '$2y$10$av4ZvMJCOpKb.ykgEKW4DuQ3jfCSQ9Hw5KBJbizU/p3yl.K0CYAgC', 1, 'Active', 'New', '2010-12-01 01:29:59'),
(11, 'puad', 'Male', '0178267413', 'Village Head', 'Village Head', 'haz@gmail.com', '1967-03-02', 'no 80b, Jitra, Kedah', 'puad', '$2y$10$9gPwwviNIMnqiLdmeYA1fugzKQ1zFPK/y7q7MScEZX3H2wEBXKdti', 11, 'Active', 'New', '2025-12-17 19:33:09'),
(17, 'Janice', 'Female', '5555', 'Exco', 'Pendidikan', 'janice@mail.com', '2003-01-01', 'No 8 Kampung Tanah Merah', 'janice', '$2y$10$f4uZ6O3Mt4l6tfGrFwZX5OI/gPQnizpIAeYZ7287NWhDzmNAsrup.', 12, 'Active', 'New', '2026-01-07 09:48:16'),
(19, 'Izza', 'Female', '41123', 'Exco', 'Keusahawanan', 'izza@mail', '2003-05-02', 'No 9 Kampung Tanah Merah', 'izza', '$2y$10$3DuoZMErnBP14tF7yYXV0Oh7A1wHZXkXgbId8si83O8/5YI5umntW', 11, 'Active', 'New', '2026-01-07 17:02:16'),
(20, 'Najmi Alif', 'Male', '1946', 'Exco', 'Kebersihan & Kesihatan', 'najmi@mail.com', '2003-05-01', 'No 14 Kampung Tanah Merah', 'najmi', '$2y$10$.YLy.QGDH6ift/Ou50noL..Ar6FekdsvMQ8DjumM8dfGuKZ4dCHPK', 11, 'Active', 'New', '2026-01-07 17:03:39'),
(21, 'lexuan', 'Male', '1646', 'Exco', 'Keceriaan', 'lexuan@mail', '2003-06-02', 'No 22 Kampung Tanah Merah', 'lexuan', '$2y$10$KQrnZmcR//6wmm7jOGgmL.iR3r2BBo.x1COGwREs9dJ5m2CmHoMjC', 11, 'Active', 'New', '2026-01-07 17:05:29'),
(22, 'Alif', 'Male', '7899', 'Exco', 'Kebajikan', 'alif@gmail', '2006-01-02', 'No 3 Kampung Tanah Merah', 'alif', '$2y$10$nnmmPsFsOL7B1zBuzyhhxev4db5Bqh2dU5Mia.VK.uyoZ5ZlIpJwe', 11, 'Inactive', 'New', '2026-01-07 17:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `guest_name` varchar(100) DEFAULT NULL,
  `guest_organisation` varchar(150) DEFAULT NULL,
  `guest_org_type` varchar(100) DEFAULT NULL,
  `guest_phone` varchar(20) DEFAULT NULL,
  `guest_email` varchar(100) DEFAULT NULL,
  `guest_username` varchar(50) DEFAULT NULL,
  `guest_address` text DEFAULT NULL,
  `guest_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_name`, `guest_organisation`, `guest_org_type`, `guest_phone`, `guest_email`, `guest_username`, `guest_address`, `guest_password`) VALUES
(1, 'mimi', 'mada', 'plantation', '90909090', 'mimi@gmail.com', 'mada', 'jfnpoqwihefnoqweknfoei', '$2y$10$cG9SOpEgjF4ZuJOKzAgZTOUxkzY1cnnrSSbWszVy8NJmk/eA/JQNO'),
(2, 'Najmi', 'UUM', 'University', '123', 'najmi@gmail', 'najmi', 'Kedah', '$2y$10$QNCpQSp5OYA2VpP18dG2suiE4PBnZtlvlHBCAJKY6w0pHXkDVu0Qm'),
(3, 'qoi', 'SADA', 'air', '34213421', 'sada@gmail.com', 'sada', 'sa', '$2y$10$QLq5LipWWKkCQ3RiFCMS4u9YYfrMgWZ7Qgd1ZARh1bauMh2T/Nhg2'),
(4, 'Hairudin', 'Yayasan Peneraju', 'NGO', '123456', 'din@gmail', 'din', 'Jitra', '$2y$10$MMjNObAXaKnMHCLR47OAXOJx2EVtmLY/zQMCrsG6rgMzQcScwP7Ju');

-- --------------------------------------------------------

--
-- Table structure for table `guest_requests`
--

CREATE TABLE `guest_requests` (
  `request_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `req_name` varchar(255) NOT NULL,
  `req_objectives` text NOT NULL,
  `req_category` varchar(100) DEFAULT NULL,
  `req_venue` varchar(255) DEFAULT NULL,
  `req_date` date DEFAULT NULL,
  `req_time` time DEFAULT NULL,
  `req_est_participants` int(11) DEFAULT NULL,
  `req_est_budget` decimal(12,2) DEFAULT NULL,
  `req_docs` varchar(255) DEFAULT NULL,
  `req_submitted` datetime DEFAULT current_timestamp(),
  `req_remarks` text DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `request_status` enum('Approved','Rejected','Returned','Pending') NOT NULL,
  `status_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_requests`
--

INSERT INTO `guest_requests` (`request_id`, `guest_id`, `req_name`, `req_objectives`, `req_category`, `req_venue`, `req_date`, `req_time`, `req_est_participants`, `req_est_budget`, `req_docs`, `req_submitted`, `req_remarks`, `com_id`, `approved_at`, `request_status`, `status_comment`) VALUES
(19, 1, 'Tuisyen SPM', 'Meningkatkan pendidikan', 'Pendidikan', 'Surau Kampung Tanah Merah', '2026-02-01', '09:00:00', 25, 250.00, NULL, '2026-01-07 10:48:42', NULL, 11, NULL, 'Approved', 'Bernas'),
(20, 1, 'Tuisyen SPM', 'Pendidikan', 'Pendidikan', 'Surau Kampung Tanah Merah', '2026-06-15', '09:00:00', 25, 250.00, NULL, '2026-01-07 16:02:46', NULL, NULL, NULL, 'Pending', ''),
(21, 1, 'Tuisyen SPM', 'Pendidikan', 'Pendidikan', 'Surau Kampung Tanah Merah', '2026-06-16', '09:30:00', 30, 300.00, NULL, '2026-01-07 16:03:24', NULL, 11, NULL, 'Approved', 'diterima'),
(22, 2, 'CSR', 'Kebajikan Masyarakat', 'Kebajikan', 'Surau Kampung Tanah Merah', '2026-04-14', '10:00:00', 50, 300.00, NULL, '2026-01-07 16:07:36', NULL, 11, NULL, 'Approved', 'dsad'),
(23, 2, 'CSR 2.0', 'Kebajikan Masyarakat', 'Kebajikan', 'Surau Kampung Tanah Merah', '2026-07-14', '10:00:00', 60, 500.00, NULL, '2026-01-07 16:08:24', NULL, 11, NULL, 'Approved', 'Bagus'),
(24, 2, 'CSR 3.0', 'Amal kebajikan', 'Kebajikan', 'Surau Kampung Tanah Merah', '2026-11-20', '10:00:00', 50, 700.00, '1767832742_bdbdrb.png', '2026-01-08 01:39:02', NULL, 11, NULL, 'Approved', 'Bagus'),
(25, 4, 'Program Warga Emas', 'Membantu warga-warga emas', 'Kebajikan', 'Kampung Tanah Merah', '2026-04-01', '10:00:00', 25, 1000.00, NULL, '2026-01-08 01:46:00', NULL, 11, NULL, 'Rejected', 'No suitable'),
(26, 4, 'Program Anak Yatim', 'Membantu anak-anak yatim', 'Kebajikan', 'Kampung Tanah Merah', '2026-06-15', '10:00:00', 25, 1000.00, NULL, '2026-01-08 01:46:57', NULL, 11, NULL, 'Approved', 'teruskan');

-- --------------------------------------------------------

--
-- Table structure for table `programme_budget`
--

CREATE TABLE `programme_budget` (
  `budget_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `income_name` varchar(255) NOT NULL,
  `income_amt` decimal(10,2) DEFAULT 0.00,
  `expense_name` varchar(255) NOT NULL,
  `expense_amt` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme_budget`
--

INSERT INTO `programme_budget` (`budget_id`, `proposal_id`, `income_name`, `income_amt`, `expense_name`, `expense_amt`) VALUES
(30, 39, 'Kontra', 100.00, '', 0.00),
(31, 39, '', 0.00, 'Bendera', 100.00),
(34, 40, 'Kontra', 700.00, '', 0.00),
(35, 40, '', 0.00, 'Makanan', 700.00),
(36, 41, 'Kontra', 30.00, '', 0.00),
(37, 41, '', 0.00, 'Plastik sampah', 15.00),
(38, 41, '', 0.00, 'Barang pembersihan', 15.00),
(39, 42, 'Kontra', 50.00, '', 0.00),
(40, 42, '', 0.00, 'Bahan Pelajaran', 50.00),
(41, 44, 'Kontra', 100.00, '', 0.00),
(42, 44, '', 0.00, 'Upad', 100.00),
(43, 46, 'Kontra', 100.00, '', 0.00),
(44, 46, '', 0.00, 'Makanan', 100.00),
(45, 47, 'Kontra', 100.00, '', 0.00),
(46, 47, '', 0.00, 'Upah', 100.00),
(47, 48, 'Kontra', 500.00, '', 0.00),
(48, 48, 'Tajaan ', 1000.00, '', 0.00),
(49, 48, 'Yuran', 500.00, '', 0.00),
(50, 48, '', 0.00, 'Piala', 700.00),
(51, 48, '', 0.00, 'Pingat', 300.00),
(52, 48, '', 0.00, 'Hamper', 200.00),
(53, 48, '', 0.00, 'Makanan', 100.00),
(54, 48, '', 0.00, 'Sijil', 70.00),
(55, 49, 'Kontra', 100.00, '', 0.00),
(56, 49, '', 0.00, 'Makanan', 100.00),
(57, 50, 'Kontra', 500.00, '', 0.00),
(58, 50, 'Tajaan', 1000.00, '', 0.00),
(59, 50, 'Penyewaan Tapak', 500.00, '', 0.00),
(60, 50, '', 0.00, 'Sewa peralatan', 700.00),
(61, 50, '', 0.00, 'Upah penceramah', 300.00),
(62, 50, '', 0.00, 'Lain-lain', 500.00),
(63, 51, 'Kontra', 40.00, '', 0.00),
(64, 51, '', 0.00, 'Bahan Cetakan', 40.00),
(65, 52, 'Kontra', 500.00, '', 0.00),
(66, 52, '', 0.00, 'Bahan Cetakan', 100.00),
(67, 52, '', 0.00, 'Makanan', 400.00),
(68, 53, 'Kontra', 300.00, '', 0.00),
(69, 53, 'Yuran', 200.00, '', 0.00),
(70, 53, '', 0.00, 'Upah Penceramah', 300.00),
(71, 53, '', 0.00, 'Makanan', 150.00),
(72, 54, 'Kontra', 300.00, '', 0.00),
(73, 54, '', 0.00, 'Barang hias', 100.00),
(74, 54, '', 0.00, 'Peralatan', 100.00),
(75, 54, '', 0.00, 'Lain-lain', 100.00),
(76, 55, 'Kontra', 100.00, '', 0.00),
(77, 55, '', 0.00, 'Bendera', 100.00),
(78, 56, 'Kontra', 100.00, '', 0.00),
(79, 56, '', 0.00, 'Plastik sampah', 100.00),
(80, 57, 'Kontra', 100.00, '', 0.00),
(81, 57, '', 0.00, 'Plastik sampah', 100.00),
(82, 59, 'Kontra', 100.00, '', 0.00),
(83, 59, '', 0.00, 'Plastik sampah', 100.00),
(84, 60, 'Kontra', 100.00, '', 0.00),
(85, 60, '', 0.00, 'Plastik sampah', 100.00),
(86, 61, 'Kontra', 100.00, '', 0.00),
(87, 61, '', 0.00, 'Plastik sampah', 100.00),
(88, 62, 'Kontra', 100.00, '', 0.00),
(89, 62, '', 0.00, 'Plastik sampah', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `programme_budget_actual`
--

CREATE TABLE `programme_budget_actual` (
  `actualbudget_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `actualincome_name` varchar(255) NOT NULL,
  `actualincome_amt` decimal(10,2) NOT NULL,
  `actualexpense_name` varchar(255) NOT NULL,
  `actualexpense_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme_budget_actual`
--

INSERT INTO `programme_budget_actual` (`actualbudget_id`, `report_id`, `actualincome_name`, `actualincome_amt`, `actualexpense_name`, `actualexpense_amt`) VALUES
(1, 16, 'Kontra', 800.00, 'Makanan', 800.00),
(25, 24, 'Kontra', 30.00, '', 0.00),
(26, 24, '', 0.00, 'Plastik sampah', 10.00),
(27, 24, '', 0.00, 'Barang Pembersihan', 20.00),
(28, 25, 'Kontra', 100.00, '', 0.00),
(29, 25, '', 0.00, 'Bendera', 100.00),
(30, 26, 'Kontra', 100.00, '', 0.00),
(31, 26, '', 0.00, 'Makanan', 100.00),
(32, 27, 'Yuran', 100.00, '', 0.00),
(33, 27, '', 0.00, 'Upah', 100.00),
(34, 28, 'Tajaan', 100.00, '', 0.00),
(35, 28, '', 0.00, 'Lain-lain', 100.00),
(36, 29, 'Tajaan', 100.00, '', 0.00),
(37, 29, '', 0.00, 'Bendera', 100.00),
(38, 30, 'Tajaan', 500.00, '', 0.00),
(39, 30, '', 0.00, 'Barang hias', 300.00),
(40, 31, 'Tajaan', 100.00, '', 0.00),
(41, 31, '', 0.00, 'Upah', 100.00),
(42, 32, 'Kontra', 500.00, '', 0.00),
(43, 32, 'Tajaan', 1000.00, '', 0.00),
(44, 32, 'Penyewaan Tapak', 500.00, '', 0.00),
(45, 32, '', 0.00, 'Sewa peralatan', 500.00),
(46, 32, '', 0.00, 'Upah Penceramah', 250.00),
(47, 32, '', 0.00, 'Lain-lain', 300.00),
(48, 33, 'Tajaan', 100.00, '', 0.00),
(49, 33, 'dwe', 322.00, '', 0.00),
(50, 33, 'wew', 232.00, '', 0.00),
(51, 33, '', 0.00, 'Upah', 100.00),
(52, 35, 'Tajaan', 100.00, '', 0.00),
(53, 35, '', 0.00, 'Upah', 100.00),
(54, 36, 'Tajaan', 100.00, '', 0.00),
(55, 36, '', 0.00, 'Upah', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `programme_proposal`
--

CREATE TABLE `programme_proposal` (
  `proposal_id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `com_id` int(11) NOT NULL,
  `coll_id` int(11) DEFAULT NULL,
  `prog_name` varchar(150) DEFAULT NULL,
  `prog_objectives` text DEFAULT NULL,
  `prog_category` varchar(100) DEFAULT NULL,
  `prog_venue` varchar(150) DEFAULT NULL,
  `prog_date` date DEFAULT NULL,
  `prog_time` time DEFAULT NULL,
  `prog_est_participants` int(11) DEFAULT NULL,
  `prog_docs` varchar(255) DEFAULT NULL,
  `prog_prop_submitted` datetime DEFAULT NULL,
  `prog_status` enum('Approved','Rejected','Returned','Pending') NOT NULL,
  `prog_status_by` varchar(100) NOT NULL,
  `prog_status_comment` text NOT NULL,
  `prog_status_doc` varchar(255) NOT NULL,
  `prog_income_desc` text DEFAULT NULL,
  `prog_expense_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme_proposal`
--

INSERT INTO `programme_proposal` (`proposal_id`, `request_id`, `com_id`, `coll_id`, `prog_name`, `prog_objectives`, `prog_category`, `prog_venue`, `prog_date`, `prog_time`, `prog_est_participants`, `prog_docs`, `prog_prop_submitted`, `prog_status`, `prog_status_by`, `prog_status_comment`, `prog_status_doc`, `prog_income_desc`, `prog_expense_desc`) VALUES
(39, NULL, 11, NULL, 'Sambutan Kemerdekaan', 'Menanam Semangat Patriotik dikalangan orang kampung', 'Others', 'Kawasan Sekitar Kampung', '2026-08-30', '00:00:17', 50, NULL, '2026-01-07 10:36:11', 'Approved', 'puad', 'Teruskan\r\n', '', '100', '100'),
(40, NULL, 11, NULL, 'Sambutan Hari Raya', 'menyambut perayaan bersama', 'Others', 'Surau Kampung Tanah Merah', '2026-06-15', '00:00:09', 50, NULL, '2026-01-07 10:39:53', 'Approved', 'puad', 'Teruskan', '', '700', '700'),
(41, NULL, 11, NULL, 'Gotong Royong', 'Membersihkan Kawasan', 'Others', 'Kawasan Sekitar Kampung', '2026-05-01', '00:00:09', 35, NULL, '2026-01-07 15:19:40', 'Approved', 'puad', 'Teruskan', '', '30', '30'),
(42, 21, 11, NULL, 'Tuisyen SPM', 'Pendidikan', 'Education', 'Surau Kampung Tanah Merah', '2026-06-16', '00:00:09', 30, NULL, '2026-01-07 16:04:59', 'Approved', 'puad', 'Teruskan', '', '50', '50'),
(44, NULL, 20, NULL, 'Program Latihan Kecemasan First Aid', 'Memberi ilmu kecemasan', 'Others', 'Surau Kampung Tanah Merah', '2026-04-03', '00:00:09', 30, NULL, '2026-01-07 16:22:06', 'Approved', 'puad', 'Teruskan', '', '100', '100'),
(46, 23, 11, NULL, 'CSR 2.0', 'Kebajikan Masyarakat', 'Others', 'Surau Kampung Tanah Merah', '2026-07-14', '00:00:10', 60, NULL, '2026-01-07 16:24:56', 'Approved', 'puad', 'Teruskan', '', '100', '100'),
(47, NULL, 20, NULL, 'Latihan Kebakaran', 'Kesedaran', 'Others', 'Surau Kampung Tanah Merah', '2026-01-25', '00:00:17', 40, NULL, '2026-01-07 18:19:27', 'Approved', 'puad', 'Teruskan', '', '100', '100'),
(48, NULL, 19, NULL, 'Sukan Bendang 1.0', 'Amal gaya hidup sihat', 'Others', 'Bendang Kampung Tanah Merah', '2026-06-06', '00:00:17', 50, NULL, '2026-01-08 01:15:13', 'Approved', 'puad', 'Teruskan', '', '2000', '1370'),
(49, NULL, 19, NULL, 'Senamrobik', 'Amal gaya hidup sihat', 'Others', 'Surau Kampung Tanah Merah', '2026-02-10', '00:00:08', 40, NULL, '2026-01-08 01:18:47', 'Pending', '', '', '', '100', '100'),
(50, NULL, 19, NULL, 'Karnival Hari Keusahawanan', 'Meningkatkan characteristic keusahwanan di kalangan orang muda', 'Entrepreneurship', 'Surau Kampung Tanah Merah', '2026-08-07', '00:00:08', 150, NULL, '2026-01-08 01:22:39', 'Approved', 'puad', 'Teruskan', '', '2000', '1500'),
(51, NULL, 17, NULL, 'Tuisyen Form 1', 'Meningkatkan pendidikan', 'Education', 'Surau Kampung Tanah Merah', '2026-03-03', '00:00:09', 40, NULL, '2026-01-08 01:26:01', 'Pending', '', '', '', '40', '40'),
(52, NULL, 17, NULL, 'Seminar SPM', 'Penyediaan bagi SPM', 'Education', 'Surau Kampung Tanah Merah', '2026-11-14', '00:00:09', 80, NULL, '2026-01-08 01:27:41', 'Pending', '', '', '', '500', '500'),
(53, NULL, 17, NULL, 'Bengkel Matematik', 'Meningkatkan kefahaman matematik', 'Education', 'Surau Kampung Tanah Merah', '2026-09-15', '00:00:10', 80, NULL, '2026-01-08 01:29:53', 'Approved', 'puad', 'Teruskan', '', '500', '450'),
(54, NULL, 21, NULL, 'Program Keceriaan Surau', 'Menceriakan kawasan', 'Others', 'Surau Kampung Tanah Merah', '2026-07-06', '00:00:09', 35, NULL, '2026-01-08 01:33:56', 'Approved', 'puad', 'Teruskan', '', '300', '300'),
(55, NULL, 21, NULL, 'Pemasangan bendera malaysia', 'Nilai nilai patriotik', 'Others', 'Kawasan Sekitar Kampung', '2026-08-27', '00:00:17', 25, NULL, '2026-01-08 01:36:30', 'Approved', 'puad', 'Teruskan', '', '100', '100'),
(56, NULL, 11, NULL, 'gotong royong', 'keberihan', 'Others', 'Kawasan Sekitar Kampung', '2026-12-10', '00:00:09', 25, NULL, '2026-01-08 03:31:46', 'Approved', 'puad', 'Teruskan', '', '100', '100'),
(57, 26, 11, NULL, 'Program Anak Yatim', 'Membantu anak-anak yatim', 'Corporate Social Responsibility', 'Kampung Tanah Merah', '2026-06-15', '00:00:10', 25, NULL, '2026-01-08 03:37:20', 'Pending', '', '', '', '100', '100'),
(58, NULL, 11, NULL, 'afasdf', 'ffgsdf', 'Religious', 'fsdfsd', '1561-05-16', '00:00:03', 212, NULL, '2026-01-14 08:34:20', '', '', '', '', NULL, NULL),
(59, NULL, 11, NULL, 'Gotong Royong', 'Kebersihan', 'Others', 'Surau Kampung Tanah Merah', '2026-04-01', '00:00:10', 30, NULL, '2026-01-15 06:41:06', 'Approved', 'puad', 'Bagus', '', '100', '100'),
(60, 24, 11, NULL, 'CSR 3.0', 'Amal kebajikan', 'Others', 'Surau Kampung Tanah Merah', '2026-11-20', '00:00:10', 50, NULL, '2026-01-15 06:46:45', 'Pending', '', '', '', '100', '100'),
(61, NULL, 11, NULL, 'aefe', 'dfsd', 'Religious', '3213', '0213-03-21', '00:00:02', 231, NULL, '2026-01-15 09:07:38', 'Approved', 'puad', 'vfzdv', '', '100', '100'),
(62, 22, 11, NULL, 'CSR', 'Kebajikan Masyarakat', 'Religious', 'Surau Kampung Tanah Merah', '2026-04-14', '00:00:10', 50, NULL, '2026-01-15 09:10:29', 'Pending', '', '', '', '100', '100');

-- --------------------------------------------------------

--
-- Table structure for table `programme_report`
--

CREATE TABLE `programme_report` (
  `report_id` int(11) NOT NULL,
  `proposal_id` int(11) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `prog_name` varchar(150) DEFAULT NULL,
  `prog_summary` text DEFAULT NULL,
  `prog_improvement` text DEFAULT NULL,
  `prog_act_participants` int(11) DEFAULT NULL,
  `prog_act_income` decimal(10,2) DEFAULT NULL,
  `prog_act_expenses` decimal(10,2) DEFAULT NULL,
  `prog_rep_docs` varchar(255) DEFAULT NULL,
  `prog_rep_submitted` datetime DEFAULT NULL,
  `prog_rep_status` enum('Approved','Rejected','Returned','Pending') NOT NULL,
  `prog_rep_status_comment` text NOT NULL,
  `prog_rep_status_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme_report`
--

INSERT INTO `programme_report` (`report_id`, `proposal_id`, `com_id`, `prog_name`, `prog_summary`, `prog_improvement`, `prog_act_participants`, `prog_act_income`, `prog_act_expenses`, `prog_rep_docs`, `prog_rep_submitted`, `prog_rep_status`, `prog_rep_status_comment`, `prog_rep_status_by`) VALUES
(16, 40, 11, 'Sambutan Hari Raya', 'Jamuan makan-makan', 'Penambahan juadah', 70, 800.00, 800.00, NULL, '2026-01-07 18:00:48', 'Pending', '', ''),
(24, 41, 11, 'Gotong Royong', 'Bersih Kawasan', 'Tiada', 35, 30.00, 30.00, NULL, '2026-01-07 22:54:54', 'Approved', '', ''),
(25, 39, 11, 'Sambutan Kemerdekaan', 'Menyambut kemerdekaan', 'Tiada', 100, 100.00, 100.00, NULL, '2026-01-08 08:51:03', 'Approved', '', ''),
(26, 46, 11, 'CSR 2.0', 'Aktiviti keceriaan dan kebersihan rumah warga emas', 'Tiada', 40, 100.00, 100.00, NULL, '2026-01-08 08:55:23', 'Pending', '', ''),
(27, 44, 20, 'Program Latihan Kecemasan First Aid', 'Latihan CPR dan pembalutan', 'Tiada', 40, 100.00, 100.00, NULL, '2026-01-08 08:57:00', 'Pending', '', ''),
(28, 47, 20, 'Latihan Kebakaran', 'Latihan bagi kebakaran', 'Tiada', 40, 100.00, 100.00, NULL, '2026-01-08 08:59:53', 'Pending', '', ''),
(29, 55, 21, 'Pemasangan bendera malaysia', 'Memasang bendera disekitar kampung', 'Tiada', 20, 100.00, 100.00, NULL, '2026-01-08 09:00:58', 'Pending', '', ''),
(30, 54, 21, 'Program Keceriaan Surau', 'Menceriakan surau', 'Tiada', 25, 500.00, 300.00, NULL, '2026-01-08 09:01:27', 'Pending', '', ''),
(31, 53, 17, 'Bengkel Matematik', 'Mengajar matematik', 'Tiada', 50, 100.00, 100.00, NULL, '2026-01-08 09:04:56', 'Pending', '', ''),
(32, 50, 19, 'Karnival Hari Keusahawanan', 'Jualan dan ceramah', 'Tiada', 150, 2000.00, 1050.00, NULL, '2026-01-08 09:09:42', 'Pending', '', ''),
(33, 42, 11, 'Tuisyen SPM', 'frwer', 'wfrwe', 43, 654.00, 100.00, NULL, '2026-01-08 10:29:06', 'Approved', '', ''),
(34, 56, 11, 'gotong royong', 'dasda', 'sdasd', 2312, 0.00, 0.00, NULL, '2026-01-14 15:33:22', 'Pending', '', ''),
(35, 48, 11, 'Sukan Bendang 1.0', 'Bagus', 'bagus', 50, 100.00, 100.00, NULL, '2026-01-15 13:39:35', 'Approved', '', ''),
(36, 59, 11, 'Gotong Royong', 'dsfsd', 'dfsds', 2312, 100.00, 100.00, NULL, '2026-01-15 16:06:54', 'Approved', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collaborators`
--
ALTER TABLE `collaborators`
  ADD PRIMARY KEY (`coll_id`),
  ADD KEY `fk_committee_id` (`com_id`);

--
-- Indexes for table `collaboratorsproposal`
--
ALTER TABLE `collaboratorsproposal`
  ADD PRIMARY KEY (`coll_proposal_id`),
  ADD KEY `coll_id` (`coll_id`),
  ADD KEY `proposal_id` (`proposal_id`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`com_id`),
  ADD UNIQUE KEY `com_phone` (`com_phone`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `guest_requests`
--
ALTER TABLE `guest_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `programme_budget`
--
ALTER TABLE `programme_budget`
  ADD PRIMARY KEY (`budget_id`),
  ADD KEY `proposal_id` (`proposal_id`);

--
-- Indexes for table `programme_budget_actual`
--
ALTER TABLE `programme_budget_actual`
  ADD PRIMARY KEY (`actualbudget_id`);

--
-- Indexes for table `programme_proposal`
--
ALTER TABLE `programme_proposal`
  ADD PRIMARY KEY (`proposal_id`),
  ADD KEY `com_id` (`com_id`),
  ADD KEY `coll_id` (`coll_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `programme_report`
--
ALTER TABLE `programme_report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `com_id` (`com_id`),
  ADD KEY `proposal_id` (`proposal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collaborators`
--
ALTER TABLE `collaborators`
  MODIFY `coll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `collaboratorsproposal`
--
ALTER TABLE `collaboratorsproposal`
  MODIFY `coll_proposal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guest_requests`
--
ALTER TABLE `guest_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `programme_budget`
--
ALTER TABLE `programme_budget`
  MODIFY `budget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `programme_budget_actual`
--
ALTER TABLE `programme_budget_actual`
  MODIFY `actualbudget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `programme_proposal`
--
ALTER TABLE `programme_proposal`
  MODIFY `proposal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `programme_report`
--
ALTER TABLE `programme_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collaborators`
--
ALTER TABLE `collaborators`
  ADD CONSTRAINT `fk_committee_id` FOREIGN KEY (`com_id`) REFERENCES `committee` (`com_id`);

--
-- Constraints for table `collaboratorsproposal`
--
ALTER TABLE `collaboratorsproposal`
  ADD CONSTRAINT `fk_coll_id` FOREIGN KEY (`coll_id`) REFERENCES `collaborators` (`coll_id`),
  ADD CONSTRAINT `fk_proposal_id` FOREIGN KEY (`proposal_id`) REFERENCES `programme_proposal` (`proposal_id`);

--
-- Constraints for table `guest_requests`
--
ALTER TABLE `guest_requests`
  ADD CONSTRAINT `com_guest_request_status` FOREIGN KEY (`com_id`) REFERENCES `committee` (`com_id`),
  ADD CONSTRAINT `guest_requests_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`);

--
-- Constraints for table `programme_budget`
--
ALTER TABLE `programme_budget`
  ADD CONSTRAINT `programme_budget_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `programme_proposal` (`proposal_id`) ON DELETE CASCADE;

--
-- Constraints for table `programme_budget_actual`
--
ALTER TABLE `programme_budget_actual`
  ADD CONSTRAINT `actualbudget_report_id` FOREIGN KEY (`report_id`) REFERENCES `programme_report` (`report_id`);

--
-- Constraints for table `programme_proposal`
--
ALTER TABLE `programme_proposal`
  ADD CONSTRAINT `fk_coll_id1` FOREIGN KEY (`coll_id`) REFERENCES `collaborators` (`coll_id`),
  ADD CONSTRAINT `fk_com_id1` FOREIGN KEY (`com_id`) REFERENCES `committee` (`com_id`),
  ADD CONSTRAINT `programme_proposal_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `guest_requests` (`request_id`);

--
-- Constraints for table `programme_report`
--
ALTER TABLE `programme_report`
  ADD CONSTRAINT `fk_com_id2` FOREIGN KEY (`com_id`) REFERENCES `committee` (`com_id`),
  ADD CONSTRAINT `fk_proposal_id2` FOREIGN KEY (`proposal_id`) REFERENCES `programme_proposal` (`proposal_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
