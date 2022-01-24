-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 24, 2022 at 06:27 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` varchar(10) NOT NULL,
  `employer_id` varchar(10) NOT NULL,
  `package_id` int DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_money` decimal(13,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` varchar(10) NOT NULL,
  `employer_name` varchar(255) NOT NULL,
  `tax_code` varchar(45) DEFAULT NULL,
  `description` text NOT NULL,
  `is_profile_verified` tinyint(1) DEFAULT NULL,
  `logo_url` text,
  `cover_url` text,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `employer_name`, `tax_code`, `description`, `is_profile_verified`, `logo_url`, `cover_url`, `created_date`) VALUES
('1', 'CL-Class', '9626850221', 'Lapwing (unidentified)', 1, NULL, NULL, '2020-08-05 00:00:00'),
('10', 'G', '9674470239', 'Common genet', 0, NULL, NULL, '2019-02-11 00:00:00'),
('2', 'E250', '0338098232', 'Egyptian cobra', 1, NULL, NULL, '2019-10-26 00:00:00'),
('3', 'Terrain', '2142334830', 'Asian openbill', 1, NULL, NULL, '2021-08-29 00:00:00'),
('4', 'Hombre Space', '9793235802', 'Jabiru stork', 1, NULL, NULL, '2019-05-18 00:00:00'),
('5', 'LeMans', '0327843128', 'Australian brush turkey', 1, NULL, NULL, '2021-03-10 00:00:00'),
('6', 'Grand Marquis', '5857308909', 'Hornbill, yellow-billed', 1, NULL, NULL, '2022-01-08 00:00:00'),
('7', 'Thunderbird', '9699545704', 'Waved albatross', 1, NULL, NULL, '2019-11-07 00:00:00'),
('8', 'Sephia', '5904973225', 'Hyena, brown', 1, NULL, NULL, '2019-07-06 00:00:00'),
('9', 'Jetta III', '2431053563', 'Frogmouth, tawny', 0, NULL, NULL, '2019-06-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employer_branch`
--

CREATE TABLE `employer_branch` (
  `id` varchar(10) NOT NULL,
  `employer_id` varchar(10) NOT NULL,
  `region_id` int NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `contac_email` varchar(255) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `created_date` datetime NOT NULL,
  `is_head_quarter` tinyint(1) DEFAULT NULL,
  `total_job` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employer_branch`
--

INSERT INTO `employer_branch` (`id`, `employer_id`, `region_id`, `branch_name`, `contac_email`, `contact_phone`, `address`, `created_date`, `is_head_quarter`, `total_job`) VALUES
('1', '1', 1, 'CL-Class', 'CL-Class@gmail.com', '088282991', 'Ha Noi', '2020-08-05 00:00:00', 1, NULL),
('10', '7', 5, 'Thunderbird', 'Thunderbird@gmail.com', '01186521291', 'TP HCM', '2020-08-05 00:00:00', 1, NULL),
('11', '8', 1, 'Sephia', 'Sephia@gmail.com', '0886522291', 'Ha Noi', '2020-08-05 00:00:00', 1, NULL),
('12', '9', 2, 'Sephia', 'Sephia@gmail.com', '0816521291', 'TP HCM', '2020-08-05 00:00:00', 1, NULL),
('13', '10', 6, 'G', 'G@gmail.com', '0886577291', 'TP HCM', '2020-08-05 00:00:00', 1, NULL),
('2', '1', 2, 'CL-Class 2', 'CL-Class2@gmail.com', '088282992', 'Da nang', '2020-08-06 00:00:00', 0, NULL),
('3', '2', 1, 'E250', 'E250@gmail.com', '088282291', 'Ha Noi', '2020-08-05 00:00:00', 1, NULL),
('4', '2', 2, 'E250 2', 'E2502@gmail.com', '088282993', 'Da nang', '2020-08-07 00:00:00', 0, NULL),
('5', '3', 1, 'Terrain', 'Terrain@gmail.com', '088182291', 'Ha Noi', '2020-08-05 00:00:00', 1, NULL),
('6', '3', 2, 'Terrain 2', 'Terrain2@gmail.com', '078282993', 'Da nang', '2020-08-08 00:00:00', 0, NULL),
('7', '4', 3, 'Hombre Space', 'HombreSpace@gmail.com', '0881821291', 'Hue', '2020-08-05 00:00:00', 1, NULL),
('8', '5', 1, 'LeMans', 'LeMans@gmail.com', '0821821291', 'Thai Nguyen', '2020-08-05 00:00:00', 1, NULL),
('9', '6', 4, 'Grand Marquis', 'GrandMarquis@gmail.com', '0886521291', 'TP HCM', '2020-08-05 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` varchar(10) NOT NULL,
  `employer_id` varchar(10) NOT NULL,
  `employer_branch_id` varchar(10) NOT NULL,
  `position_tier` int DEFAULT NULL,
  `job_title` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `expiration_date` datetime NOT NULL,
  `min_salary` decimal(13,2) DEFAULT NULL,
  `max_salary` decimal(13,2) DEFAULT NULL,
  `show_salary` tinyint(1) DEFAULT NULL,
  `min_exp_year` int DEFAULT NULL,
  `max_exp_year` int DEFAULT NULL,
  `description` text NOT NULL,
  `pending_applied` int DEFAULT NULL,
  `accepted_applied` int DEFAULT NULL,
  `rejected_applied` int DEFAULT NULL,
  `view` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `employer_id`, `employer_branch_id`, `position_tier`, `job_title`, `created_date`, `expiration_date`, `min_salary`, `max_salary`, `show_salary`, `min_exp_year`, `max_exp_year`, `description`, `pending_applied`, `accepted_applied`, `rejected_applied`, `view`) VALUES
('1', '1', '1', 1, 'Tuyen thuc tap sinh PHP', '2021-05-08 00:00:00', '2022-06-08 00:00:00', '4000000.00', '8000000.00', 1, 0, NULL, 'Tuyen thuc tap sinh php ko exp', NULL, NULL, NULL, NULL),
('2', '2', '2', 2, 'Tuyen junior Java', '2021-05-08 00:00:00', '2022-06-08 00:00:00', '8000000.00', NULL, 1, 1, NULL, 'Tuyen junior java 1 nam exp', NULL, NULL, NULL, NULL),
('3', '3', '1', 3, 'Tuyen fresher c++', '2021-05-08 00:00:00', '2022-06-08 00:00:00', '10000000.00', NULL, 1, 1, NULL, 'Tuyen fresher c++ 1 nam exp', NULL, NULL, NULL, NULL),
('4', '4', '1', 4, 'Tuyen senior dev ops', '2021-05-08 00:00:00', '2022-06-08 00:00:00', '12000000.00', '20000000.00', 1, 1, NULL, 'Tuyen senior devpops 3 nam exp', NULL, NULL, NULL, NULL),
('5', '5', '1', 5, 'Tuyen Project manager', '2021-05-08 00:00:00', '2022-06-08 00:00:00', '22000000.00', '30000000.00', 0, 1, NULL, 'Tuyen PM  3 nam exp', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_apply_request`
--

CREATE TABLE `job_apply_request` (
  `id` varchar(10) NOT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `user_cv_id` varchar(10) DEFAULT NULL,
  `user_cv_verify_state` enum('PENDING','VERIFIED','REJECTED') DEFAULT NULL,
  `user_cv_verify_date` datetime DEFAULT NULL,
  `state` enum('PENDING','ACCEPTED','REJECTED') DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `replied_date` datetime DEFAULT NULL,
  `message` text,
  `cv_url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_apply_request`
--

INSERT INTO `job_apply_request` (`id`, `job_id`, `user_id`, `user_cv_id`, `user_cv_verify_state`, `user_cv_verify_date`, `state`, `created_date`, `replied_date`, `message`, `cv_url`) VALUES
('1', '1', '11', '1', 'VERIFIED', NULL, 'PENDING', '2021-08-06 00:00:00', NULL, 'HELO NTD', 'https://robohash.org/doloremcumquemolestiae.png?size=50x50&set=set1'),
('2', '1', '12', '10', 'VERIFIED', NULL, 'PENDING', '2021-08-07 00:00:00', NULL, 'HELO NTD', 'https://robohash.org/idaccusantiumquia.png?size=50x50&set=set1');

-- --------------------------------------------------------

--
-- Table structure for table `job_limit`
--

CREATE TABLE `job_limit` (
  `employer_id` varchar(10) NOT NULL,
  `home_limit` int DEFAULT NULL,
  `search_limit` int DEFAULT NULL,
  `job_limit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_limit`
--

INSERT INTO `job_limit` (`employer_id`, `home_limit`, `search_limit`, `job_limit`) VALUES
('1', 2, 3, 3),
('10', 0, 0, 3),
('2', 2, 3, 3),
('3', 2, 3, 3),
('4', 2, 3, 3),
('5', 2, 3, 3),
('6', 0, 0, 3),
('7', 0, 0, 3),
('8', 0, 0, 3),
('9', 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `job_priority`
--

CREATE TABLE `job_priority` (
  `id` int NOT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  `home_priority` int DEFAULT NULL,
  `home_expiration` datetime DEFAULT NULL,
  `search_priority` int DEFAULT NULL,
  `search_expiration` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_priority`
--

INSERT INTO `job_priority` (`id`, `job_id`, `home_priority`, `home_expiration`, `search_priority`, `search_expiration`) VALUES
(1, '1', 1, '2022-01-03 00:00:00', 1, '2022-01-03 00:00:00'),
(2, '2', 1, '2022-01-03 00:00:00', 1, '2022-01-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_saved`
--

CREATE TABLE `job_saved` (
  `id` varchar(10) DEFAULT NULL,
  `job_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_tag`
--

CREATE TABLE `job_tag` (
  `id` int NOT NULL,
  `job_id` varchar(10) NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_tag`
--

INSERT INTO `job_tag` (`id`, `job_id`, `tag_id`) VALUES
(1, '1', 1),
(2, '1', 2),
(3, '1', 3),
(4, '1', 4),
(5, '2', 14),
(6, '2', 2),
(7, '2', 3),
(8, '2', 10),
(9, '3', 11),
(10, '3', 12),
(11, '3', 13),
(12, '4', 12),
(13, '4', 7),
(14, '5', 1),
(15, '5', 18),
(16, '5', 15);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` decimal(13,2) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position_tier`
--

CREATE TABLE `position_tier` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `position_tier`
--

INSERT INTO `position_tier` (`id`, `name`) VALUES
(1, 'internship'),
(2, 'fresher'),
(3, 'junior'),
(4, 'senior'),
(5, 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'Hà Nội'),
(2, 'Đà Nẵng'),
(3, 'Tp Hồ Chí Minh'),
(4, 'Thái Nguyên'),
(5, 'Bắc Ninh'),
(6, 'Bắc Giang'),
(7, 'Hải Phòng');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` varchar(10) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `position_tier` int DEFAULT NULL,
  `exp_year` int DEFAULT NULL,
  `address` text,
  `avatar_url` text,
  `is_looking_for_job` int DEFAULT NULL,
  `is_profile_verified` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `birthday`, `email`, `phone`, `position_tier`, `exp_year`, `address`, `avatar_url`, `is_looking_for_job`, `is_profile_verified`) VALUES
('11', 'Andrea', 'Gherardini', '1995-12-09', 'agherardini0@parallels.com', '6059784445', 2, 5, '949 Cherokee Lane', 'https://robohash.org/voluptatibusconsequaturmagnam.png?size=50x50&set=set1', 1, NULL),
('12', 'Tami', 'Bernardo', '1993-06-05', 'tbernardo6@cnet.com', '6217649667', 3, 3, '55 Fair Oaks Junction', 'https://robohash.org/quietplaceat.png?size=50x50&set=set1', 1, NULL),
('13', 'Joanie', 'Feehan', '1993-12-13', 'jfeehanl@globo.com', '1408692370', 4, 1, '18733 Loeprich Crossing', 'https://robohash.org/aliquidomnisdolorem.png?size=50x50&set=set1', 0, NULL),
('17', 'Ambur', 'Arrandale', '1997-12-06', 'aarrandale5@php.net', '5326424048', 3, 1, '7564 Superior Alley', 'https://robohash.org/temporaarchitectoconsequatur.png?size=50x50&set=set1', 0, NULL),
('18', 'Adrea', 'Cisar', '1994-12-23', 'acisar12@nydailynews.com', '9438198074', 1, 2, '2 Michigan Crossing', 'https://robohash.org/doloresexplicabomolestias.png?size=50x50&set=set1', 0, NULL),
('21', 'Nikolai', 'McGann', '1993-11-18', 'nmcgann2@uiuc.edu', '1242053148', 2, 4, '3994 Logan Street', 'https://robohash.org/quimaximedicta.png?size=50x50&set=set1', 0, NULL),
('25', 'Holly-anne', 'Thurgood', '1997-10-05', 'hthurgoodo@digg.com', '5332920049', 4, 1, '85611 Westridge Plaza', 'https://robohash.org/isteatquefacilis.png?size=50x50&set=set1', 1, NULL),
('26', 'Joshuah', 'Hindenburg', '1997-12-24', 'jhindenburg11@bbc.co.uk', '5164635066', 2, 1, '425 Fremont Way', 'https://robohash.org/ametvelillo.png?size=50x50&set=set1', 0, NULL),
('28', 'Mabelle', 'Blinckhorne', '1995-02-04', 'mblinckhorne8@wsj.com', '5021986533', 1, 5, '5167 New Castle Crossing', 'https://robohash.org/saepeaccusantiumdolor.png?size=50x50&set=set1', 1, NULL),
('30', 'Glenda', 'Snoxill', '1997-08-15', 'gsnoxillh@nymag.com', '2357746636', 4, 2, '786 Harbort Place', 'https://robohash.org/asperiorestemporaquisquam.png?size=50x50&set=set1', 1, NULL),
('31', 'Wes', 'Santen', '1997-08-26', 'wsantenf@imageshack.us', '2358454677', 3, 4, '03 American Ash Court', 'https://robohash.org/molestiaeeanumquam.png?size=50x50&set=set1', 1, NULL),
('32', 'Devonne', 'Rowth', '1995-07-01', 'drowthe@bing.com', '4181707933', 2, 3, '891 Comanche Center', 'https://robohash.org/necessitatibuscumex.png?size=50x50&set=set1', 1, NULL),
('33', 'Boyce', 'Ledward', '1997-11-03', 'bledward7@e-recht24.de', '3607230645', 3, 0, '95134 Oakridge Alley', 'https://robohash.org/cumnullaconsequatur.png?size=50x50&set=set1', 1, NULL),
('35', 'Gusta', 'Ginnelly', '1993-05-02', 'gginnelly10@patch.com', '6746130484', 3, 5, '9 Mayer Crossing', 'https://robohash.org/corruptiiustonulla.png?size=50x50&set=set1', 0, NULL),
('36', 'Lorin', 'Collabine', '1990-12-22', 'lcollabine4@delicious.com', '4587098278', 3, 1, '4 Hoard Street', 'https://robohash.org/temporavoluptatibusasperiores.png?size=50x50&set=set1', 1, NULL),
('37', 'Luce', 'Mitchelhill', '1996-10-04', 'lmitchelhillg@liveinternet.ru', '3791636077', 3, 1, '29 Arkansas Point', 'https://robohash.org/impeditcupiditatequos.png?size=50x50&set=set1', 0, NULL),
('40', 'Lisha', 'Rotherforth', '1990-02-16', 'lrotherforthp@uol.com.br', '9227308563', 2, 5, '27 Lighthouse Bay Parkway', 'https://robohash.org/necessitatibussaeperepudiandae.png?size=50x50&set=set1', 1, NULL),
('43', 'Rubin', 'Rothon', '1993-11-20', 'rrothonq@linkedin.com', '2627707344', 3, 1, '3 Butternut Alley', 'https://robohash.org/adofficiisquis.png?size=50x50&set=set1', 1, NULL),
('44', 'Elisabetta', 'Jeroch', '1991-03-29', 'ejerochj@salon.com', '5727870171', 4, 3, '3 Almo Pass', 'https://robohash.org/laborepariaturaliquid.png?size=50x50&set=set1', 1, NULL),
('45', 'Arturo', 'Zwicker', '1997-09-09', 'azwickers@netlog.com', '1213305426', 3, 3, '94276 Sage Pass', 'https://robohash.org/eaqueillumea.png?size=50x50&set=set1', 0, NULL),
('46', 'Mandel', 'Sowerby', '1995-11-17', 'msowerbyu@timesonline.co.uk', '8407585525', 1, 5, '5705 Muir Court', 'https://robohash.org/ipsadebitistotam.png?size=50x50&set=set1', 0, NULL),
('47', 'Fredrika', 'Gaiford', '1992-01-13', 'fgaiford13@marketwatch.com', '9254604457', 2, 3, '510 Vermont Road', 'https://robohash.org/temporaiustonulla.png?size=50x50&set=set1', 0, NULL),
('49', 'Ozzy', 'McKeaveney', '1995-08-01', 'omckeaveney1@freewebs.com', '7584547746', 4, 0, '5556 Evergreen Park', 'https://robohash.org/dignissimosetnon.png?size=50x50&set=set1', 0, NULL),
('50', 'Westbrook', 'Bereford', '1995-08-03', 'wbereforda@paginegialle.it', '8557427171', 2, 4, '54702 Anniversary Place', 'https://robohash.org/temporasequinemo.png?size=50x50&set=set1', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_cv`
--

CREATE TABLE `student_cv` (
  `id` varchar(10) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `cv_url` text,
  `verify_state` enum('PENDING','VERIFIED','REJECTED') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_cv`
--

INSERT INTO `student_cv` (`id`, `student_id`, `name`, `cv_url`, `verify_state`, `created_date`) VALUES
('1', '11', 'Smart', 'https://robohash.org/doloremcumquemolestiae.png?size=50x50&set=set1', 'VERIFIED', '2019-10-11 00:00:00'),
('10', '12', 'Pontiac', 'https://robohash.org/idaccusantiumquia.png?size=50x50&set=set1', 'VERIFIED', '2019-07-12 00:00:00'),
('11', '11', 'Saturn', 'https://robohash.org/facilispariaturtenetur.png?size=50x50&set=set1', 'PENDING', '2019-06-12 00:00:00'),
('12', '25', 'Pontiac', 'https://robohash.org/sitidfuga.png?size=50x50&set=set1', 'VERIFIED', '2019-02-15 00:00:00'),
('13', '26', 'Rolls-Royce', 'https://robohash.org/quamiustoaut.png?size=50x50&set=set1', 'PENDING', '2019-12-21 00:00:00'),
('14', '28', 'Ford', 'https://robohash.org/illumplaceatesse.png?size=50x50&set=set1', 'PENDING', '2019-03-09 00:00:00'),
('15', '25', 'Mazda', 'https://robohash.org/dignissimosquiasint.png?size=50x50&set=set1', 'PENDING', '2019-12-11 00:00:00'),
('2', '12', 'Dodge', 'https://robohash.org/seddoloresconsectetur.png?size=50x50&set=set1', 'PENDING', '2019-12-17 00:00:00'),
('3', '13', 'Ford', 'https://robohash.org/voluptatibusinarchitecto.png?size=50x50&set=set1', 'REJECTED', '2019-10-18 00:00:00'),
('4', '17', 'Honda', 'https://robohash.org/atvoluptatemut.png?size=50x50&set=set1', 'VERIFIED', '2019-05-12 00:00:00'),
('5', '18', 'GMC', 'https://robohash.org/cumqueetautem.png?size=50x50&set=set1', 'VERIFIED', '2019-08-02 00:00:00'),
('6', '21', 'Cadillac', 'https://robohash.org/etilloeius.png?size=50x50&set=set1', 'VERIFIED', '2019-06-03 00:00:00'),
('7', '11', 'Ferrari', 'https://robohash.org/voluptatibusaliquidquae.png?size=50x50&set=set1', 'VERIFIED', '2019-10-07 00:00:00'),
('8', '12', 'Honda', 'https://robohash.org/assumendadolorespariatur.png?size=50x50&set=set1', 'VERIFIED', '2019-05-30 00:00:00'),
('9', '11', 'Lamborghini', 'https://robohash.org/illolaboreaperiam.png?size=50x50&set=set1', 'VERIFIED', '2019-04-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'design'),
(2, 'test'),
(3, 'qa'),
(4, 'java'),
(5, 'c#'),
(6, 'c++'),
(7, 'my sql'),
(8, 'nodejs'),
(9, 'mongoDB'),
(10, 'game'),
(11, 'project manager'),
(12, 'senior'),
(13, 'junior'),
(14, 'fresher'),
(15, 'internship'),
(16, 'BA'),
(17, 'Network'),
(18, 'Security'),
(19, 'dev ops');

-- --------------------------------------------------------

--
-- Table structure for table `tag_student`
--

CREATE TABLE `tag_student` (
  `id` int NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tag_student`
--

INSERT INTO `tag_student` (`id`, `student_id`, `tag_id`) VALUES
(1, '11', 1),
(2, '11', 2),
(3, '11', 3),
(4, '12', 4),
(5, '12', 5),
(6, '13', 6),
(7, '13', 1),
(8, '13', 2),
(9, '17', 1),
(10, '17', 2),
(11, '17', 19),
(12, '18', 19),
(13, '18', 1),
(14, '18', 6),
(15, '21', 9),
(16, '21', 18),
(17, '21', 4),
(18, '21', 10),
(19, '25', 10),
(20, '25', 1),
(21, '25', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `last_actived` datetime DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT NULL,
  `role` enum('1','2','3') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `contact_email`, `created_date`, `last_actived`, `is_banned`, `role`) VALUES
('1', 'mgricks0', 'wPVFW8', 'tpaschke0@patch.com', '2019-05-07 00:00:00', '2021-08-13 00:00:00', 0, '2'),
('10', 'vstockall9', 'YHeQz2apZ4V', 'blieber9@studiopress.com', '2019-02-02 00:00:00', '2022-01-17 00:00:00', 1, '3'),
('11', 'cbonnella', 'LAuIGvh', 'smuccinoa@shinystat.com', '2019-08-03 00:00:00', '2021-10-25 00:00:00', 0, '1'),
('12', 'djeffcoatb', 'B2X8uokuAxo', 'eballardb@hc360.com', '2020-01-21 00:00:00', '2022-01-22 00:00:00', 0, '3'),
('13', 'vbrissec', 'ltQAgj9nU5Tg', 'jfairhamc@pbs.org', '2019-04-18 00:00:00', '2022-01-03 00:00:00', 0, '2'),
('14', 'kbirdsd', '2NzjEAyy', 'fhanniganed@blogs.com', '2019-09-30 00:00:00', '2021-09-06 00:00:00', 1, '1'),
('15', 'lthomase', 'E7wKPE7ys', 'jhumbelle@mlb.com', '2019-06-30 00:00:00', '2021-09-19 00:00:00', 0, '2'),
('16', 'khardingef', 'DmvNIteYgxim', 'jgoudyf@blinklist.com', '2019-10-06 00:00:00', '2021-07-06 00:00:00', 1, '2'),
('17', 'ggullandg', 'JC9QJ5i', 'rladeng@sun.com', '2019-02-12 00:00:00', '2021-03-25 00:00:00', 0, '3'),
('18', 'dfancourth', 'CKrRDUTE6DiK', 'tpanswickh@instagram.com', '2019-06-17 00:00:00', '2021-02-04 00:00:00', 0, '3'),
('19', 'ecrabbi', 'CraqDjtRcvyf', 'amoulsdalli@cbsnews.com', '2019-07-03 00:00:00', '2021-08-24 00:00:00', 1, '3'),
('2', 'hrois1', 'bzY5ToAVKJ', 'tbrunn1@telegraph.co.uk', '2019-05-19 00:00:00', '2021-11-07 00:00:00', 0, '3'),
('20', 'fdonnisonj', '2aCkkeZLpAn', 'vwordsleyj@discovery.com', '2019-06-03 00:00:00', '2021-07-07 00:00:00', 1, '2'),
('21', 'myurevichk', 'Izmu2jrth3dB', 'mblackmank@angelfire.com', '2019-10-22 00:00:00', '2021-06-16 00:00:00', 0, '3'),
('22', 'lallderl', '3R01uIYqa', 'mmckayl@berkeley.edu', '2019-05-01 00:00:00', '2021-11-25 00:00:00', 0, '1'),
('23', 'kstaresm', 'vuFIKn3v', 'gtenbym@live.com', '2019-06-11 00:00:00', '2021-10-14 00:00:00', 0, '1'),
('24', 'zvonweldenn', 'GtohVlihHDqF', 'lpidginn@cpanel.net', '2019-07-01 00:00:00', '2021-07-23 00:00:00', 0, '2'),
('25', 'vbartoso', 'p2EzWYM72', 'sgateo@geocities.jp', '2019-02-08 00:00:00', '2021-08-06 00:00:00', 0, '2'),
('26', 'svinkerp', 'oFHAYKM', 'bwordingtonp@acquirethisname.com', '2020-01-16 00:00:00', '2021-09-08 00:00:00', 0, '1'),
('27', 'kcheshireq', 'w5N10eq6C3', 'jmitrikhinq@mozilla.com', '2019-08-27 00:00:00', '2021-07-24 00:00:00', 1, '2'),
('28', 'sskeyr', 'I6ky8jOjR', 'ehemsteadr@opera.com', '2019-12-13 00:00:00', '2021-02-06 00:00:00', 1, '3'),
('29', 'abogiess', 'iw0lFZhmBZ', 'wbartholomieus@gmpg.org', '2019-04-05 00:00:00', '2021-05-31 00:00:00', 1, '3'),
('3', 'gkelloway2', 'qSDuDQ', 'apetrecz2@wisc.edu', '2019-05-29 00:00:00', '2021-08-04 00:00:00', 1, '3'),
('30', 'mlittellt', 'g0JpJbl5D', 'smcmastert@mozilla.com', '2019-12-06 00:00:00', '2021-10-24 00:00:00', 1, '3'),
('31', 'rtalbyu', 'wYf3RRp1Jn', 'crossiu@wordpress.org', '2019-11-01 00:00:00', '2021-07-19 00:00:00', 1, '1'),
('32', 'lhardyv', 'FDKaY88J', 'rseyv@twitpic.com', '2019-11-04 00:00:00', '2022-01-12 00:00:00', 0, '2'),
('33', 'srolfiniw', 'ezlIQcJGZ1', 'gwesthoferw@naver.com', '2019-07-16 00:00:00', '2021-06-01 00:00:00', 0, '1'),
('34', 'cfarfootx', 'KKIhdtJ5Ot', 'bstannettx@yolasite.com', '2019-02-04 00:00:00', '2021-04-08 00:00:00', 0, '1'),
('35', 'jeweny', 'Bn6hOMCYz83', 'kbindingy@jigsy.com', '2019-08-24 00:00:00', '2021-05-23 00:00:00', 1, '2'),
('36', 'ugeorgiz', 'ESVyyHEPa', 'dmatulaz@illinois.edu', '2019-10-11 00:00:00', '2021-06-09 00:00:00', 0, '1'),
('37', 'ftarver10', 'dMlwtS', 'rolorenshaw10@netvibes.com', '2019-07-31 00:00:00', '2021-07-13 00:00:00', 0, '2'),
('38', 'spinnegar11', 'jkIDeYdsO', 'bewen11@oaic.gov.au', '2019-05-20 00:00:00', '2021-03-24 00:00:00', 1, '3'),
('39', 'vspenley12', 'H1kDDI1Tnwq', 'zbarrat12@ameblo.jp', '2019-04-08 00:00:00', '2021-12-25 00:00:00', 1, '1'),
('4', 'echristophers3', 'zjc8Ml5U', 'lozintsev3@nationalgeographic.com', '2019-08-04 00:00:00', '2021-11-30 00:00:00', 1, '3'),
('40', 'ebransgrove13', '05KyOctcnPiH', 'bprozescky13@ovh.net', '2019-04-22 00:00:00', '2021-12-29 00:00:00', 0, '3'),
('41', 'bshortland14', 'HOMH5AVUD', 'tdrakes14@bing.com', '2019-04-25 00:00:00', '2021-06-07 00:00:00', 1, '3'),
('42', 'mthominga15', '84bAG37RtO', 'mskehens15@wunderground.com', '2019-06-07 00:00:00', '2021-07-14 00:00:00', 0, '1'),
('43', 'pjanko16', 'hthWRN5SKD5h', 'clipscombe16@comsenz.com', '2019-07-18 00:00:00', '2021-09-23 00:00:00', 1, '2'),
('44', 'lfudge17', 'VQ4J0uV0', 'rcapstick17@stanford.edu', '2019-03-22 00:00:00', '2021-10-04 00:00:00', 0, '2'),
('45', 'eberrisford18', 'Zr0NmIQ1Vl2', 'jchallin18@miitbeian.gov.cn', '2019-12-09 00:00:00', '2021-06-17 00:00:00', 0, '3'),
('46', 'grobson19', 'ntBiO643Q', 'speagram19@samsung.com', '2019-10-02 00:00:00', '2021-04-18 00:00:00', 1, '1'),
('47', 'fquirke1a', 'fXBveBjFDai7', 'wbaswall1a@ow.ly', '2019-06-13 00:00:00', '2021-08-01 00:00:00', 1, '1'),
('48', 'rtabourel1b', 'Voq1LOOpfe', 'wleall1b@lulu.com', '2019-09-28 00:00:00', '2021-11-26 00:00:00', 0, '2'),
('49', 'swadesworth1c', 'AqRDLkoRm', 'fgaffey1c@samsung.com', '2019-02-03 00:00:00', '2021-03-20 00:00:00', 1, '3'),
('5', 'ddurnan4', '8jqWQOnmqTM', 'tstarbucke4@ebay.co.uk', '2019-09-21 00:00:00', '2021-06-04 00:00:00', 0, '2'),
('50', 'ewyburn1d', 'sHQHNr3evnZ', 'ggerriets1d@linkedin.com', '2020-01-03 00:00:00', '2021-12-13 00:00:00', 0, '2'),
('6', 'sgibbetts5', 'H52Jsb', 'pburress5@hp.com', '2019-12-27 00:00:00', '2021-05-10 00:00:00', 0, '3'),
('7', 'rpurviss6', 'feXkkKG9', 'ojacobsz6@nifty.com', '2019-06-18 00:00:00', '2021-07-05 00:00:00', 1, '1'),
('8', 'rstroulger7', 'hmcLfu', 'cglaysher7@i2i.jp', '2019-06-02 00:00:00', '2021-07-13 00:00:00', 0, '3'),
('9', 'lbattelle8', 'sFfxEUE2', 'bparman8@vinaora.com', '2019-12-14 00:00:00', '2021-04-26 00:00:00', 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer_branch`
--
ALTER TABLE `employer_branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `employer_branch_id` (`employer_branch_id`),
  ADD KEY `position_tier` (`position_tier`);

--
-- Indexes for table `job_apply_request`
--
ALTER TABLE `job_apply_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_cv_id` (`user_cv_id`);

--
-- Indexes for table `job_limit`
--
ALTER TABLE `job_limit`
  ADD PRIMARY KEY (`employer_id`);

--
-- Indexes for table `job_priority`
--
ALTER TABLE `job_priority`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `job_saved`
--
ALTER TABLE `job_saved`
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position_tier`
--
ALTER TABLE `position_tier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_tier` (`position_tier`);

--
-- Indexes for table `student_cv`
--
ALTER TABLE `student_cv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_student`
--
ALTER TABLE `tag_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_priority`
--
ALTER TABLE `job_priority`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_tag`
--
ALTER TABLE `job_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position_tier`
--
ALTER TABLE `position_tier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tag_student`
--
ALTER TABLE `tag_student`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  ADD CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`);

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employer_branch`
--
ALTER TABLE `employer_branch`
  ADD CONSTRAINT `employer_branch_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  ADD CONSTRAINT `employer_branch_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  ADD CONSTRAINT `job_ibfk_2` FOREIGN KEY (`employer_branch_id`) REFERENCES `employer_branch` (`id`),
  ADD CONSTRAINT `job_ibfk_3` FOREIGN KEY (`position_tier`) REFERENCES `position_tier` (`id`);

--
-- Constraints for table `job_apply_request`
--
ALTER TABLE `job_apply_request`
  ADD CONSTRAINT `job_apply_request_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `job_apply_request_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `job_apply_request_ibfk_3` FOREIGN KEY (`user_cv_id`) REFERENCES `student_cv` (`id`);

--
-- Constraints for table `job_limit`
--
ALTER TABLE `job_limit`
  ADD CONSTRAINT `job_limit_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_priority`
--
ALTER TABLE `job_priority`
  ADD CONSTRAINT `job_priority_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_saved`
--
ALTER TABLE `job_saved`
  ADD CONSTRAINT `job_saved_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `job_saved_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD CONSTRAINT `job_tag_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `job_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`position_tier`) REFERENCES `position_tier` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_cv`
--
ALTER TABLE `student_cv`
  ADD CONSTRAINT `student_cv_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `tag_student`
--
ALTER TABLE `tag_student`
  ADD CONSTRAINT `tag_student_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  ADD CONSTRAINT `tag_student_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
