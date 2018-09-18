-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 03:18 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progtech_actionaid`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_activities`
--

CREATE TABLE `ai_activities` (
  `id` int(11) NOT NULL,
  `act_name` text NOT NULL,
  `act_number` varchar(255) NOT NULL,
  `act_baseline` varchar(255) DEFAULT NULL,
  `act_target2022` varchar(255) NOT NULL,
  `act_target2018` varchar(255) DEFAULT NULL,
  `act_mov` tinytext,
  `act_frequency` varchar(255) DEFAULT NULL,
  `act_dataCollection` varchar(255) DEFAULT NULL,
  `act_assumption` tinytext,
  `ind_id` int(11) NOT NULL,
  `foc_id` int(11) NOT NULL,
  `pri_id` int(11) NOT NULL,
  `act_status` int(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_activities`
--

INSERT INTO `ai_activities` (`id`, `act_name`, `act_number`, `act_baseline`, `act_target2022`, `act_target2018`, `act_mov`, `act_frequency`, `act_dataCollection`, `act_assumption`, `ind_id`, `foc_id`, `pri_id`, `act_status`) VALUES
(1, 'Conscientize women, girls and their organizations on policy and legal framework promoting their economic rights of adequate access and control of productive resources, reduction of unpaid care work and decent work environments', 'A1.1', NULL, '7,000 women and 2,000 girls', NULL, 'Attendance registers, Activity reports, Pictures', NULL, 'AAZ and Partners', 'Targeted groups willingness to participate in trainings', 1, 1, 1, 1),
(2, 'Support and link women, young people, their organizations and movements to advocate for effective implementation of laws and policies that promote CRSA, access to markets and adaptation to climate change.', 'A: 1.1', 'TBA', '126 advocacy initiatives', '19 initiatives', 'Activity reports; Attendance registers;', 'Null', 'Null', 'Women, young people, their organizations and movements are willing engage in  advocacy initiatives', 3, 3, 4, 1),
(3, 'Some Concept Note for test1', 'A: 1.1', 'TBA', '126 advocacy initiatives', '19 initiatives', NULL, NULL, NULL, NULL, 4, 5, 5, 1),
(4, 'Kalyndo\'s Concept Note only', 'A 3.2', 'asdf ads', 'asd fdsaf', 'asdf ads', 'as fdads', 'asdf ads', 'sad fads', 'sadf adsf ads', 4, 5, 5, 1),
(5, 'Conscientize women, girls and their organizations on policy and legal framework promoting their economic rights of adequate access and control of productive resources, reduction of unpaid care work and decent work environments', 'A 4.1', 'Kalyndo Baseline', '5000', '1000', 'asfd aaalskfd hlkasdf asf', 'a sdfasd', 'asdf asd', 'a dfasdf asdf asdf asdf asdf a', 3, 3, 4, 1),
(6, ' New Concept note', 'A 4.1', 'Kalyndo Baseline', '5000', '1000', 'asfd aaalskfd hlkasdf asf', 'a sdfasd', 'asdf asd', 'a dfasdf asdf asdf asdf asdf a', 3, 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ai_activity_report`
--

CREATE TABLE `ai_activity_report` (
  `id` int(11) NOT NULL,
  `pri_id` int(4) NOT NULL,
  `foc_id` int(4) NOT NULL,
  `ind_id` int(4) NOT NULL,
  `p_act_id` int(8) NOT NULL,
  `cn_id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `flow_id` int(8) NOT NULL,
  `ar_date` varchar(255) NOT NULL,
  `ar_venue` varchar(255) NOT NULL,
  `ar_implementingUnit` varchar(255) NOT NULL,
  `ar_ap_female` int(8) NOT NULL,
  `ar_ap_male` int(8) NOT NULL,
  `ar_ap_child_m` int(8) NOT NULL,
  `ar_ap_youth_m` int(8) NOT NULL,
  `ar_ap_adult_m` int(8) NOT NULL,
  `ar_ap_child_f` int(8) DEFAULT NULL,
  `ar_ap_youth_f` int(8) DEFAULT NULL,
  `ar_ap_adult_f` int(8) DEFAULT NULL,
  `ar_ap_total` int(32) NOT NULL,
  `ar_comments` varchar(255) DEFAULT NULL,
  `ar_ac_aims` tinytext NOT NULL,
  `ar_ac_follow` tinytext NOT NULL,
  `ar_ac_process` tinytext NOT NULL,
  `ar_ac_challenges` tinytext NOT NULL,
  `ar_ac_improve` tinytext NOT NULL,
  `ar_ac_ies` tinytext NOT NULL,
  `ar_ac_comments` tinytext NOT NULL,
  `ar_at_attendence` varchar(255) NOT NULL,
  `ar_at_minute` varchar(255) NOT NULL,
  `ar_at_pic1` varchar(255) DEFAULT NULL,
  `ar_at_pic2` varchar(255) DEFAULT NULL,
  `ar_at_pic3` varchar(255) DEFAULT NULL,
  `ar_at_pic4` varchar(255) DEFAULT NULL,
  `ar_at_pic5` varchar(255) DEFAULT NULL,
  `ar_at_link` varchar(255) DEFAULT NULL,
  `ar_at_actionPlan` varchar(255) DEFAULT NULL,
  `ar_at_others` varchar(255) DEFAULT NULL,
  `ar_status` int(4) NOT NULL DEFAULT '1',
  `reporting_month` int(2) NOT NULL,
  `reporting_year` year(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_activity_report`
--

INSERT INTO `ai_activity_report` (`id`, `pri_id`, `foc_id`, `ind_id`, `p_act_id`, `cn_id`, `user_id`, `flow_id`, `ar_date`, `ar_venue`, `ar_implementingUnit`, `ar_ap_female`, `ar_ap_male`, `ar_ap_child_m`, `ar_ap_youth_m`, `ar_ap_adult_m`, `ar_ap_child_f`, `ar_ap_youth_f`, `ar_ap_adult_f`, `ar_ap_total`, `ar_comments`, `ar_ac_aims`, `ar_ac_follow`, `ar_ac_process`, `ar_ac_challenges`, `ar_ac_improve`, `ar_ac_ies`, `ar_ac_comments`, `ar_at_attendence`, `ar_at_minute`, `ar_at_pic1`, `ar_at_pic2`, `ar_at_pic3`, `ar_at_pic4`, `ar_at_pic5`, `ar_at_link`, `ar_at_actionPlan`, `ar_at_others`, `ar_status`, `reporting_month`, `reporting_year`, `created_at`, `updated_at`) VALUES
(15, 4, 3, 3, 5, 2, 9, 5, '2018-09-13', 'Comilla', 'AZZ', 36, 86, 23, 40, 23, 2, 32, 2, 122, 'asdfasfdasd', '<p>asdf asdfa sdf<br></p>', '<p>asfd asdf asdf<br></p>', '<p>a sfdasdf asdf asd<br></p>', '<p>as dfasdf asdfa ds<br></p>', '<p>a fasdf asdf asd<br></p>', '<p>a fasdf asdf asd<br></p>', '<p>a sfdasf asdf a f<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/tulips.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-15 13:49:40', '2018-09-15 19:49:40'),
(16, 4, 3, 3, 2, 8, 9, 5, '2018-09-15', 'Dhaka', 'AZZ', 7, 50, 23, 23, 4, 2, 3, 2, 57, 'asdf a', '<p>a fas fasd fasfd<br></p>', '<p>asdf asfd asdf<br></p>', '<p>asf dasdf asdf <br></p>', '<p>a sdfasdf asd<br></p>', '<p>a sfdas dfasdf <br></p>', '<p>a sfasdf asdf <br></p>', '<p>as fasdf asf asd<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/desert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-15 14:25:40', '2018-09-15 20:25:40'),
(17, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:50:28', '2018-09-17 15:50:28'),
(18, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:52:42', '2018-09-17 15:52:42'),
(19, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:53:38', '2018-09-17 15:53:38'),
(20, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:56:11', '2018-09-17 15:56:11'),
(21, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:56:31', '2018-09-17 15:56:31'),
(22, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:57:24', '2018-09-17 15:57:24'),
(23, 4, 3, 3, 2, 3, 9, 5, '2018-09-15', 'Dhaka', 'aadf', 36, 30, 3, 23, 4, 2, 32, 2, 66, 'sadf asdf', '<p>af dads<br></p>', '<p>asdf asdf<br></p>', '<p>a sfasdf <br></p>', '<p>a fasd fa<br></p>', '<p>asdf asdf<br></p>', '<p>adfs asd<br></p>', '<p>a dsfasdf<br></p>', 'uploads/9/5-php-bangla-tutorial-php-basic.pdf', 'uploads/9/7__PHP___Database_bangla.pdf', 'uploads/9/2018-09/chrysanthemum.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 2018, '2018-09-17 09:58:33', '2018-09-17 15:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `ai_concept_note`
--

CREATE TABLE `ai_concept_note` (
  `id` int(11) NOT NULL,
  `pri_id` int(11) NOT NULL,
  `foc_id` int(11) NOT NULL,
  `ind_id` int(11) NOT NULL,
  `p_act_id` int(11) NOT NULL,
  `acn_name` tinytext NOT NULL,
  `acn_date` varchar(255) NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `acn_venue` varchar(255) NOT NULL,
  `acn_implementUnit` varchar(255) NOT NULL,
  `acn_ap_male` int(4) NOT NULL DEFAULT '0',
  `acn_ap_female` int(4) NOT NULL DEFAULT '0',
  `acn_ap_child_m` int(4) NOT NULL DEFAULT '0',
  `acn_ap_child_f` int(4) NOT NULL DEFAULT '0',
  `acn_ap_youth_m` int(4) NOT NULL DEFAULT '0',
  `acn_ap_youth_f` int(4) NOT NULL DEFAULT '0',
  `acn_ap_adult_m` int(4) NOT NULL DEFAULT '0',
  `acn_ap_adult_f` int(4) NOT NULL DEFAULT '0',
  `acn_ap_total` int(8) NOT NULL,
  `acn_aim` text NOT NULL,
  `acn_objective` text NOT NULL,
  `acn_ies` text NOT NULL,
  `acn_outcome` text NOT NULL,
  `acn_follow` text NOT NULL,
  `acn_budget` int(12) NOT NULL,
  `acn_budgetCode` varchar(255) NOT NULL,
  `userId` int(4) NOT NULL,
  `lineManager` int(4) NOT NULL,
  `meOfficer` int(4) DEFAULT NULL,
  `headOfficer` int(4) DEFAULT NULL,
  `line_date` varchar(255) DEFAULT NULL,
  `me_date` varchar(255) DEFAULT NULL,
  `head_date` varchar(255) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `rejected_by` int(4) DEFAULT NULL,
  `rejected_date` varchar(255) DEFAULT NULL,
  `rejected_comment` tinytext,
  `acn_status` int(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_concept_note`
--

INSERT INTO `ai_concept_note` (`id`, `pri_id`, `foc_id`, `ind_id`, `p_act_id`, `acn_name`, `acn_date`, `current_date`, `acn_venue`, `acn_implementUnit`, `acn_ap_male`, `acn_ap_female`, `acn_ap_child_m`, `acn_ap_child_f`, `acn_ap_youth_m`, `acn_ap_youth_f`, `acn_ap_adult_m`, `acn_ap_adult_f`, `acn_ap_total`, `acn_aim`, `acn_objective`, `acn_ies`, `acn_outcome`, `acn_follow`, `acn_budget`, `acn_budgetCode`, `userId`, `lineManager`, `meOfficer`, `headOfficer`, `line_date`, `me_date`, `head_date`, `act_id`, `rejected_by`, `rejected_date`, `rejected_comment`, `acn_status`) VALUES
(1, 0, 0, 0, 0, 'New concept note', '2018-09-06', '2018-09-10 12:37:55', 'Dhaka', 'Azz', 20, 110, 5, 5, 5, 5, 5, 5, 30, '<p>sadf asdf asdf</p>', '<p>asd fasdf asdf&nbsp;</p>', '<p>asdf asdf asdf ads</p>', '<p>as dfasdf asdf adsf adsf asd</p>', '<p>as fasdf asdf asdf adsf</p>', 15000, 'asfe', 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2018-09-06 10:09:10', 'Some thing is going to woring!', 99),
(2, 4, 3, 3, 5, 'Kalyndo Concept notes', '2018-09-06', '2018-09-10 12:37:55', 'asdf asdf', 'asdf asd', 17, 13, 5, 5, 5, 5, 7, 3, 30, '<p>asdf asdfa sdf<br></p>', '<p>as fdasdf asdf asd<br></p>', '<p>as dfasd asdf asdf<br></p>', '<p>s dafasdf asdf ads<br></p>', '<p>a sfdas dfasdf asdf<br></p>', 50000, 'asefs23', 9, 5, 11, 8, '2018-09-06 16:09:07', '2018-09-09 14:09:53', '2018-09-09 15:09:57', 6, NULL, NULL, NULL, 101),
(3, 4, 3, 3, 2, 'Some Concept Note for test', '2018-09-15', '2018-09-10 12:37:55', 'Khulna', 'Azz', 30, 30, 10, 10, 10, 10, 10, 10, 60, '<p>asdkf halskdf halsdf adsf asd<br></p>', '<p>asdf asdf asdf asdf ads<br></p>', '<p>a fasfd asdf asdf asd<br></p>', '<p>asdf asdf asdf asdf asf<br></p>', '<p>asdf asdf asdf asdf<br></p>', 5000, '3sukl', 9, 5, 11, 3, '2018-09-10 08:09:11', '2018-09-15 16:09:00', '2018-09-15 16:09:28', NULL, NULL, NULL, NULL, 101),
(4, 4, 3, 3, 5, 'Sad\'s Concept note will be go here..aa', '2018-09-15', '2018-09-10 16:51:15', 'Khulna', 'Petner', 25, 28, 5, 8, 12, 20, 8, 0, 53, '<p>\"On the other hand, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is \r\nuntrammelled and when nothing prevents our being able to do what we like\r\n best, every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection: he rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.\"</p><p><br></p><p>\"On the other hand, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is \r\nuntrammelled and when nothing prevents our being able to do what we like\r\n best, every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection: he rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.\"<br></p>', '<p>\"On the other hand, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is \r\nuntrammelled and when nothing prevents our being able to do what we like\r\n best, every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection: he rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.\"</p><p>\"On the other hand, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is \r\nuntrammelled and when nothing prevents our being able to do what we like\r\n best, every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection: he rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.\"<br></p>', '<p>\"On the other hand, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is \r\nuntrammelled and when nothing prevents our being able to do what we like\r\n best, every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection: he rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.\"<br></p>', '<p>\"On the other hand, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is \r\nuntrammelled and when nothing prevents our being able to do what we like\r\n best, every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection: he rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.\"<br></p>', '<p><b>\"On the other hand</b>, we denounce with righteous indignation and dislike \r\nmen who are so beguiled and demoralized by the charms of pleasure of the\r\n moment, so blinded by desire, that they cannot foresee the pain and \r\ntrouble that are bound to ensue; and equal blame belongs to those who \r\nfail in their duty through weakness of will, which is the same as saying\r\n through shrinking from toil and pain. <font color=\"#311873\"><u>These cases are perfectly simple \r\nand easy to distinguish. In a free hour, when our power of choice is untrammeled and when nothing prevents our being able to do what we like\r\n best,</u></font> every pleasure is to be welcomed and every pain avoided. But in \r\ncertain circumstances and owing to the claims of duty or the obligations\r\n of business it will frequently occur that pleasures have to be \r\nrepudiated and annoyances accepted. The wise man therefore always holds \r\nin these matters to this principle of selection:\"</p><p>He rejects pleasures to\r\n secure other greater pleasures, or else he endures pains to avoid worse\r\n pains.<br></p>', 5000, 'sf23l', 7, 6, 11, 8, '2018-09-10 17:09:43', '2018-09-10 17:09:31', '2018-09-10 17:09:22', 8, NULL, NULL, NULL, 100),
(5, 5, 5, 4, 3, 'Update by M&E', '2018-09-22', '2018-09-15 04:08:49', 'Dhaka', 'Azz', 38, 31, 2, 23, 4, 2, 32, 6, 69, '<p>sadf as asd asdf</p>', '<p>sad fasd asd</p>', '<p>asd fasdf asfd</p>', '<p>as fasdf asdf sd</p>', '<p>as fasdf asd asfdadsf <br></p>', 2333, 'asdf22', 9, 5, 11, 8, '2018-09-15 08:09:59', '2018-09-15 16:09:55', NULL, NULL, NULL, NULL, NULL, 3),
(6, 5, 5, 4, 3, 'asdfa sdfasd', '2018-09-21', '2018-09-15 05:50:10', 'Dhaka', 'Azz', 46, 98, 2, 23, 23, 32, 21, 43, 144, '<p>af asdf asdf</p>', '<p>a fsdasd fasd</p>', '<p>af dasdf asdf</p>', '<p>as fdasd fasd</p>', '<p>a fasdfa sdf</p>', 3432, 'asfe', 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2018-09-15 06:09:20', 'adf asd', 99),
(7, 4, 3, 3, 2, 'asfdafsd', '2018-09-27', '2018-09-15 06:20:55', 'Dhaka', 'Azz', 78, 68, 23, 2, 32, 43, 23, 23, 146, '<p>adf asdf asd<br></p>', '<p>a fasdads<br></p>', '<p>a sdfasdf<br></p>', '<p>a sfdasd fads<br></p>', '<p>as fasdf asd<br></p>', 3234, 'asdf2', 9, 5, NULL, NULL, '2018-09-15 06:09:13', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 4, 3, 3, 2, 'Activities for coducted fo only kalyndo.. Edited , also M&E', '2018-09-22', '2018-09-15 20:17:07', 'Dhaka', 'Azz', 10, 13, 4, 3, 4, 5, 2, 5, 23, '<p>sdf asdf asd<br></p>', '<p>adsf asdf asd<br></p>', '<p>as fasdf asd<br></p>', '<p>a fasdf asdf<br></p>', '<p>a fasdf adsf<br></p>', 5000, 'asdf234', 9, 5, 11, 3, '2018-09-15 20:09:21', '2018-09-15 20:09:06', '2018-09-15 20:09:51', NULL, NULL, NULL, NULL, 100),
(9, 4, 3, 3, 5, 'afds', '2018-09-01', '2018-09-16 15:51:03', 'asasdf', 'adfs', 78, 35, 23, 2, 32, 10, 23, 23, 113, '<p>sf asd<br></p>', '<p>a sdfsd af<br></p>', '<p>sdf asdf<br></p>', '<p>as fdasf asd<br></p>', '<p>a sdfaf ads<br></p>', 5000, 'asdf234', 9, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ai_department`
--

CREATE TABLE `ai_department` (
  `id` int(11) NOT NULL,
  `dep_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_department`
--

INSERT INTO `ai_department` (`id`, `dep_name`) VALUES
(1, 'Computer Science'),
(2, 'Electrical Site'),
(3, 'New Department'),
(4, 'CIvil eng.');

-- --------------------------------------------------------

--
-- Table structure for table `ai_donor`
--

CREATE TABLE `ai_donor` (
  `id` int(11) NOT NULL,
  `don_name` varchar(255) NOT NULL,
  `don_startDate` varchar(255) NOT NULL,
  `don_endDate` varchar(255) NOT NULL,
  `don_reportingDate` varchar(255) NOT NULL,
  `don_grantValue` int(10) DEFAULT NULL,
  `don_cFinance` varchar(255) DEFAULT NULL,
  `don_currency` varchar(10) DEFAULT NULL,
  `don_grantLead` varchar(255) DEFAULT NULL,
  `sub-grante` varchar(255) DEFAULT NULL,
  `co_person_donor` tinytext NOT NULL,
  `co_person_aaz` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_donor`
--

INSERT INTO `ai_donor` (`id`, `don_name`, `don_startDate`, `don_endDate`, `don_reportingDate`, `don_grantValue`, `don_cFinance`, `don_currency`, `don_grantLead`, `sub-grante`, `co_person_donor`, `co_person_aaz`) VALUES
(1, 'USAID', '2018-06-05', '2018-11-23', '2018-11-16', 5000, 'afd as', 'Dolar', 'asdfasd', NULL, '', ''),
(2, 'UKAID', '2018-05-29', '2018-12-29', '2018-09-20', 40000, 'asdf', 'Dolar', 'asdfasd', NULL, '', ''),
(3, 'AUHC', '2018-09-01', '2018-09-03', '2018-09-13', 234, 'afd as', 'Dolar', '3432', 'afsd asd', 'faksdf \r\nasdf asd@gmail.com\r\nafd asdasfd a\r\nasdf', 'afd asdf asdf \r\na dsf\r\nasdf \r\nasdf aasdf');

-- --------------------------------------------------------

--
-- Table structure for table `ai_focusarea`
--

CREATE TABLE `ai_focusarea` (
  `id` int(11) NOT NULL,
  `foc_name` varchar(255) NOT NULL,
  `pri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_focusarea`
--

INSERT INTO `ai_focusarea` (`id`, `foc_name`, `pri_id`) VALUES
(1, ' Women\'s Access to and Control over productive Resources;', 1),
(2, 'Women\'s Decent Work and Unpaid Carework', 5),
(3, 'Food sovereignty and Argo-ecology', 4),
(4, 'new foucs', 4),
(5, 'Focus Area for Five', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ai_implementing_patner`
--

CREATE TABLE `ai_implementing_patner` (
  `id` int(11) NOT NULL,
  `imp_name` varchar(255) NOT NULL,
  `imp_mouStart` varchar(255) NOT NULL,
  `imp_mouEnd` varchar(255) NOT NULL,
  `imp_area` varchar(255) DEFAULT NULL,
  `imp_amount` int(10) DEFAULT NULL,
  `imp_reportingDate` varchar(255) DEFAULT NULL,
  `imp_contact` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_implementing_patner`
--

INSERT INTO `ai_implementing_patner` (`id`, `imp_name`, `imp_mouStart`, `imp_mouEnd`, `imp_area`, `imp_amount`, `imp_reportingDate`, `imp_contact`) VALUES
(1, 'Green and Justice', '2018-09-01', '2018-09-29', 'Pukasa', 8000, '2018-09-15', '665165'),
(2, 'Musele Nkisu Task force', '2018-09-01', '2018-09-30', 'Barisal', 2000, '2018-09-08', '665165'),
(3, 'Catholic Diocese of Ndola', '2018-09-01', '2018-09-30', 'Nodla', 3500, '2018-09-21', '665165'),
(4, 'new partner', '2018-09-04', '2018-09-18', 'Pukasa', 5000, '2018-09-28', '665165asdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `ai_indicators`
--

CREATE TABLE `ai_indicators` (
  `id` int(11) NOT NULL,
  `ind_name` text NOT NULL,
  `ind_definations` tinytext,
  `pri_id` int(11) NOT NULL,
  `foc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_indicators`
--

INSERT INTO `ai_indicators` (`id`, `ind_name`, `ind_definations`, `pri_id`, `foc_id`) VALUES
(1, 'Number of women and girls reporting adequate non-descriminatory access to economic opportunities and social services', NULL, 1, 1),
(2, 'Number of people reporting improvements in quality, gender and age responsiveness of public services being accesssed', NULL, 2, 1),
(3, 'Number of women and young people experiencing less livelihood chanllenges as a result of climate and social shocks', 'Enhanced resilience: increased capacity to recover quickly from difficulties or challenges', 4, 3),
(4, 'New Indicator for five', 'definitions here....', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ai_location`
--

CREATE TABLE `ai_location` (
  `id` int(11) NOT NULL,
  `loc_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_location`
--

INSERT INTO `ai_location` (`id`, `loc_name`) VALUES
(1, 'Khulna'),
(2, 'Dhaka'),
(3, 'Comilla');

-- --------------------------------------------------------

--
-- Table structure for table `ai_priorityarea`
--

CREATE TABLE `ai_priorityarea` (
  `id` int(11) NOT NULL,
  `pri_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_priorityarea`
--

INSERT INTO `ai_priorityarea` (`id`, `pri_name`) VALUES
(1, 'Priority One'),
(2, 'Priority Two'),
(3, 'Priority Three'),
(4, 'Priority Four'),
(5, 'Priority Five');

-- --------------------------------------------------------

--
-- Table structure for table `ai_projects`
--

CREATE TABLE `ai_projects` (
  `id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_grant` varchar(255) NOT NULL,
  `pro_desc` text,
  `priotiryId` int(10) NOT NULL,
  `donorId` int(10) NOT NULL,
  `patnerId` varchar(255) NOT NULL,
  `pro_contractNo` varchar(255) DEFAULT NULL,
  `userId` int(10) NOT NULL,
  `pro_date` varchar(255) NOT NULL,
  `flowId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_projects`
--

INSERT INTO `ai_projects` (`id`, `pro_name`, `pro_grant`, `pro_desc`, `priotiryId`, `donorId`, `patnerId`, `pro_contractNo`, `userId`, `pro_date`, `flowId`) VALUES
(1, 'First                          Project', '', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation <br> by H. Rackham</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 5, 2, 'Green and Justice;Musele Nkisu Task force;Catholic Diocese of Ndola;', '5', 1, '', NULL),
(2, 'New project', '', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or t<u><b>he obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</b></u></span></p><p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></p><p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to di<b>stinguish. In a free hour, when our power of choice is u</b>ntrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to t<span style=\"background-color: rgb(255, 255, 0);\">he claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</span></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><br></p>', 4, 1, '3;1', '53', 1, '2018-09-12 01:09:22', NULL),
(3, 'afdasd', '', '<p>asdfasd fadsf</p>', 1, 2, '3;1;2;4', '45', 1, '2018-09-13 17:09:15', NULL),
(4, 'First afds asdProject', 'afd a34afdsf', '<p>af asdf asdas dfasdf asdf asdf asdf a</p><p>adf asdf&nbsp;</p><p>asdf asdf asd asdf asdf adsf asdf asdf asdfasdfasd</p>', 5, 3, '3;1;4', '234', 1, '2018-09-17 17:09:38', NULL),
(5, 'Live project', 'afd a34afdsf', '<p>af asdf asdf a sdf asdf</p>', 4, 2, '3;4', '351351351351', 1, '2018-09-17 19:09:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-08-29 13:00:41', NULL),
(2, 'Sending Password', 'send_user_password', 'About Password', '<p>Hi Dear,</p><p>This is your secret password.</p><p>[password]</p><p><br></p><p>Thank you!</p><p>ActionAid</p>', '[possword]', NULL, 'actionAid@aid.com', NULL, '2018-09-17 10:14:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-08-29 13:05:05', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-08-30 07:04:14', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Some Title at Demo Test', '', 1, '2018-08-30 07:29:23', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Add More title at Demo Test', '', 1, '2018-08-30 07:36:23', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-08-30 07:39:44', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-08-30 07:40:50', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Max at Users Management', '', 1, '2018-08-30 07:42:42', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 2, '2018-08-30 07:43:22', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 2, '2018-08-30 07:43:41', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/delete/2', 'Delete data Max at Users Management', '', 1, '2018-08-30 07:43:54', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-08-30 07:46:43', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-08-30 07:49:54', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Someting at Demo Test', '', 1, '2018-08-30 07:51:15', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data max at Users Management', '', 1, '2018-08-30 07:53:06', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-30 07:53:29', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/users/edit-save/3', 'Update data Max at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>max</td><td>Max</td></tr><tr><td>password</td><td>$2y$10$f2htpplIZZLyhFewtu.6wurGaifHcykC6sOI55FXQNCgwcV4ucK.y</td><td>$2y$10$BNVbtNauaQAZO9rH28h.i.FUw4lq6vYSNYvCAg8JK6he0P4uydwpq</td></tr><tr><td>id_cms_privileges</td><td>3</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 3, '2018-08-30 07:53:46', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/users/delete-image', 'Try delete the image of Max data at Users Management', '', 3, '2018-08-30 07:53:50', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/1', 'Update data Demo Test at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2018-08-30 07:54:38', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Max Demo at Demo Test', '', 3, '2018-08-30 07:55:54', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-08-31 07:52:15', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/statistic_builder/add-save', 'Add New Data Graph Chart at Statistic Builder', '', 1, '2018-08-31 07:55:48', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data static at Menu Management', '', 1, '2018-08-31 08:44:15', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-31 08:44:34', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-31 09:42:20', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Jyan at Users Management', '', 1, '2018-08-31 10:27:08', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>mobile</td><td></td><td>8801969516500</td></tr><tr><td>man_number</td><td></td><td>adfsasdfasdf</td></tr><tr><td>location</td><td></td><td>Pupka</td></tr><tr><td>department</td><td></td><td>Electrical & Electronic Engineering</td></tr><tr><td>date_engeged</td><td></td><td>2018-03-01</td></tr><tr><td>date_beging</td><td></td><td>2018-08-01</td></tr><tr><td>date_expaire</td><td></td><td>2018-08-31</td></tr><tr><td>photo</td><td></td><td>uploads/1/2018-08/shariful.jpg</td></tr><tr><td>password</td><td>$2y$10$M81hvVVRH0..ufYigDNJ6eABr3lMGhxwhE88Drtt6tPVlUGlp6srW</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-08-31 10:32:57', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:02:54', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-08-31 11:03:32', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:03:50', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-31 11:04:43', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-31 11:05:12', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-08-31 11:25:34', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:25:46', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:28:46', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:29:07', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:30:40', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:31:20', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:32:05', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:32:21', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:38:07', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:41:03', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:41:25', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:43:20', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:44:39', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 11:56:53', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-08-31 11:57:49', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 12:01:41', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/statistic_builder/add-save', 'Add New Data Expire Date at Statistic Builder', '', 1, '2018-08-31 12:04:02', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/statistic_builder/edit-save/2', 'Update data Contract Expire at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Expire Date</td><td>Contract Expire</td></tr><tr><td>slug</td><td>expire-date</td><td></td></tr></tbody></table>', 1, '2018-08-31 12:04:18', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/statistic_builder/delete/2', 'Delete data Contract Expire at Statistic Builder', '', 1, '2018-08-31 12:23:43', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/users/edit-save/3', 'Update data Max at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>mobile</td><td></td><td>01931039338</td></tr><tr><td>man_number</td><td></td><td>asdf2</td></tr><tr><td>location</td><td></td><td>fa3</td></tr><tr><td>department</td><td></td><td>cse</td></tr><tr><td>password</td><td>$2y$10$BNVbtNauaQAZO9rH28h.i.FUw4lq6vYSNYvCAg8JK6he0P4uydwpq</td><td></td></tr><tr><td>contract_remaining</td><td>31</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 3, '2018-08-31 12:31:48', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Pob at Users Management', '', 1, '2018-08-31 12:50:23', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Richard at Users Management', '', 1, '2018-08-31 12:52:59', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Sad at Users Management', '', 1, '2018-08-31 12:54:08', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Joya at Users Management', '', 1, '2018-08-31 12:56:59', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-08-31 13:00:38', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-08-31 13:01:16', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-08-31 13:13:42', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-08-31 13:13:55', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-08-31 13:15:34', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-08-31 13:15:45', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-08-31 13:16:18', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-08-31 13:16:23', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-08-31 13:16:32', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-08-31 13:28:22', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/1', 'Update data Demo Test at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-08-31 13:28:58', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-08-31 13:36:33', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-08-31 13:38:24', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-08-31 13:54:33', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-08-31 13:55:40', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Kalyndo at Users Management', '', 1, '2018-08-31 14:01:01', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-08-31 14:01:33', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-08-31 14:01:58', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/1', 'Update data Demo Test at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-08-31 14:04:52', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Your Title at Demo Test', '', 9, '2018-08-31 14:05:56', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-08-31 14:07:15', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-08-31 14:07:20', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-08-31 14:09:02', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-08-31 14:09:07', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-08-31 14:10:14', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-08-31 14:14:12', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-01 08:53:36', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/3', 'Update data Department at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-th-list</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-09-01 08:57:35', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_department/add-save', 'Add New Data New Department at Department', '', 1, '2018-09-01 08:58:24', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_location/add-save', 'Add New Data Comilla at Location', '', 1, '2018-09-01 09:00:52', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Khatun at Users Management', '', 1, '2018-09-01 09:05:09', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-01 09:09:55', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Pob Message at Demo Test', '', 7, '2018-09-01 09:18:18', NULL),
(89, '::1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-01 09:20:16', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', ' logout', '', NULL, '2018-09-01 09:20:50', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-01 09:20:57', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-01 09:21:14', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-01 09:21:32', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-01 09:41:22', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-01 09:52:17', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-01 09:57:22', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-01 09:57:26', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-01 10:02:26', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-01 10:02:40', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-01 10:06:45', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-01 10:06:53', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Pob Message1 at Demo Test', '', 9, '2018-09-01 10:07:09', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-01 10:07:16', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-01 10:07:21', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Add More title at Demo Test', '', 1, '2018-09-01 10:31:12', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Some Title at Demo Test', '', 1, '2018-09-01 10:31:54', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/edit-save/2', 'Update data Add More title at Demo Test', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p></td><td><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC<br></h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><img src=\"http://localhost/actionaid/public/uploads/1/2018-09/0018e27258c34217795dbeb142cd58d7.jpg\" style=\"float: none;\"></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.<img src=\"http://localhost/actionaid/public/uploads/1/2018-09/a10d253115c05634fbc1624c5c89b1ca.jpg\"></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.<br></p></td></tr><tr><td>user_id</td><td>1</td><td></td></tr><tr><td>flow_id</td><td></td><td></td></tr><tr><td>comments</td><td></td><td></td></tr><tr><td>comment_by</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-01 11:46:43', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-01 12:13:16', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-01 12:14:02', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Add More title at Demo Test', '', 1, '2018-09-01 12:25:18', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-01 13:44:26', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-01 13:44:55', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-01 13:49:32', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-01 13:49:36', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-01 14:19:29', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-01 14:19:35', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-01 14:21:29', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-01 14:21:33', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_department/add-save', 'Add New Data CIvil eng. at Department', '', 1, '2018-09-01 14:34:33', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Richard got this activities at Demo Test', '', 7, '2018-09-01 14:39:47', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-01 14:40:05', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-01 14:40:11', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-01 14:42:51', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-01 14:42:56', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-01 14:43:08', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-01 14:43:13', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/edit-save/11', 'Update data Richard got this activities at Demo Test', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>7</td><td></td></tr><tr><td>rejected_comment</td><td>Some Comments by Richard.</td><td></td></tr><tr><td>rejected_date</td><td>2018-09-01 20:09:04</td><td></td></tr></tbody></table>', 7, '2018-09-01 14:46:27', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-02 06:55:41', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-02 07:04:49', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-02 07:45:35', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-02 07:45:58', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-02 07:47:00', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-02 07:47:24', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 07:27:30', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-03 07:38:49', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-03 07:45:59', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-03 07:46:04', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-03 07:46:37', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'joya@gmail.com login with IP Address ::1', '', 8, '2018-09-03 07:46:45', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/1', 'Update data Demo Test at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-09-03 07:47:25', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data Activities at Menu Management', '', 1, '2018-09-03 08:24:45', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/5', 'Update data Priority Area at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-tasks</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-03 08:25:38', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/6', 'Update data Activities at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-09-03 08:26:00', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_priorityarea/add-save', 'Add New Data Priority Three at Priority Area', '', 1, '2018-09-03 08:27:56', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_focusarea/add-save', 'Add New Data Food sovereignty and Argo-ecology at Focus Areas', '', 1, '2018-09-03 08:36:52', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/7', 'Update data Focus Areas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-heart</td><td>fa fa-tasks</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-03 08:37:35', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/5', 'Update data Priority Areas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Priority Area</td><td>Priority Areas</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-03 08:38:12', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/module_generator/delete/15', 'Delete data Priority Area at Module Generator', '', 1, '2018-09-03 09:22:47', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/module_generator/delete/16', 'Delete data Focus Areas at Module Generator', '', 1, '2018-09-03 09:22:56', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/module_generator/delete/17', 'Delete data Indicators at Module Generator', '', 1, '2018-09-03 09:23:06', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_priorityarea/add-save', 'Add New Data Priority Four at Priority Area', '', 1, '2018-09-03 09:25:10', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_focusarea/add-save', 'Add New Data new foucs at Focus Areas', '', 1, '2018-09-03 09:28:39', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_focusarea/edit-save/3', 'Update data Food sovereignty and Argo-ecology at Focus Areas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>3</td><td>4</td></tr></tbody></table>', 1, '2018-09-03 09:28:54', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-03 09:37:24', NULL),
(155, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:37:31', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:37:40', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:37:53', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(158, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:38:55', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:40:05', NULL),
(160, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:49:41', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-03 09:50:17', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-09-03 09:50:24', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-03 09:51:46', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:56:43', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 09:57:37', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-03 09:57:55', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-03 10:19:49', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 10:19:57', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_priorityarea/add-save', 'Add New Data Priority Five at Priority Area', '', 1, '2018-09-03 10:23:10', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_indicators/add-save', 'Add New Data Number of women and young people experiencing less livelihood chanllenges as a result of climate and social shocks at Indicators', '', 1, '2018-09-03 10:34:11', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Add New Data Support and link women, young people, their organizations and movements to advocate for effective implementation of laws and policies that promote CRSA, access to markets and adaptation to climate change. at Activities', '', 1, '2018-09-03 10:54:52', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/13', 'Update data Activities Lists at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Activities</td><td>Activities Lists</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-03 11:04:20', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 11:46:12', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-03 12:04:28', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_priorityarea/add-save', 'Add New Data  at Priority Area', '', 1, '2018-09-03 12:05:03', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_priorityarea/delete/6', 'Delete data  at Priority Area', '', 1, '2018-09-03 12:06:43', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data uploads/1/2018-09/koala.jpg at Demo Test', '', 1, '2018-09-03 12:12:58', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data uploads/1/me.docx at Demo Test', '', 1, '2018-09-03 12:16:19', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data asdfasdf|asfdasdf|asfasdfasdf at Demo Test', '', 1, '2018-09-03 12:31:51', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data  at Demo Test', '', 1, '2018-09-03 12:38:26', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data  at Demo Test', '', 1, '2018-09-03 12:44:21', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data fasd|asdfasdf|asdfasdf at Demo Test', '', 1, '2018-09-03 12:54:11', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/module_generator/delete/22', 'Delete data Activity Reports at Module Generator', '', 1, '2018-09-03 13:16:51', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 1, '2018-09-03 14:18:04', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_focusarea/add-save', 'Add New Data Focus Area for Five at Focus Areas', '', 1, '2018-09-03 14:34:15', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_indicators/add-save', 'Add New Data New Indicator for five at Indicators', '', 1, '2018-09-03 14:36:44', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Add New Data Name of the Activity... at Activities', '', 1, '2018-09-03 14:37:36', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 1, '2018-09-03 15:01:18', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/15', 'Update data Activities Reports at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-trash-o</td><td>fa fa-bar-chart-o</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-03 15:05:09', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-04 08:16:30', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 1, '2018-09-04 12:04:10', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 1, '2018-09-04 14:47:48', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/delete/3', 'Delete data 3 at Activities Reports', '', 1, '2018-09-04 15:05:09', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/delete/4', 'Delete data 4 at Activities Reports', '', 1, '2018-09-04 15:05:16', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-04 23:39:43', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 1, '2018-09-05 00:01:59', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/15', 'Update data Activities Reports at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-05 00:29:20', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-05 00:30:51', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-05 00:35:19', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-05 00:35:24', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/15', 'Update data Activities Reports at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-05 00:36:34', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-05 00:36:47', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-05 00:38:17', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-05 00:38:25', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-05 00:38:33', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-05 00:38:56', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-05 00:39:00', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-05 00:40:37', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-05 00:40:41', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-05 03:07:57', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-05 03:08:38', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 7, '2018-09-05 03:11:40', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data  at Demo Test', '', 7, '2018-09-05 03:33:40', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-05 04:52:22', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report/delete/2', 'Delete data 2 at Activities Reports', '', 7, '2018-09-05 04:53:57', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 7, '2018-09-05 05:05:22', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-05 05:07:13', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-05 05:07:18', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 16:39:44', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/sss/add-save', 'Add New Data  at sss', '', 1, '2018-09-05 16:58:02', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 17:12:22', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/admin/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 17:28:06', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/admin/public/admin/module_generator/delete/23', 'Delete data sss at Module Generator', '', 1, '2018-09-05 17:28:51', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/admin/public/admin/sss24/add-save', 'Add New Data 11 at sss', '', 1, '2018-09-05 17:29:16', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 17:44:59', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 17:46:38', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ttt/add-save', 'Add New Data  at ttt', '', 1, '2018-09-05 17:47:13', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-05 17:56:49', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 17:57:01', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/module_generator/delete/25', 'Delete data ttt at Module Generator', '', 1, '2018-09-05 17:57:11', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/module_generator/delete/24', 'Delete data sss at Module Generator', '', 1, '2018-09-05 17:57:16', NULL),
(232, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-05 18:00:53', NULL),
(233, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-05 18:00:59', NULL),
(234, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-05 18:12:24', NULL),
(235, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-05 18:12:30', NULL),
(236, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-05 18:17:12', NULL),
(237, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-05 18:17:17', NULL),
(238, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 9, '2018-09-05 18:37:08', NULL),
(239, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activity_report/edit-save/11', 'Update data  at Activities Reports', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>9</td><td></td></tr><tr><td>ar_at_attendence</td><td>uploads/9/5-php-bangla-tutorial-php-basic.pdf</td><td>uploads/uploads/9/5-php-bangla-tutorial-php-basic.pdf</td></tr><tr><td>ar_at_minute</td><td>uploads/9/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/9/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_status</td><td>1</td><td></td></tr></tbody></table>', 9, '2018-09-05 18:37:49', NULL),
(240, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-05 19:11:30', NULL),
(241, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 2 at Demo Test', '', 1, '2018-09-05 19:11:52', NULL),
(242, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/edit-save/11', 'Update data  at Activities Reports', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>9</td><td></td></tr><tr><td>ar_at_attendence</td><td>uploads/uploads/9/5-php-bangla-tutorial-php-basic.pdf</td><td>uploads/uploads/uploads/9/5-php-bangla-tutorial-php-basic.pdf</td></tr><tr><td>ar_at_minute</td><td>uploads/uploads/9/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/uploads/9/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_status</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-09-05 19:19:33', NULL),
(243, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/edit-save/10', 'Update data  at Activities Reports', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>7</td><td></td></tr><tr><td>ar_venue</td><td>Lukasa</td><td>Dhaka</td></tr><tr><td>ar_at_attendence</td><td>uploads/7/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/7/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_at_minute</td><td>uploads/7/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/7/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_status</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-09-05 19:19:48', NULL),
(244, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/edit-save/10', 'Update data  at Activities Reports', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>7</td><td></td></tr><tr><td>ar_at_attendence</td><td>uploads/uploads/7/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/uploads/7/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_at_minute</td><td>uploads/uploads/7/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/uploads/7/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_status</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-09-05 19:20:31', NULL),
(245, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report/edit-save/10', 'Update data  at Activities Reports', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>7</td><td></td></tr><tr><td>ar_ap_female</td><td>30</td><td>45</td></tr><tr><td>ar_ap_male</td><td>300</td><td>15</td></tr><tr><td>ar_at_attendence</td><td>uploads/uploads/uploads/7/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/uploads/uploads/7/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_at_minute</td><td>uploads/uploads/uploads/7/7__PHP___Database_bangla.pdf</td><td>uploads/uploads/uploads/uploads/7/7__PHP___Database_bangla.pdf</td></tr><tr><td>ar_status</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-09-05 19:21:48', NULL),
(246, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Quality Officer at Users Management', '', 1, '2018-09-06 00:07:47', NULL),
(247, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data New concept note at Activities Concept Note', '', 1, '2018-09-06 00:48:29', NULL),
(248, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/1', 'Update data New concept note at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_ap_female</td><td>10</td><td>110</td></tr><tr><td>userId</td><td>1</td><td></td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>acn_status</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-09-06 00:49:07', NULL),
(249, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', ' logout', '', NULL, '2018-09-06 03:07:44', NULL),
(250, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-06 03:07:58', NULL),
(251, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note', 'Try view the data :name at Activities Concept Note', '', 6, '2018-09-06 03:10:47', NULL),
(252, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/16', 'Update data Activities Concept Note at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-09-06 03:12:29', NULL),
(253, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note', 'Try view the data :name at Activities Concept Note', '', 6, '2018-09-06 03:13:17', NULL),
(254, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-06 03:13:26', NULL),
(255, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-06 03:13:31', NULL),
(256, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-06 03:55:05', NULL),
(257, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 03:55:13', NULL),
(258, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 04:09:25', NULL),
(259, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-06 04:09:49', NULL),
(260, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data Kalyndo Concept note at Activities Concept Note', '', 9, '2018-09-06 04:10:56', NULL),
(261, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-06 04:11:32', NULL),
(262, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 04:11:36', NULL),
(263, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 04:13:44', NULL),
(264, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-06 04:13:47', NULL),
(265, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-06 04:14:41', NULL),
(266, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 04:14:44', NULL),
(267, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 04:32:35', NULL),
(268, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-06 04:32:39', NULL),
(269, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-06 05:00:45', NULL),
(270, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 05:01:03', NULL),
(271, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 05:21:06', NULL),
(272, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-06 05:21:13', NULL),
(273, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-06 07:29:54', NULL),
(274, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-06 07:35:31', NULL),
(275, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-06 07:35:44', NULL),
(276, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/16', 'Update data Activities Concept Note at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-09-06 07:36:10', NULL),
(277, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note', 'Try view the data :name at Activities Concept Note', '', 11, '2018-09-06 07:36:47', NULL),
(278, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-06 07:36:53', NULL),
(279, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-06 07:36:57', NULL),
(280, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-06 07:41:58', NULL),
(281, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 07:42:05', NULL),
(282, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 07:42:17', NULL),
(283, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-06 07:42:21', NULL),
(284, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 07:54:28', NULL),
(285, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/2', 'Update data Kalyndo Concept notesa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Kalyndo Concept notes</td><td>Kalyndo Concept notesa</td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-06 10:09:02</td><td></td></tr><tr><td>rejected_comment</td><td>May be it\'s ok!</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-06 08:13:15', NULL),
(286, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/2', 'Update data Kalyndo Concept note at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Kalyndo Concept notesa</td><td>Kalyndo Concept note</td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-06 10:09:02</td><td></td></tr><tr><td>rejected_comment</td><td>May be it\'s ok!</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-06 09:23:23', NULL),
(287, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/2', 'Update data Kalyndo Concept notes at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-06 10:09:02</td><td></td></tr><tr><td>rejected_comment</td><td>May be it\'s ok!</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-06 09:37:48', NULL),
(288, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 09:51:43', NULL),
(289, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-06 09:51:47', NULL),
(290, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/2', 'Update data Kalyndo Concept note at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Kalyndo Concept notes</td><td>Kalyndo Concept note</td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-06 15:09:51</td><td></td></tr><tr><td>rejected_comment</td><td>Ki koro miya paro na...</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-06 09:55:11', NULL),
(291, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-06 10:24:02', NULL),
(292, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-06 10:24:14', NULL),
(293, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-06 11:13:53', NULL),
(294, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-06 11:14:32', NULL),
(295, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-06 11:22:16', NULL),
(296, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-06 11:22:43', NULL),
(297, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-06 11:22:58', NULL),
(298, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-06 11:23:08', NULL),
(299, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Try add the data asdf asd data at Activities', '', 11, '2018-09-06 11:34:27', NULL),
(300, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-06 13:07:00', NULL),
(301, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-06 13:07:13', NULL),
(302, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-08 07:35:05', NULL),
(303, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-08 07:36:45', NULL),
(304, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-08 07:41:35', NULL),
(305, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-08 07:41:41', NULL),
(306, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Try add the data asdf asdf asd data at Activities', '', 11, '2018-09-08 07:42:20', NULL),
(307, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-08 07:44:07', NULL),
(308, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-08 07:44:23', NULL),
(309, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Try add the data asdf asd data at Activities', '', 11, '2018-09-08 07:44:52', NULL),
(310, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Try add the data adsf asdf a data at Activities', '', 11, '2018-09-08 07:50:06', NULL),
(311, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-08 07:50:11', NULL),
(312, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-08 07:50:17', NULL),
(313, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/ai_activities/add-save', 'Add New Data asdf asdf at Activities', '', 11, '2018-09-08 07:50:41', NULL),
(314, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-08 10:53:22', NULL),
(315, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-08 10:53:51', NULL),
(316, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-08 11:37:44', NULL),
(317, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-09 00:52:39', NULL),
(318, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-09 00:53:39', NULL),
(319, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-09 01:24:06', NULL),
(320, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-09 08:04:33', NULL),
(321, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-09 08:05:22', NULL),
(322, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'joya@gmail.com login with IP Address ::1', '', 8, '2018-09-09 08:34:25', NULL),
(323, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/16', 'Update data Activities Concept Note at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-09-09 08:42:44', NULL),
(324, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note', 'Try view the data :name at Activities Concept Note', '', 8, '2018-09-09 08:43:10', NULL),
(325, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'joya@gmail.com logout', '', 8, '2018-09-09 08:43:28', NULL),
(326, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'joya@gmail.com login with IP Address ::1', '', 8, '2018-09-09 08:43:40', NULL),
(327, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-09 09:04:01', NULL),
(328, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-09 09:04:38', NULL),
(329, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/2', 'Update data Kalyndo Concept notes at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Kalyndo Concept note</td><td>Kalyndo Concept notes</td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td>8</td><td></td></tr><tr><td>line_date</td><td>2018-09-06 16:09:07</td><td></td></tr><tr><td>me_date</td><td>2018-09-09 14:09:53</td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td>6</td><td></td></tr><tr><td>rejected_by</td><td>8</td><td></td></tr><tr><td>rejected_date</td><td>2018-09-09 15:09:07</td><td></td></tr><tr><td>rejected_comment</td><td>There are something is wrong! please check and check again....</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-09 09:07:14', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(330, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-09 09:37:48', NULL),
(331, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-09 09:37:57', NULL),
(332, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-10 01:43:05', NULL),
(333, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-10 01:46:56', NULL),
(334, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-10 01:47:24', NULL),
(335, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-10 01:47:28', NULL),
(336, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-10 01:47:43', NULL),
(337, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-10 01:47:47', NULL),
(338, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-10 01:48:26', NULL),
(339, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data Some Concept Note for test.. at Activities Concept Note', '', 9, '2018-09-10 02:36:50', NULL),
(340, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-10 02:38:52', NULL),
(341, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-10 02:38:59', NULL),
(342, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/3', 'Update data Some Concept Note for test1 at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Some Concept Note for test..</td><td>Some Concept Note for test1</td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-10 08:09:38</td><td></td></tr><tr><td>rejected_comment</td><td>Something is not right!</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-10 02:41:34', NULL),
(343, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-10 02:43:14', NULL),
(344, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-10 02:43:24', NULL),
(345, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-10 02:57:39', NULL),
(346, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'jyan@gmail.com login with IP Address ::1', '', 4, '2018-09-10 02:58:10', NULL),
(347, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-10 03:24:44', NULL),
(348, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-10 06:05:21', NULL),
(349, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-10 06:06:11', NULL),
(350, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-10 06:07:11', NULL),
(351, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 9, '2018-09-10 06:15:05', NULL),
(352, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/13', 'Update data Activities Lists at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-tasks</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-09-10 06:30:42', NULL),
(353, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/9', 'Update data Priority Areas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-tasks</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-09-10 06:31:02', NULL),
(354, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/10', 'Update data Focus Areas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-tasks</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-09-10 06:31:24', NULL),
(355, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/12', 'Update data Indicators at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-tasks</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-09-10 06:31:36', NULL),
(356, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-10 07:32:31', NULL),
(357, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-10 07:32:44', NULL),
(358, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-10 10:44:37', NULL),
(359, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-10 10:44:59', NULL),
(360, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data Sad\'s Concept note will be go here.. at Activities Concept Note', '', 7, '2018-09-10 10:51:15', NULL),
(361, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-10 10:52:03', NULL),
(362, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-10 10:52:07', NULL),
(363, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-10 10:52:18', NULL),
(364, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-10 10:52:22', NULL),
(365, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here.. at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>1</td><td></td></tr></tbody></table>', 7, '2018-09-10 10:56:36', NULL),
(366, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here.. at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>1</td><td></td></tr></tbody></table>', 7, '2018-09-10 10:57:07', NULL),
(367, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'richard@gmail.com login with IP Address ::1', '', 6, '2018-09-10 10:59:05', NULL),
(368, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here.. at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-10 17:09:39</td><td></td></tr><tr><td>rejected_comment</td><td>Send me back...</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 7, '2018-09-10 11:09:04', NULL),
(369, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'richard@gmail.com logout', '', 6, '2018-09-10 11:43:52', NULL),
(370, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-10 11:43:55', NULL),
(371, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-10 11:45:45', NULL),
(372, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-10 11:45:51', NULL),
(373, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-10 11:47:42', NULL),
(374, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-10 11:47:44', NULL),
(375, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-10 11:49:41', NULL),
(376, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-10 11:49:44', NULL),
(377, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here.. at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-10 17:09:43</td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td>11</td><td></td></tr><tr><td>rejected_date</td><td>2018-09-10 17:09:24</td><td></td></tr><tr><td>rejected_comment</td><td>not right</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 7, '2018-09-10 11:50:45', NULL),
(378, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-10 11:51:55', NULL),
(379, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'joya@gmail.com login with IP Address ::1', '', 8, '2018-09-10 11:52:03', NULL),
(380, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here.. at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>line_date</td><td>2018-09-10 17:09:43</td><td></td></tr><tr><td>me_date</td><td>2018-09-10 17:09:31</td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-10 17:09:30</td><td></td></tr><tr><td>rejected_comment</td><td>joya rejected</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 7, '2018-09-10 11:52:54', NULL),
(381, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'joya@gmail.com logout', '', 8, '2018-09-10 11:54:12', NULL),
(382, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-10 11:54:18', NULL),
(383, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 7, '2018-09-10 11:56:17', NULL),
(384, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-10 11:56:29', NULL),
(385, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-10 11:56:38', NULL),
(386, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here.. at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>line_date</td><td>2018-09-10 17:09:43</td><td></td></tr><tr><td>me_date</td><td>2018-09-10 17:09:31</td><td></td></tr><tr><td>head_date</td><td>2018-09-10 17:09:22</td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>101</td><td></td></tr></tbody></table>', 7, '2018-09-10 11:57:44', NULL),
(387, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here..aa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Sad\'s Concept note will be go here..</td><td>Sad\'s Concept note will be go here..aa</td></tr><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>line_date</td><td>2018-09-10 17:09:43</td><td></td></tr><tr><td>me_date</td><td>2018-09-10 17:09:31</td><td></td></tr><tr><td>head_date</td><td>2018-09-10 17:09:22</td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>101</td><td></td></tr></tbody></table>', 7, '2018-09-10 11:58:01', NULL),
(388, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-10 13:39:19', NULL),
(389, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-10 13:39:49', NULL),
(390, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-11 01:31:35', NULL),
(391, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data Android;IOS at Demo Test', '', 1, '2018-09-11 03:46:39', NULL),
(392, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 300;200 at Demo Test', '', 1, '2018-09-11 03:51:12', NULL),
(393, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 351;200;510 at Demo Test', '', 1, '2018-09-11 03:56:36', NULL),
(394, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-11 06:49:38', NULL),
(395, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 300;450;510 at Demo Test', '', 1, '2018-09-11 06:54:35', NULL),
(396, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 300;450 at Demo Test', '', 1, '2018-09-11 06:59:55', NULL),
(397, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 300;200 at Demo Test', '', 1, '2018-09-11 07:00:56', NULL),
(398, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 5;2;6;4 at Demo Test', '', 1, '2018-09-11 07:24:46', NULL),
(399, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-11 18:03:09', NULL),
(400, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_donor/add-save', 'Add New Data USAID at Donors', '', 1, '2018-09-11 18:11:16', NULL),
(401, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_implementing_patner/add-save', 'Add New Data Green and Justice at Implementing Patner', '', 1, '2018-09-11 18:22:14', NULL),
(402, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_implementing_patner/add-save', 'Add New Data Musele Nkisu Task force at Implementing Patner', '', 1, '2018-09-11 18:23:15', NULL),
(403, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_implementing_patner/add-save', 'Add New Data Catholic Diocese of Ndola at Implementing Patner', '', 1, '2018-09-11 18:24:01', NULL),
(404, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_donor/add-save', 'Add New Data UKAID at Donors', '', 1, '2018-09-11 18:25:00', NULL),
(405, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/add-save', 'Add New Data First Project at Projects', '', 1, '2018-09-11 18:36:52', NULL),
(406, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/edit-save/1', 'Update data First Project at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>patnerId</td><td>1;2</td><td>3;2</td></tr></tbody></table>', 1, '2018-09-11 18:37:04', NULL),
(407, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data Partnerships at Menu Management', '', 1, '2018-09-11 18:41:04', NULL),
(408, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-11 18:42:52', NULL),
(409, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-11 18:42:58', NULL),
(410, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/20', 'Update data Partnerships at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2018-09-11 18:44:27', NULL),
(411, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-11 18:49:19', NULL),
(412, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/edit-save/1', 'Update data First Project at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pro_desc</td><td><p>af asfd asdf asdf asd</p></td><td><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p></td></tr><tr><td>userId</td><td>1</td><td></td></tr><tr><td>pro_date</td><td></td><td></td></tr><tr><td>flowId</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-11 19:21:25', NULL),
(413, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-11 19:33:18', NULL),
(414, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/add-save', 'Add New Data New project at Projects', '', 1, '2018-09-11 19:58:22', NULL),
(415, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/edit-save/2', 'Update data New project at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>patnerId</td><td>1;2</td><td>3;1</td></tr><tr><td>userId</td><td>1</td><td></td></tr><tr><td>pro_date</td><td>2018-09-12 01:09:22</td><td></td></tr><tr><td>flowId</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-11 19:59:10', NULL),
(416, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-12 08:52:06', NULL),
(417, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/statistic_builder/add-save', 'Add New Data Dashboard at Statistic Builder', '', 1, '2018-09-12 09:04:56', NULL),
(418, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/graph-chart</td><td>statistic_builder/show/dashboard</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-09-12 09:10:58', NULL),
(419, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'joya@gmail.com login with IP Address ::1', '', 8, '2018-09-12 09:11:29', NULL),
(420, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>static</td><td>Dashboard</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-09-12 09:12:41', NULL),
(421, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data Dashboard superadmin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Dashboard</td><td>Dashboard superadmin</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-09-12 09:13:19', NULL),
(422, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/2', 'Update data static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Dashboard superadmin</td><td>static</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-09-12 09:13:58', NULL),
(423, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data admin dashboard at Menu Management', '', 1, '2018-09-12 09:14:55', NULL),
(424, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/21', 'Update data admin dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/dashboard</td><td>statistic_builder/show/graph-chart</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 09:15:38', NULL),
(425, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data HOPP Dashboard at Menu Management', '', 1, '2018-09-12 09:16:24', NULL),
(426, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/22', 'Update data HOPP Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 09:16:39', NULL),
(427, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/21', 'Update data admin dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 09:16:47', NULL),
(428, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/22', 'Update data HOPP Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 09:17:18', NULL),
(429, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/22', 'Update data HOPP Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 09:54:59', NULL),
(430, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'joya@gmail.com logout', '', 8, '2018-09-12 09:59:14', NULL),
(431, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'jyan@gmail.com login with IP Address ::1', '', 4, '2018-09-12 09:59:28', NULL),
(432, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/statistic_builder/add-save', 'Add New Data Dashboard PC at Statistic Builder', '', 1, '2018-09-12 10:00:54', NULL),
(433, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data PC Dashboard at Menu Management', '', 1, '2018-09-12 10:03:23', NULL),
(434, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/23', 'Update data PC Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 10:03:42', NULL),
(435, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'jyan@gmail.com logout', '', 4, '2018-09-12 10:04:58', NULL),
(436, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-12 10:05:05', NULL),
(437, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-12 10:05:14', NULL),
(438, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-12 10:05:19', NULL),
(439, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-12 10:06:15', NULL),
(440, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-12 10:06:21', NULL),
(441, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/add-save', 'Add New Data CD Dashboard at Menu Management', '', 1, '2018-09-12 10:09:49', NULL),
(442, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/24', 'Update data CD Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 10:09:57', NULL),
(443, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/23', 'Update data PC Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 10:10:38', NULL),
(444, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/22', 'Update data HOPP Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 10:10:48', NULL),
(445, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/21', 'Update data admin dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-12 10:11:00', NULL),
(446, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-12 10:53:46', NULL),
(447, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-12 10:53:53', NULL),
(448, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-12 11:01:19', NULL),
(449, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-12 11:01:25', NULL),
(450, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-13 08:15:46', NULL),
(451, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-13 09:10:57', NULL),
(452, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-13 09:24:28', NULL),
(453, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/edit-save/12', 'Update data asdf asda at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>asdf asd</td><td>asdf asda</td></tr><tr><td>password</td><td>$2y$10$Eqoau9g8ol/bPd.R5LrHZucxPeKfz4pZvT95OXzY59/74iY1PsGb6</td><td></td></tr><tr><td>contract_remaining</td><td></td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-09-13 09:58:22', NULL),
(454, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-13 09:58:27', NULL),
(455, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-13 09:59:27', NULL),
(456, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/edit-save/13', 'Update data asdfaa at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>asdf</td><td>asdfaa</td></tr><tr><td>password</td><td>$2y$10$R26ShzKooP9xFKfDa06WPea3QsyWeG9hmDthXblL8497WFXe7wo7K</td><td></td></tr><tr><td>contract_remaining</td><td></td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-09-13 09:59:41', NULL),
(457, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-13 10:22:29', NULL),
(458, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-13 10:22:39', NULL),
(459, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_implementing_patner/add-save', 'Add New Data new partner at Implementing Patner', '', 1, '2018-09-13 11:13:58', NULL),
(460, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/add-save', 'Add New Data afdasd at Projects', '', 1, '2018-09-13 11:15:15', NULL),
(461, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/delete/13', 'Delete data asdfaa at Users Management', '', 1, '2018-09-13 11:34:11', NULL),
(462, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/delete/12', 'Delete data asdf asda at Users Management', '', 1, '2018-09-13 11:34:15', NULL),
(463, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Atiyer at Users Management', '', 1, '2018-09-13 11:50:00', NULL),
(464, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-14 19:35:23', NULL),
(465, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data asdfa sdfasd at Activities Concept Note', '', 1, '2018-09-14 22:08:49', NULL),
(466, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-14 22:10:36', NULL),
(467, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data asdfa sdfasds at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>asdfa sdfasd</td><td>asdfa sdfasds</td></tr><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>1</td><td></td></tr></tbody></table>', 9, '2018-09-14 22:11:36', NULL),
(468, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-14 22:13:23', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(469, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-14 22:13:31', NULL),
(470, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-14 22:15:21', NULL),
(471, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-14 22:15:25', NULL),
(472, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data asdfa sdfasdsa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>asdfa sdfasds</td><td>asdfa sdfasdsa</td></tr><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>meOfficer</td><td></td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td></td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_date</td><td>2018-09-15 04:09:44</td><td></td></tr><tr><td>rejected_comment</td><td>dsaf aasdf</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-14 22:16:40', NULL),
(473, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-14 22:16:48', NULL),
(474, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-14 22:16:54', NULL),
(475, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-14 22:17:20', NULL),
(476, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-14 22:17:25', NULL),
(477, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-14 22:17:43', NULL),
(478, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-14 22:17:49', NULL),
(479, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data asdfa sdfasdsa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>acn_ap_male</td><td>9</td><td>38</td></tr><tr><td>acn_ap_total</td><td>40</td><td>69</td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-15 04:09:06</td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td>11</td><td></td></tr><tr><td>rejected_date</td><td>2018-09-15 04:09:38</td><td></td></tr><tr><td>rejected_comment</td><td>af asdf asd</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-14 22:18:22', NULL),
(480, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-14 22:18:31', NULL),
(481, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-14 22:18:35', NULL),
(482, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-14 22:24:16', NULL),
(483, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-14 22:24:20', NULL),
(484, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data asdfa sdfasdsa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>acn_follow</td><td><p>as fasdf asd asfd</p></td><td><p>as fasdf asd asfdadsf <br></p></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-15 04:09:06</td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr></tbody></table>', 11, '2018-09-14 22:24:41', NULL),
(485, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/16', 'Update data Activities Concept Note at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-09-14 22:52:51', NULL),
(486, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/demo_test/add-save', 'Add New Data 1;6 at Demo Test', '', 1, '2018-09-14 23:07:53', NULL),
(487, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-14 23:14:28', NULL),
(488, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-14 23:14:32', NULL),
(489, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-14 23:14:57', NULL),
(490, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-14 23:15:02', NULL),
(491, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-14 23:44:09', NULL),
(492, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-14 23:44:12', NULL),
(493, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data asdfa sdfasdsa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-15 04:09:06</td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr></tbody></table>', 9, '2018-09-14 23:44:29', NULL),
(494, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-14 23:44:36', NULL),
(495, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-14 23:44:41', NULL),
(496, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/2', 'Update data Kalyndo Concept notes at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>0</td><td>4</td></tr><tr><td>foc_id</td><td>0</td><td>3</td></tr><tr><td>ind_id</td><td>0</td><td>3</td></tr><tr><td>p_act_id</td><td>0</td><td>5</td></tr><tr><td>current_date</td><td>2018-09-10 18:37:55</td><td></td></tr><tr><td>acn_ap_male</td><td>10</td><td>17</td></tr><tr><td>acn_ap_female</td><td>20</td><td>13</td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td>8</td><td></td></tr><tr><td>line_date</td><td>2018-09-06 16:09:07</td><td></td></tr><tr><td>me_date</td><td>2018-09-09 14:09:53</td><td></td></tr><tr><td>head_date</td><td>2018-09-09 15:09:57</td><td></td></tr><tr><td>act_id</td><td>6</td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>100</td><td></td></tr></tbody></table>', 1, '2018-09-14 23:46:40', NULL),
(497, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-14 23:47:21', NULL),
(498, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-14 23:47:26', NULL),
(499, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-14 23:48:30', NULL),
(500, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'sad@gmail.com login with IP Address ::1', '', 7, '2018-09-14 23:48:41', NULL),
(501, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/4', 'Update data Sad\'s Concept note will be go here..aa at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>current_date</td><td>2018-09-10 22:51:15</td><td></td></tr><tr><td>acn_ap_male</td><td>38</td><td>25</td></tr><tr><td>acn_ap_female</td><td>15</td><td>28</td></tr><tr><td>userId</td><td>7</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>line_date</td><td>2018-09-10 17:09:43</td><td></td></tr><tr><td>me_date</td><td>2018-09-10 17:09:31</td><td></td></tr><tr><td>head_date</td><td>2018-09-10 17:09:22</td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>101</td><td></td></tr></tbody></table>', 7, '2018-09-14 23:49:14', NULL),
(502, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data asdfa sdfasd at Activities Concept Note', '', 7, '2018-09-14 23:50:10', NULL),
(503, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'sad@gmail.com logout', '', 7, '2018-09-14 23:50:51', NULL),
(504, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-14 23:50:59', NULL),
(505, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/3', 'Update data Some Concept Note for test at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>0</td><td>4</td></tr><tr><td>foc_id</td><td>0</td><td>3</td></tr><tr><td>ind_id</td><td>0</td><td>3</td></tr><tr><td>p_act_id</td><td>0</td><td>2</td></tr><tr><td>acn_name</td><td>Some Concept Note for test1</td><td>Some Concept Note for test</td></tr><tr><td>current_date</td><td>2018-09-10 18:37:55</td><td></td></tr><tr><td>acn_ap_male</td><td>40</td><td>30</td></tr><tr><td>acn_ap_female</td><td>20</td><td>30</td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-10 08:09:11</td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr></tbody></table>', 9, '2018-09-14 23:52:54', NULL),
(506, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data asfdafsd at Activities Concept Note', '', 9, '2018-09-15 00:20:55', NULL),
(507, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-15 00:33:00', NULL),
(508, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-15 00:33:04', NULL),
(509, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-15 00:33:25', NULL),
(510, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-15 00:33:30', NULL),
(511, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-15 02:52:33', NULL),
(512, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-15 02:55:36', NULL),
(513, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-15 02:57:37', NULL),
(514, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-15 02:57:50', NULL),
(515, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-15 02:59:32', NULL),
(516, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-15 03:01:02', NULL),
(517, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-15 03:01:06', NULL),
(518, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data  at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>5</td><td></td></tr><tr><td>foc_id</td><td>5</td><td></td></tr><tr><td>ind_id</td><td>4</td><td></td></tr><tr><td>acn_name</td><td>asdfa sdfasdsa</td><td></td></tr><tr><td>acn_date</td><td>2018-09-22</td><td></td></tr><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>acn_venue</td><td>Dhaka</td><td></td></tr><tr><td>acn_implementUnit</td><td>Azz</td><td></td></tr><tr><td>acn_ap_male</td><td>38</td><td></td></tr><tr><td>acn_ap_female</td><td>31</td><td></td></tr><tr><td>acn_ap_child_m</td><td>2</td><td></td></tr><tr><td>acn_ap_child_f</td><td>23</td><td></td></tr><tr><td>acn_ap_youth_m</td><td>4</td><td></td></tr><tr><td>acn_ap_youth_f</td><td>2</td><td></td></tr><tr><td>acn_ap_adult_m</td><td>32</td><td></td></tr><tr><td>acn_ap_adult_f</td><td>6</td><td></td></tr><tr><td>acn_ap_total</td><td>69</td><td></td></tr><tr><td>acn_aim</td><td><p>sadf as asd asdf</p></td><td></td></tr><tr><td>acn_objective</td><td><p>sad fasd asd</p></td><td></td></tr><tr><td>acn_ies</td><td><p>asd fasdf asfd</p></td><td></td></tr><tr><td>acn_outcome</td><td><p>as fasdf asdf sd</p></td><td></td></tr><tr><td>acn_follow</td><td><p>as fasdf asd asfdadsf <br></p></td><td></td></tr><tr><td>acn_budget</td><td>2333</td><td></td></tr><tr><td>acn_budgetCode</td><td>asdf22</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>lineManager</td><td>5</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-15 08:09:59</td><td></td></tr><tr><td>me_date</td><td></td><td>2018-09-15 09:09:26</td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>2</td><td>3</td></tr></tbody></table>', 11, '2018-09-15 03:03:26', NULL),
(519, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', ' logout', '', NULL, '2018-09-15 03:04:00', NULL),
(520, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-09-15 03:04:10', NULL),
(521, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/3', 'Update data  at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>4</td><td></td></tr><tr><td>p_act_id</td><td>2</td><td></td></tr><tr><td>acn_name</td><td>Some Concept Note for test</td><td></td></tr><tr><td>acn_date</td><td>2018-09-15</td><td></td></tr><tr><td>current_date</td><td>2018-09-10 18:37:55</td><td></td></tr><tr><td>acn_venue</td><td>Khulna</td><td></td></tr><tr><td>acn_implementUnit</td><td>Azz</td><td></td></tr><tr><td>acn_ap_male</td><td>30</td><td></td></tr><tr><td>acn_ap_female</td><td>30</td><td></td></tr><tr><td>acn_ap_child_m</td><td>10</td><td></td></tr><tr><td>acn_ap_child_f</td><td>10</td><td></td></tr><tr><td>acn_ap_youth_m</td><td>10</td><td></td></tr><tr><td>acn_ap_youth_f</td><td>10</td><td></td></tr><tr><td>acn_ap_adult_m</td><td>10</td><td></td></tr><tr><td>acn_ap_adult_f</td><td>10</td><td></td></tr><tr><td>acn_ap_total</td><td>60</td><td></td></tr><tr><td>acn_aim</td><td><p>asdkf halskdf halsdf adsf asd<br></p></td><td></td></tr><tr><td>acn_objective</td><td><p>asdf asdf asdf asdf ads<br></p></td><td></td></tr><tr><td>acn_ies</td><td><p>a fasfd asdf asdf asd<br></p></td><td></td></tr><tr><td>acn_outcome</td><td><p>asdf asdf asdf asdf asf<br></p></td><td></td></tr><tr><td>acn_follow</td><td><p>asdf asdf asdf asdf<br></p></td><td></td></tr><tr><td>acn_budget</td><td>5000</td><td></td></tr><tr><td>acn_budgetCode</td><td>3sukl</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>lineManager</td><td>5</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td>3</td></tr><tr><td>line_date</td><td>2018-09-10 08:09:11</td><td></td></tr><tr><td>me_date</td><td></td><td>2018-09-15 09:09:08</td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>2</td><td>3</td></tr></tbody></table>', 11, '2018-09-15 03:08:08', NULL),
(522, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-15 10:04:58', NULL),
(523, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/3', 'Update data  at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>4</td><td></td></tr><tr><td>p_act_id</td><td>2</td><td></td></tr><tr><td>acn_name</td><td>Some Concept Note for test</td><td></td></tr><tr><td>acn_date</td><td>2018-09-15</td><td></td></tr><tr><td>current_date</td><td>2018-09-10 18:37:55</td><td></td></tr><tr><td>acn_venue</td><td>Khulna</td><td></td></tr><tr><td>acn_implementUnit</td><td>Azz</td><td></td></tr><tr><td>acn_ap_male</td><td>30</td><td></td></tr><tr><td>acn_ap_female</td><td>30</td><td></td></tr><tr><td>acn_ap_child_m</td><td>10</td><td></td></tr><tr><td>acn_ap_child_f</td><td>10</td><td></td></tr><tr><td>acn_ap_youth_m</td><td>10</td><td></td></tr><tr><td>acn_ap_youth_f</td><td>10</td><td></td></tr><tr><td>acn_ap_adult_m</td><td>10</td><td></td></tr><tr><td>acn_ap_adult_f</td><td>10</td><td></td></tr><tr><td>acn_ap_total</td><td>60</td><td></td></tr><tr><td>acn_aim</td><td><p>asdkf halskdf halsdf adsf asd<br></p></td><td></td></tr><tr><td>acn_objective</td><td><p>asdf asdf asdf asdf ads<br></p></td><td></td></tr><tr><td>acn_ies</td><td><p>a fasfd asdf asdf asd<br></p></td><td></td></tr><tr><td>acn_outcome</td><td><p>asdf asdf asdf asdf asf<br></p></td><td></td></tr><tr><td>acn_follow</td><td><p>asdf asdf asdf asdf<br></p></td><td></td></tr><tr><td>acn_budget</td><td>5000</td><td></td></tr><tr><td>acn_budgetCode</td><td>3sukl</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>lineManager</td><td>5</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td>3</td></tr><tr><td>line_date</td><td>2018-09-10 08:09:11</td><td></td></tr><tr><td>me_date</td><td>2018-09-15 09:09:08</td><td>2018-09-15 16:09:24</td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>2</td><td>3</td></tr></tbody></table>', 11, '2018-09-15 10:07:24', NULL),
(524, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/3', 'Update data  at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pri_id</td><td>4</td><td></td></tr><tr><td>p_act_id</td><td>2</td><td></td></tr><tr><td>acn_name</td><td>Some Concept Note for test</td><td></td></tr><tr><td>acn_date</td><td>2018-09-15</td><td></td></tr><tr><td>current_date</td><td>2018-09-10 18:37:55</td><td></td></tr><tr><td>acn_venue</td><td>Khulna</td><td></td></tr><tr><td>acn_implementUnit</td><td>Azz</td><td></td></tr><tr><td>acn_ap_male</td><td>30</td><td></td></tr><tr><td>acn_ap_female</td><td>30</td><td></td></tr><tr><td>acn_ap_child_m</td><td>10</td><td></td></tr><tr><td>acn_ap_child_f</td><td>10</td><td></td></tr><tr><td>acn_ap_youth_m</td><td>10</td><td></td></tr><tr><td>acn_ap_youth_f</td><td>10</td><td></td></tr><tr><td>acn_ap_adult_m</td><td>10</td><td></td></tr><tr><td>acn_ap_adult_f</td><td>10</td><td></td></tr><tr><td>acn_ap_total</td><td>60</td><td></td></tr><tr><td>acn_aim</td><td><p>asdkf halskdf halsdf adsf asd<br></p></td><td></td></tr><tr><td>acn_objective</td><td><p>asdf asdf asdf asdf ads<br></p></td><td></td></tr><tr><td>acn_ies</td><td><p>a fasfd asdf asdf asd<br></p></td><td></td></tr><tr><td>acn_outcome</td><td><p>asdf asdf asdf asdf asf<br></p></td><td></td></tr><tr><td>acn_follow</td><td><p>asdf asdf asdf asdf<br></p></td><td></td></tr><tr><td>acn_budget</td><td>5000</td><td></td></tr><tr><td>acn_budgetCode</td><td>3sukl</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>lineManager</td><td>5</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td>3</td></tr><tr><td>line_date</td><td>2018-09-10 08:09:11</td><td></td></tr><tr><td>me_date</td><td>2018-09-15 16:09:24</td><td>2018-09-15 16:09:00</td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr><tr><td>acn_status</td><td>2</td><td>3</td></tr></tbody></table>', 11, '2018-09-15 10:12:00', NULL),
(525, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/5', 'Update data Update by M&E at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>asdfa sdfasdsa</td><td>Update by M&E</td></tr><tr><td>current_date</td><td>2018-09-15 10:08:49</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td>8</td></tr><tr><td>line_date</td><td>2018-09-15 08:09:59</td><td></td></tr><tr><td>me_date</td><td>2018-09-15 09:09:26</td><td>2018-09-15 16:09:55</td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr></tbody></table>', 11, '2018-09-15 10:15:55', NULL),
(526, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-09-15 10:56:18', NULL),
(527, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-09-15 10:56:37', NULL),
(528, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-15 10:56:50', NULL),
(529, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-15 10:56:57', NULL),
(530, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-15 10:57:01', NULL),
(531, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report/action-selected', 'Delete data 12,11 at Activities Reports', '', 9, '2018-09-15 10:57:27', NULL),
(532, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/module_generator/delete/22', 'Delete data Activities Reports at Module Generator', '', 1, '2018-09-15 11:09:22', NULL),
(533, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 9, '2018-09-15 13:49:40', NULL),
(534, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/menu_management/edit-save/25', 'Update data Activities Reports at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2018-09-15 14:11:06', NULL),
(535, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data Activities for coducted fo only kalyndo.. at Activities Concept Note', '', 9, '2018-09-15 14:17:07', NULL),
(536, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'admin@gmail.com logout', '', 1, '2018-09-15 14:19:20', NULL),
(537, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-15 14:19:28', NULL),
(538, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-15 14:20:57', NULL),
(539, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'me@gmail.com login with IP Address ::1', '', 11, '2018-09-15 14:21:04', NULL),
(540, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/8', 'Update data Activities for coducted fo only kalyndo.. Edited at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Activities for coducted fo only kalyndo..</td><td>Activities for coducted fo only kalyndo.. Edited</td></tr><tr><td>current_date</td><td>2018-09-16 02:17:07</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td></td></tr><tr><td>line_date</td><td>2018-09-15 20:09:21</td><td></td></tr><tr><td>me_date</td><td></td><td></td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td>11</td><td></td></tr><tr><td>rejected_date</td><td>2018-09-15 20:09:19</td><td></td></tr><tr><td>rejected_comment</td><td>afd asdf asd</td><td></td></tr><tr><td>acn_status</td><td>99</td><td></td></tr></tbody></table>', 9, '2018-09-15 14:21:50', NULL),
(541, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_concept_note/edit-save/8', 'Update data Activities for coducted fo only kalyndo.. Edited , also M&E at Activities Concept Note', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>acn_name</td><td>Activities for coducted fo only kalyndo.. Edited</td><td>Activities for coducted fo only kalyndo.. Edited , also M&E</td></tr><tr><td>current_date</td><td>2018-09-16 02:17:07</td><td></td></tr><tr><td>userId</td><td>9</td><td></td></tr><tr><td>meOfficer</td><td>11</td><td></td></tr><tr><td>headOfficer</td><td></td><td>3</td></tr><tr><td>line_date</td><td>2018-09-15 20:09:21</td><td></td></tr><tr><td>me_date</td><td></td><td>2018-09-15 20:09:06</td></tr><tr><td>head_date</td><td></td><td></td></tr><tr><td>act_id</td><td></td><td></td></tr><tr><td>rejected_by</td><td></td><td></td></tr><tr><td>rejected_date</td><td></td><td></td></tr><tr><td>rejected_comment</td><td></td><td></td></tr></tbody></table>', 11, '2018-09-15 14:23:06', NULL),
(542, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'me@gmail.com logout', '', 11, '2018-09-15 14:23:22', NULL),
(543, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'max@gmail.com login with IP Address ::1', '', 3, '2018-09-15 14:23:28', NULL),
(544, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 9, '2018-09-15 14:25:40', NULL),
(545, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'max@gmail.com logout', '', 3, '2018-09-15 14:27:17', NULL),
(546, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-15 14:27:26', NULL),
(547, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-15 14:27:35', NULL),
(548, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-15 14:27:47', NULL),
(549, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-15 14:28:06', NULL),
(550, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-15 14:28:19', NULL),
(551, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data Kajol at Users Management', '', 1, '2018-09-15 14:31:50', NULL),
(552, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/edit-save/2', 'Update data New project at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>donorId</td><td>2</td><td>1</td></tr><tr><td>pro_date</td><td>2018-09-12 01:09:22</td><td></td></tr><tr><td>flowId</td><td></td><td></td></tr></tbody></table>', 1, '2018-09-15 14:57:07', NULL),
(553, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-16 09:45:37', NULL),
(554, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-16 09:46:06', NULL),
(555, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 5, '2018-09-16 09:46:48', NULL),
(556, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-16 09:46:52', NULL),
(557, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-16 09:46:57', NULL),
(558, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'pob@gmail.com logout', '', 5, '2018-09-16 09:49:59', NULL),
(559, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-16 09:50:03', NULL),
(560, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 9, '2018-09-16 09:50:06', NULL),
(561, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_concept_note/add-save', 'Add New Data afds at Activities Concept Note', '', 9, '2018-09-16 09:51:03', NULL),
(562, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-16 09:51:16', NULL),
(563, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'pob@gmail.com login with IP Address ::1', '', 5, '2018-09-16 09:51:46', NULL),
(564, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-17 09:42:21', NULL),
(565, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 9, '2018-09-17 09:42:27', NULL),
(566, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report', 'Try view the data :name at Activities Reports', '', 9, '2018-09-17 09:42:34', NULL),
(567, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-17 09:42:41', NULL),
(568, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/logout', 'kalyndo@gmail.com logout', '', 9, '2018-09-17 09:43:24', NULL),
(569, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/login', 'kalyndo@gmail.com login with IP Address ::1', '', 9, '2018-09-17 09:43:27', NULL),
(570, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/actionaid/public/admin/ai_activity_report/add-save', 'Add New Data  at Activities Reports', '', 9, '2018-09-17 09:58:34', NULL),
(571, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/users/add-save', 'Add New Data adsf a at Users Management', '', 1, '2018-09-17 10:03:32', NULL),
(572, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/email_templates/add-save', 'Add New Data Sending Password at Email Templates', '', 1, '2018-09-17 10:14:27', NULL),
(573, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_donor/add-save', 'Add New Data AUHC at Donors', '', 1, '2018-09-17 11:43:59', NULL),
(574, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/add-save', 'Add New Data First afds asdProject at Projects', '', 1, '2018-09-17 11:59:38', NULL),
(575, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-17 13:16:23', NULL),
(576, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/ai_projects/add-save', 'Add New Data Live project at Projects', '', 1, '2018-09-17 13:34:03', NULL),
(577, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/actionaid/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 1, '2018-09-18 06:39:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Demo Test', 'Route', 'AdminDemoTestControllerGetIndex', 'normal', 'fa fa-th-large', 0, 1, 0, 1, 3, '2018-08-30 07:24:01', '2018-09-03 07:47:25'),
(2, 'static', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-heart', 0, 1, 0, 1, 2, '2018-08-31 08:44:14', '2018-09-12 09:13:57'),
(3, 'Department', 'Route', 'AdminAiDepartmentControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 4, '2018-09-01 08:56:36', '2018-09-01 08:57:35'),
(4, 'Location', 'Route', 'AdminAiLocationControllerGetIndex', NULL, 'fa fa-search', 0, 1, 0, 1, 5, '2018-09-01 09:00:14', NULL),
(6, 'Activities', 'URL', '#', 'green', 'fa fa-external-link', 0, 1, 0, 1, 1, '2018-09-03 08:24:44', '2018-09-03 08:26:00'),
(9, 'Priority Areas', 'Route', 'AdminAiPriorityareaControllerGetIndex', 'normal', 'fa fa-angle-double-right', 6, 1, 0, 1, 2, '2018-09-03 09:24:06', '2018-09-10 06:31:02'),
(10, 'Focus Areas', 'Route', 'AdminAiFocusareaControllerGetIndex', 'normal', 'fa fa-angle-double-right', 6, 1, 0, 1, 3, '2018-09-03 09:25:42', '2018-09-10 06:31:24'),
(12, 'Indicators', 'Route', 'AdminAiIndicatorsControllerGetIndex', 'normal', 'fa fa-angle-double-right', 6, 1, 0, 1, 4, '2018-09-03 10:24:23', '2018-09-10 06:31:36'),
(13, 'Activities Lists', 'Route', 'AdminAiActivitiesControllerGetIndex', 'normal', 'fa fa-angle-double-right', 6, 1, 0, 1, 1, '2018-09-03 10:37:13', '2018-09-10 06:30:42'),
(16, 'Activities Concept Note', 'Route', 'AdminAiConceptNoteControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 7, '2018-09-06 00:09:19', '2018-09-14 22:52:51'),
(17, 'Donors', 'Route', 'AdminAiDonorControllerGetIndex', NULL, 'fa fa-money', 20, 1, 0, 1, 1, '2018-09-11 18:05:23', NULL),
(18, 'Implementing Patner', 'Route', 'AdminAiImplementingPatnerControllerGetIndex', NULL, 'fa fa-user-secret', 20, 1, 0, 1, 2, '2018-09-11 18:15:24', NULL),
(19, 'Projects', 'Route', 'AdminAiProjectsControllerGetIndex', NULL, 'fa fa-cubes', 0, 1, 0, 1, 8, '2018-09-11 18:28:03', NULL),
(20, 'Partnerships', 'URL', '#', 'normal', 'fa fa-group', 0, 1, 0, 1, 9, '2018-09-11 18:41:04', '2018-09-11 18:44:27'),
(21, 'admin dashboard', 'Statistic', 'statistic_builder/show/graph-chart', 'normal', 'fa fa-heart', 0, 1, 1, 1, NULL, '2018-09-12 09:14:55', '2018-09-12 10:11:00'),
(22, 'HOPP Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-envelope-o', 0, 1, 1, 1, NULL, '2018-09-12 09:16:24', '2018-09-12 10:10:48'),
(23, 'PC Dashboard', 'Statistic', 'statistic_builder/show/dashboard-pc', 'normal', 'fa fa-glass', 0, 1, 1, 1, NULL, '2018-09-12 10:03:23', '2018-09-12 10:10:37'),
(24, 'CD Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-glass', 0, 1, 1, 1, NULL, '2018-09-12 10:09:49', '2018-09-12 10:09:57'),
(25, 'Activities Reports', 'Route', 'AdminAiActivityReportControllerGetIndex', 'normal', 'fa fa-bar-chart', 0, 1, 0, 1, 10, '2018-09-15 11:12:09', '2018-09-15 14:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(17, 3, 1),
(18, 4, 1),
(19, 1, 3),
(20, 1, 5),
(21, 1, 10),
(22, 1, 11),
(23, 1, 1),
(27, 6, 1),
(29, 7, 1),
(30, 5, 1),
(31, 8, 1),
(34, 11, 1),
(38, 14, 1),
(43, 15, 10),
(44, 15, 11),
(45, 15, 1),
(47, 17, 1),
(48, 18, 1),
(63, 13, 1),
(64, 9, 1),
(65, 10, 1),
(66, 12, 1),
(67, 17, 1),
(68, 18, 1),
(69, 19, 1),
(71, 20, 1),
(75, 2, 1),
(88, NULL, 2),
(89, 24, 2),
(90, 23, 10),
(91, 23, 11),
(92, 22, 5),
(93, 22, 6),
(94, 21, 1),
(95, 16, 3),
(96, 16, 5),
(97, 16, 10),
(98, 16, 13),
(99, 16, 11),
(100, 16, 1),
(102, 25, 10),
(103, 25, 11),
(104, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-08-29 13:00:40', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-08-29 13:00:40', NULL, NULL),
(12, 'Demo Test', 'fa fa-th-large', 'demo_test', 'demo_test', 'AdminDemoTestController', 0, 0, '2018-08-30 07:24:01', NULL, NULL),
(13, 'Department', 'fa fa-glass', 'ai_department', 'ai_department', 'AdminAiDepartmentController', 0, 0, '2018-09-01 08:56:35', NULL, NULL),
(14, 'Location', 'fa fa-search', 'ai_location', 'ai_location', 'AdminAiLocationController', 0, 0, '2018-09-01 09:00:14', NULL, NULL),
(15, 'Priority Area', 'fa fa-glass', 'ai_priorityarea', 'ai_priorityarea', 'AdminAiPriorityareaController', 0, 0, '2018-09-03 08:19:55', NULL, '2018-09-03 09:22:47'),
(16, 'Focus Areas', 'fa fa-heart', 'ai_focusarea', 'ai_focusarea', 'AdminAiFocusareaController', 0, 0, '2018-09-03 08:29:30', NULL, '2018-09-03 09:22:57'),
(17, 'Indicators', 'fa fa-heart', 'ai_indicators', 'ai_indicators', 'AdminAiIndicatorsController', 0, 0, '2018-09-03 08:39:07', NULL, '2018-09-03 09:23:06'),
(18, 'Priority Areas', 'fa fa-tasks', 'ai_priorityarea', 'ai_priorityarea', 'AdminAiPriorityareaController', 0, 0, '2018-09-03 09:24:06', NULL, NULL),
(19, 'Focus Areas', 'fa fa-tasks', 'ai_focusarea', 'ai_focusarea', 'AdminAiFocusareaController', 0, 0, '2018-09-03 09:25:42', NULL, NULL),
(20, 'Indicators', 'fa fa-tasks', 'ai_indicators', 'ai_indicators', 'AdminAiIndicatorsController', 0, 0, '2018-09-03 10:24:23', NULL, NULL),
(21, 'Activities', 'fa fa-tasks', 'ai_activities', 'ai_activities', 'AdminAiActivitiesController', 0, 0, '2018-09-03 10:37:12', NULL, NULL),
(26, 'Activities Concept Note', 'fa fa-list-alt', 'ai_concept_note', 'ai_concept_note', 'AdminAiConceptNoteController', 0, 0, '2018-09-06 00:09:18', NULL, NULL),
(27, 'Donors', 'fa fa-money', 'ai_donor', 'ai_donor', 'AdminAiDonorController', 0, 0, '2018-09-11 18:05:23', NULL, NULL),
(28, 'Implementing Patner', 'fa fa-user-secret', 'ai_implementing_patner', 'ai_implementing_patner', 'AdminAiImplementingPatnerController', 0, 0, '2018-09-11 18:15:24', NULL, NULL),
(29, 'Projects', 'fa fa-cubes', 'ai_projects', 'ai_projects', 'AdminAiProjectsController', 0, 0, '2018-09-11 18:28:03', NULL, NULL),
(30, 'Activities Reports', 'fa fa-bar-chart', 'ai_activity_report', 'ai_activity_report', 'AdminAiActivityReportController', 0, 0, '2018-09-15 11:12:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(85, 5, 'A rejected concept is back to review again...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 1, '2018-09-14 22:16:40', '2018-09-15 04:16:40'),
(86, 11, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 1, '2018-09-14 22:17:06', '2018-09-15 04:17:06'),
(87, 9, 'Your concept note is rejected!...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 1, '2018-09-14 22:17:38', '2018-09-15 04:17:38'),
(88, 11, 'A rejected concept is back to check again...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 1, '2018-09-14 22:18:22', '2018-09-15 04:18:22'),
(89, NULL, 'Conducts An Activities', 'http://localhost/actionaid/public/admin/demo_test', 0, '2018-09-14 23:07:53', '2018-09-15 05:07:53'),
(90, NULL, 'Conducted An Concept Note...', 'http://localhost/actionaid/public/admin/ai_concept_note/6', 0, '2018-09-14 23:50:10', '2018-09-15 05:50:10'),
(91, NULL, 'Conducted An Concept Note...', 'http://localhost/actionaid/public/admin/ai_concept_note/7', 0, '2018-09-15 00:20:55', '2018-09-15 06:20:55'),
(92, 11, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/7', 1, '2018-09-15 00:33:13', '2018-09-15 06:33:13'),
(93, 7, 'Your concept note is rejected!...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/6', 0, '2018-09-15 00:33:20', '2018-09-15 06:33:20'),
(94, 11, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 1, '2018-09-15 02:58:59', '2018-09-15 08:58:59'),
(95, NULL, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 0, '2018-09-15 03:03:26', '2018-09-15 09:03:26'),
(96, 3, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/3', 0, '2018-09-15 03:08:08', '2018-09-15 09:08:08'),
(97, 3, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/3', 0, '2018-09-15 10:07:24', '2018-09-15 16:07:24'),
(98, 3, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/3', 0, '2018-09-15 10:12:00', '2018-09-15 16:12:00'),
(99, 8, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/5', 0, '2018-09-15 10:15:55', '2018-09-15 16:15:55'),
(100, 9, 'Your Concept Note is Approved..', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/3', 1, '2018-09-15 10:56:28', '2018-09-15 16:56:28'),
(101, 5, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/15', 1, '2018-09-15 13:49:40', '2018-09-15 19:49:40'),
(102, 11, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/15', 0, '2018-09-15 13:49:40', '2018-09-15 19:49:40'),
(103, 8, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/15', 0, '2018-09-15 13:49:40', '2018-09-15 19:49:40'),
(104, NULL, 'Conducted An Concept Note...', 'http://localhost/actionaid/public/admin/ai_concept_note/8', 0, '2018-09-15 14:17:07', '2018-09-15 20:17:07'),
(105, 11, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/8', 0, '2018-09-15 14:20:21', '2018-09-15 20:20:21'),
(106, 9, 'Your concept note is rejected!...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/8', 0, '2018-09-15 14:21:19', '2018-09-15 20:21:19'),
(107, 11, 'A rejected concept is back to check again...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/8', 1, '2018-09-15 14:21:50', '2018-09-15 20:21:50'),
(108, 3, 'Waiting a Concept Note For Check...', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/8', 1, '2018-09-15 14:23:06', '2018-09-15 20:23:06'),
(109, 9, 'Your Concept Note is Approved..', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/8', 1, '2018-09-15 14:23:51', '2018-09-15 20:23:51'),
(110, 5, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/16', 1, '2018-09-15 14:25:40', '2018-09-15 20:25:40'),
(111, 11, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/16', 0, '2018-09-15 14:25:40', '2018-09-15 20:25:40'),
(112, 8, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/16', 0, '2018-09-15 14:25:40', '2018-09-15 20:25:40'),
(113, 5, 'Conducted An Concept Note...', 'http://localhost/actionaid/public/admin/ai_concept_note/9', 0, '2018-09-16 09:51:03', '2018-09-16 15:51:03'),
(114, 5, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/17', 0, '2018-09-17 09:50:28', '2018-09-17 15:50:28'),
(115, 11, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/17', 0, '2018-09-17 09:50:28', '2018-09-17 15:50:28'),
(116, 8, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/17', 0, '2018-09-17 09:50:28', '2018-09-17 15:50:28'),
(117, 5, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/23', 0, '2018-09-17 09:58:34', '2018-09-17 15:58:34'),
(118, 11, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/23', 0, '2018-09-17 09:58:34', '2018-09-17 15:58:34'),
(119, 3, 'An Activities Report Has Been Conducted', 'http://localhost/actionaid/public/admin/ai_concept_note/detail/23', 0, '2018-09-17 09:58:34', '2018-09-17 15:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_role` int(8) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `parent_role`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red-light', 1, '2018-08-29 13:00:40', NULL),
(2, 'Country Director', 0, 'skin-red-light', 1, NULL, NULL),
(3, 'HOFSP', 0, 'skin-red-light', 2, '2018-08-30 13:52:29', '2018-08-30 13:52:29'),
(5, 'HOPP', 0, 'skin-red-light', 2, '2018-08-30 15:14:19', '2018-08-30 15:14:19'),
(6, 'HORD', 0, 'skin-red-light', 2, '2018-08-31 18:40:28', '2018-08-31 18:40:28'),
(7, 'Finance Officer', 0, 'skin-red-light', 2, '2018-08-31 18:42:02', '2018-08-31 18:42:02'),
(8, 'Regional Mel', 0, 'skin-red-light', 3, '2018-08-31 18:43:40', '2018-08-31 18:43:40'),
(9, 'Program Officer', 0, 'skin-red-light', 8, '2018-08-31 18:44:30', '2018-08-31 18:44:30'),
(10, 'Line Manager', 0, 'skin-red-light', 5, '2018-08-31 18:45:28', '2018-08-31 18:45:28'),
(11, 'Project Coordinitor', 0, 'skin-red-light', 10, '2018-08-31 18:45:58', '2018-08-31 18:45:58'),
(12, 'MEL Manager', 0, 'skin-red-light', 5, '2018-08-31 18:46:48', '2018-08-31 18:46:48'),
(13, 'M&E Officer', 0, 'skin-red-light', 12, '2018-08-31 18:47:18', '2018-08-31 18:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(103, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(104, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(105, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(106, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(107, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(108, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(109, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(110, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(111, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(112, 1, 1, 1, 0, 1, 1, 4, NULL, NULL),
(117, 1, 1, 1, 1, 0, 12, 12, NULL, NULL),
(118, 1, 1, 1, 1, 1, 12, 4, NULL, NULL),
(127, 1, 1, 1, 1, 0, 9, 12, NULL, NULL),
(128, 1, 1, 1, 1, 1, 9, 4, NULL, NULL),
(129, 1, 1, 1, 1, 0, 8, 12, NULL, NULL),
(130, 1, 1, 1, 1, 1, 8, 4, NULL, NULL),
(131, 1, 1, 1, 1, 0, 7, 12, NULL, NULL),
(132, 1, 1, 1, 1, 1, 7, 4, NULL, NULL),
(136, 1, 0, 1, 0, 0, 5, 26, NULL, NULL),
(137, 1, 1, 1, 1, 0, 5, 12, NULL, NULL),
(138, 1, 1, 1, 1, 1, 5, 4, NULL, NULL),
(141, 1, 1, 1, 1, 0, 2, 4, NULL, NULL),
(142, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(143, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(144, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(145, 0, 1, 0, 0, 0, 13, 21, NULL, NULL),
(146, 1, 0, 1, 1, 0, 13, 26, NULL, NULL),
(147, 1, 1, 1, 1, 0, 13, 12, NULL, NULL),
(148, 1, 0, 1, 1, 0, 13, 4, NULL, NULL),
(149, 1, 0, 1, 0, 0, 3, 26, NULL, NULL),
(150, 1, 1, 1, 1, 0, 3, 12, NULL, NULL),
(151, 1, 1, 1, 1, 1, 3, 4, NULL, NULL),
(152, 1, 1, 1, 1, 1, 6, 12, NULL, NULL),
(153, 1, 1, 1, 1, 1, 6, 4, NULL, NULL),
(154, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(155, 1, 0, 1, 0, 0, 10, 26, NULL, NULL),
(156, 1, 0, 1, 0, 0, 10, 30, NULL, NULL),
(157, 1, 0, 1, 0, 0, 10, 12, NULL, NULL),
(158, 1, 1, 1, 1, 1, 10, 4, NULL, NULL),
(159, 1, 1, 1, 1, 1, 11, 26, NULL, NULL),
(160, 1, 1, 1, 1, 1, 11, 30, NULL, NULL),
(161, 1, 1, 1, 1, 1, 11, 12, NULL, NULL),
(162, 1, 1, 1, 1, 1, 11, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-08-29 13:00:41', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-08-29 13:00:41', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2018-09/df15239b8cdd043d13bd8c96c8c5e5ab.jpg', 'upload_image', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-08-29 13:00:41', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-08-29 13:00:41', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'ActionAid', 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-08-29 13:00:41', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2018-09/0b7209f2f64f8a51b0d03b54457f7935.png', 'upload_image', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2018-08/ee5ea96dee428c927f718238b5781717.png', 'upload_image', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-08-29 13:00:41', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-08-29 13:00:41', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Graph Chart', 'graph-chart', '2018-08-31 07:55:47', NULL),
(2, 'Dashboard', 'dashboard', '2018-09-12 09:04:56', NULL),
(3, 'Dashboard PC', 'dashboard-pc', '2018-09-12 10:00:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(6, 1, 'da2fb6fa983bf0e1a30ff5bf7e640485', 'chartarea', 'area5', 1, NULL, '{\"name\":\"For Test\",\"sql\":\"select MAX(value) as value, value as label from sss group by value order by id asc\",\"area_name\":\"amin;jamin;kamin;lakman;five;six;seven;eight\",\"goals\":\"800\"}', '2018-08-31 09:25:26', NULL),
(7, 2, 'f9a4c4eeae643b566cf59bf2596a7b6d', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Days remaining on your contract.\",\"icon\":\"ion-calendar\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select contract_remaining from cms_users where id = [admin_id]\"}', '2018-08-31 12:04:30', NULL),
(8, 1, 'd49f04e4f8cfdaccfde86889d0790d8b', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Days remaining on your contract....\",\"icon\":\"ion-clander\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select contract_remaining from cms_users where id = [admin_id]\"}', '2018-08-31 12:21:51', NULL),
(9, 1, '919451bd5d11a5fa0004fc1174f48ea3', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Number of activities report\",\"icon\":\"archive\",\"color\":\"bg-yellow\",\"link\":\"#\",\"sql\":\"select count(id) from ai_activity_report\"}', '2018-09-10 07:33:40', NULL),
(10, 1, '9e7765459e6e4b7cb235c86a3ac2199a', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Number of Concept Note Occurred.\",\"icon\":\"s\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select count(id) from ai_concept_note\"}', '2018-09-10 07:33:42', NULL),
(11, 1, '9bb45ea3724dab0d2a0c7d0f338817f2', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Number of users are your list.\",\"icon\":\"s\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select count(id) from cms_users\"}', '2018-09-10 07:33:45', NULL),
(12, 2, '67ced1ae13de36fd572324fbdb73f82c', 'chartarea', NULL, 0, 'Untitled', NULL, '2018-09-12 09:05:40', NULL),
(13, 2, 'b32a4ba8cd647501beb29aa0f1965c39', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Check dashboard\",\"sql\":\"select MAX(value) as value, value as label from sss group by value order by id asc\",\"area_name\":\"fa;adfs;asdf\",\"goals\":\"500\"}', '2018-09-12 09:05:45', NULL),
(14, 2, 'f413fa6fee22df0e0d7edbd7d2d7221d', 'chartbar', 'area5', 1, NULL, '{\"name\":\"other dashborad\",\"sql\":\"select MAX(value) as value, value as label from sss group by value order by id asc\",\"area_name\":\"as;af;a\",\"goals\":\"500\"}', '2018-09-12 09:07:56', NULL),
(15, 3, 'ea0fcd715a6fcf9eee6d46f1b5695bf9', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Pc & LM\",\"icon\":\"a\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select contract_remaining from cms_users where id = [admin_id]\"}', '2018-09-12 10:01:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `man_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_engeged` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_beging` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_expaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_remaining` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `email`, `mobile`, `man_number`, `location`, `department`, `date_engeged`, `date_beging`, `date_expaire`, `photo`, `password`, `contract_remaining`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'admin@gmail.com', '8801969516500', 'adfsasdfasdf', 'Pupka', 'Electrical & Electronic Engineering', '2018-03-01', '2018-08-01', '2020-08-31', 'uploads/1/2018-08/shariful.jpg', '$2y$10$pSi55sEjvJjsnRxlpesK5uQ//6aKgov7ngHLWojoZza/BNP/y2CKW', '+714', 1, '2018-08-29 13:00:40', '2018-08-31 10:32:57', 'Active'),
(3, 'Max', 'max@gmail.com', '01931039338', 'asdf2', 'fa3', 'cse', '2018-03-01', '2018-08-01', '2018-09-31', 'uploads/1/2018-08/koala.jpg', '$2y$10$BNVbtNauaQAZO9rH28h.i.FUw4lq6vYSNYvCAg8JK6he0P4uydwpq', '+14', 3, '2018-09-30 07:53:06', '2018-08-31 12:31:48', 'Active'),
(4, 'Jyan', 'jyan@gmail.com', '01969516500', 'asdf_315', 'Pupka', 'English Department', '2018-06-04', '2018-08-01', '2018-09-30', 'uploads/1/2018-08/shariful.jpg', '$2y$10$pSi55sEjvJjsnRxlpesK5uQ//6aKgov7ngHLWojoZza/BNP/y2CKW', '+13', 6, '2018-08-31 10:27:08', NULL, 'Active'),
(5, 'Pob', 'pob@gmail.com', '1351543513515', 'asdf_315', 'Pupka', 'English Department', '2018-04-10', '2018-08-13', '2018-11-30', 'uploads/1/2018-08/penguins.jpg', '$2y$10$PC/2bWOM0T1OTEryCTgaDeV7oriVC.jB.Nz9YSXxvpDLex4fP6E3q', '+74', 10, '2018-08-31 12:50:23', NULL, 'Active'),
(6, 'Richard', 'richard@gmail.com', '353483135483', 'asdf_315', 'Pupka', 'English Department', '2018-09-17', '2018-09-10', '2018-12-13', 'uploads/1/2018-08/chrysanthemum.jpg', '$2y$10$PC/2bWOM0T1OTEryCTgaDeV7oriVC.jB.Nz9YSXxvpDLex4fP6E3q', '+87', 10, '2018-08-31 12:52:59', NULL, 'Active'),
(7, 'Sad', 'sad@gmail.com', '31534836541384', 'asdf_315', 'Pupka', 'English Department', '2018-08-06', '2018-08-20', '2020-09-01', 'uploads/1/2018-08/hydrangeas.jpg', '$2y$10$iXEsEBQOj2OBLgwRv4lg4.2kQoAPmDAs/K8RqY0KMtWPjUZo75bFW', '+715', 11, '2018-08-31 12:54:08', NULL, 'Active'),
(8, 'Joya', 'joya@gmail.com', '1351345131354', 'asdf_315', 'Pupka', 'English Department', '2018-09-24', '2018-09-19', '2020-01-01', 'uploads/1/2018-08/tulips.jpg', '$2y$10$sFUcjH7sYbHcx/pSWTixVOj3YwOBqvM/zYiw6LQAbFjNGi32.gbQu', '+471', 5, '2018-08-31 12:56:59', NULL, 'Active'),
(9, 'Kalyndo', 'kalyndo@gmail.com', '31353135131', 'khaf353', 'Zambia', 'Computer Science & Engineering', '2018-02-13', '2010-06-28', '2018-08-31', 'uploads/1/2018-08/lighthouse.jpg', '$2y$10$GAI6ccA4804DJjlQSxVFqeJT/154h52aYXbtnzpDxM0Cg7knCeHRu', '-17', 11, '2018-08-31 14:01:00', NULL, 'Active'),
(10, 'Khatun', 'kahtun@gmail.com', '313513513.15', 'asfwea', '3', '1', '2018-09-10', '2018-09-18', '2018-09-16', 'uploads/1/2018-09/koala.jpg', '$2y$10$kbu9iVm6Oua2WcUewMsXse49NrZQtTOKdtjdW5Hq/NfBs9iXs4FBG', '-1', 9, '2018-09-01 09:05:09', NULL, 'Active'),
(11, 'Quality Officer', 'me@gmail.com', '880196926500', 'asdf_315', '2', '1', '2018-09-01', '2018-09-12', '2019-04-25', 'uploads/1/2018-09/tulips.jpg', '$2y$10$DD63BbNp1C7FJ/LArBsFxO5tj7dhYOOsB8nOjNGolmNnU6PTXBqAG', '+220', 13, '2018-09-06 00:07:47', NULL, 'Active'),
(14, 'Atiyer', 'client@example.com', '01969516500', 'asdf_315', '3', '1', '2018-09-01', '2018-09-02', '2018-09-04', 'uploads/1/2018-09/chrysanthemum.jpg', '$2y$10$LidUvHFgU5HRDV.oYfrHDeSDYkcxfEXAcUSLhi53YTXCf/oUNlQMu', '-13', 10, '2018-09-13 11:50:00', NULL, '0'),
(15, 'Kajol', 'kajolasdf@gmail.com', '23423', '23asdf', '3', '1', '2018-09-01', '2018-09-20', '2018-09-29', 'uploads/1/2018-09/penguins.jpg', '$2y$10$kkW6Gf5jWkCFKHVxYLunduGc6cs/pIq22HXB4dyrNBZtrRHLjgq9K', '+12', 11, '2018-09-15 14:31:50', NULL, 'Active'),
(16, 'adsf a', 'adfs@gmail.com', '16351', 'afds 23', '3', '4', '2018-09-06', '2018-09-19', '2018-09-15', 'uploads/1/2018-09/jellyfish.jpg', '$2y$10$sBJx/AGONXYl3IHSP/HTquoWmhOLC79NP134MrLVE4Pncu8/P6Zru', NULL, 10, '2018-09-17 10:03:32', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `demo_test`
--

CREATE TABLE `demo_test` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(4) NOT NULL DEFAULT '1',
  `user_id` int(4) DEFAULT NULL,
  `flow_id` int(4) DEFAULT NULL,
  `rejected_comment` text,
  `rejected_by` varchar(255) DEFAULT NULL,
  `rejected_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_test`
--

INSERT INTO `demo_test` (`id`, `title`, `description`, `status`, `user_id`, `flow_id`, `rejected_comment`, `rejected_by`, `rejected_date`) VALUES
(1, 'Some Title', '<p>afsd asdf asdf adsf asdf asdf asfd</p>', 1, 9, 6, NULL, NULL, ''),
(2, 'Add More title', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC<br></h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><img src=\"http://localhost/actionaid/public/uploads/1/2018-09/0018e27258c34217795dbeb142cd58d7.jpg\" style=\"float: none;\"></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.<img src=\"http://localhost/actionaid/public/uploads/1/2018-09/a10d253115c05634fbc1624c5c89b1ca.jpg\"></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.<br></p>', 1, 9, 5, NULL, '', ''),
(3, 'Someting', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 99, 7, 6, NULL, '', ''),
(4, 'Max Demo', '<p><br></p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; text-align: left; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p><br></p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><p><br></p>', 1, 9, 5, NULL, '', ''),
(5, 'Your Title', '<p>afsd asdf adsf afdslkjh fa</p><p><br></p><p>asdflk hasdf</p><p>asdf lkahsdf lkhasdf</p><p>a sdfasdf<br></p>', 100, 7, 6, NULL, '', ''),
(6, 'Pob Message', '<p>fasd fasdf asdf asdf<br></p>', 99, 7, 5, 'Something is wrong!', '5', '2018-09-01 20:09:41'),
(7, 'Pob Message1', '<p>adsf asdf asdf asd<br></p>', 1, 9, 5, '1', '', ''),
(8, 'Add More title', '<p>asdf aa sdfasdf asd</p>', 99, 7, 5, 'Not right!', '5', '2018-08-31 20:09:41'),
(9, 'Some Title', '<p>asdf asdf asd</p>', 1, 7, 6, NULL, '', ''),
(10, 'Add More title', '<p>asdf asdf asdf&nbsp;</p>', 100, 7, 6, NULL, '', ''),
(11, 'Richard got this activities', '<p>asdf asdf asdfa sfd<br></p>', 99, 7, 6, 'Some Comments by Richard.', '6', '2018-09-01 20:09:04'),
(12, 'uploads/1/2018-09/koala.jpg', '<p>dfgdfg sdfg sdfg sfdg</p>', 100, 1, 5, NULL, NULL, NULL),
(13, 'uploads/1/me.docx', '<p>dsf asdf asdf asd</p>', 100, 1, 5, NULL, NULL, NULL),
(14, 'asdfasdf|asfdasdf|asfasdfasdf', '<p>&nbsp;fasdf asdf asdf asd</p>', 100, 1, 5, NULL, NULL, NULL),
(15, '0', '<p>adgdfg dfs gsdf gsdfg s</p>', 100, 1, 5, NULL, NULL, NULL),
(16, '0', 'uploads/1/2018-09/penguins.jpg', 100, 1, 5, NULL, NULL, NULL),
(17, 'fasd|asdfasdf|asdfasdf', 'uploads/1/2018-09/koala.jpg', 100, 1, 6, NULL, NULL, NULL),
(18, '', '<p>asdf asdf asdf a<br></p>', 1, 7, 5, NULL, NULL, NULL),
(19, '', '<p>sadf asdf asd<br></p>', 1, 7, 5, NULL, NULL, NULL),
(20, '7', '<p>sdf asdf asd</p>', 100, 1, 5, NULL, NULL, NULL),
(21, '7', '<p>asf dasdf&nbsp;</p>', 100, 1, 5, NULL, NULL, NULL),
(22, '2', '<p>asfd asdf asd asdf asdf<br></p>', 1, 9, 5, NULL, NULL, NULL),
(23, '2', '<p>asfd asdf asd asdf asdf<br></p>', 1, 9, 5, NULL, NULL, NULL),
(24, '2', '<p>dsfgdgfadf</p>', 100, 1, 6, NULL, NULL, NULL),
(25, 'Android;IOS', '<p>asfd asdfa sdfasd</p>', 100, 1, 5, NULL, NULL, NULL),
(26, '300;200', '<p>sdfas dfa</p>', 100, 1, 5, NULL, NULL, NULL),
(27, '351;200;510', '<p>asdf asdf asdf asd</p>', 100, 1, 5, NULL, NULL, NULL),
(28, '300;450;510', '<p>sadf asdf</p>', 100, 1, 5, NULL, NULL, NULL),
(29, '300;450', '<p>sdf asdf</p>', 100, 1, 5, NULL, NULL, NULL),
(30, '300;200', '<p>dsfasdf</p>', 100, 1, NULL, NULL, NULL, NULL),
(31, '5;2;6;4', '<p>a fsasdf asd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(32, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(33, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(34, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(35, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(36, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(37, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(38, '1;3', '<p>asfd asd</p>', 100, 1, 5, NULL, NULL, NULL),
(39, '1;4', '<p>asfd asd</p>', 100, 1, 13, NULL, NULL, NULL),
(40, '1;4', '<p>asfd asd</p>', 100, 1, 13, NULL, NULL, NULL),
(41, '1;4', '<p>asfd asd</p>', 100, 1, 13, NULL, NULL, NULL),
(42, '1;6', '<p>sdfa fasd</p>', 100, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `lavel` int(255) NOT NULL,
  `value` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sss`
--

INSERT INTO `sss` (`id`, `lavel`, `value`) VALUES
(1, 500, 300),
(2, 135, 351),
(3, 400, 450),
(4, 320, 700),
(5, 500, 200),
(6, 600, 510);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_activities`
--
ALTER TABLE `ai_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_activity_report`
--
ALTER TABLE `ai_activity_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_concept_note`
--
ALTER TABLE `ai_concept_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_department`
--
ALTER TABLE `ai_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_donor`
--
ALTER TABLE `ai_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_focusarea`
--
ALTER TABLE `ai_focusarea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_implementing_patner`
--
ALTER TABLE `ai_implementing_patner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_indicators`
--
ALTER TABLE `ai_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_location`
--
ALTER TABLE `ai_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_priorityarea`
--
ALTER TABLE `ai_priorityarea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_projects`
--
ALTER TABLE `ai_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_test`
--
ALTER TABLE `demo_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_activities`
--
ALTER TABLE `ai_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ai_activity_report`
--
ALTER TABLE `ai_activity_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ai_concept_note`
--
ALTER TABLE `ai_concept_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ai_department`
--
ALTER TABLE `ai_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_donor`
--
ALTER TABLE `ai_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ai_focusarea`
--
ALTER TABLE `ai_focusarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ai_implementing_patner`
--
ALTER TABLE `ai_implementing_patner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_indicators`
--
ALTER TABLE `ai_indicators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_location`
--
ALTER TABLE `ai_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ai_priorityarea`
--
ALTER TABLE `ai_priorityarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ai_projects`
--
ALTER TABLE `ai_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `demo_test`
--
ALTER TABLE `demo_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
