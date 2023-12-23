-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2023 at 07:03 PM
-- Server version: 5.7.37
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudsolicitous_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `rise_activity_logs`
--

CREATE TABLE `rise_activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted','bitbucket_notification_received','github_notification_received') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_activity_logs`
--

INSERT INTO `rise_activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2022-04-22 12:37:10', 1, 'created', 'task', 'Namrata', 1, NULL, 'project', 1, '', 0, 1),
(2, '2022-04-30 04:47:08', 1, 'created', 'task', 'Instructor Panel Checking', 2, NULL, 'project', 2, '', 0, 0),
(3, '2022-04-30 04:47:51', 1, 'updated', 'task', 'Namrata', 1, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 1, '', 0, 1),
(4, '2022-04-30 04:48:24', 1, 'updated', 'task', 'Namrata', 1, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 1, '', 0, 1),
(5, '2022-04-30 04:48:29', 1, 'updated', 'task', 'Namrata', 1, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 1, '', 0, 1),
(6, '2022-04-30 04:48:31', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(7, '2022-04-30 04:48:32', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(8, '2022-04-30 04:51:53', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2022-04-30\";s:2:\"to\";s:10:\"2022-04-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2022-05-01\";s:2:\"to\";s:10:\"2022-04-28\";}}', 'project', 2, '', 0, 0),
(9, '2022-04-30 04:53:08', 2, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(10, '2022-04-30 04:53:11', 2, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(11, '2022-04-30 11:42:08', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(12, '2022-04-30 11:42:10', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(13, '2022-05-01 16:23:48', 1, 'created', 'task', 'Hello', 3, NULL, 'project', 2, '', 0, 0),
(14, '2022-05-01 16:26:16', 1, 'updated', 'task', 'Hello', 3, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(15, '2022-05-02 13:29:42', 1, 'created', 'task', 'Brain Tumor Detection ', 4, NULL, 'project', 1, '', 0, 1),
(16, '2022-05-07 11:37:24', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(17, '2022-05-07 11:37:27', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(18, '2022-05-07 11:44:40', 2, 'created', 'task', 'CandiSource Website', 5, NULL, 'project', 3, '', 0, 0),
(19, '2022-05-07 11:45:22', 2, 'created', 'task_comment', 'Any Update', 1, NULL, 'project', 3, 'task', 5, 0),
(20, '2022-05-07 11:45:44', 1, 'created', 'task', 'PMS System ', 6, NULL, 'project', 4, '', 0, 0),
(21, '2022-05-07 11:50:58', 1, 'created', 'task', 'PMS System', 7, NULL, 'project', 4, '', 0, 0),
(22, '2022-05-07 12:56:07', 1, 'created', 'customer_feedback', 'sdfghjkl;\'', 2, NULL, 'project', 4, 'customer_feedback', 4, 0),
(23, '2022-05-09 04:45:09', 1, 'created', 'task', 'Update Schema in AI website', 8, NULL, 'project', 4, '', 0, 0),
(24, '2022-05-09 04:46:28', 1, 'created', 'task', 'Candi Source Website', 9, NULL, 'project', 3, '', 0, 0),
(25, '2022-05-09 06:36:30', 1, 'created', 'task', 'Med Ed - Testing', 10, NULL, 'project', 2, '', 0, 0),
(26, '2022-05-09 06:37:50', 1, 'created', 'task', 'Needs to be done Med Ed - Testing', 11, NULL, 'project', 3, '', 0, 0),
(27, '2022-05-09 06:38:09', 1, 'created', 'task', 'Needs to be done Med Ed - Testing', 12, NULL, 'project', 2, '', 0, 0),
(28, '2022-05-09 06:38:50', 1, 'updated', 'task', 'Needs to be done Med Ed - Testing', 11, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(29, '2022-05-09 06:41:32', 1, 'updated', 'task', 'Needs to be done Med Ed - Testing', 11, 'a:5:{s:5:\"title\";a:2:{s:4:\"from\";s:33:\"Needs to be done Med Ed - Testing\";s:2:\"to\";s:16:\"Med Ed - Testing\";}s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:33:\"Needs to be done Med Ed - Testing\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}s:10:\"start_date\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2022-04-25\";}s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2022-05-09\";}}', 'project', 3, '', 0, 0),
(30, '2022-05-09 06:59:54', 1, 'created', 'task', 'Ebusiness website convert into Django', 13, NULL, 'project', 4, '', 0, 0),
(31, '2022-05-09 09:17:25', 1, 'created', 'task', 'dfvd', 14, NULL, 'project', 2, '', 0, 0),
(32, '2022-05-09 09:22:08', 1, 'created', 'task', 'xy', 15, NULL, 'project', 3, '', 0, 0),
(33, '2022-05-09 09:23:16', 1, 'created', 'task', 'xyz', 16, NULL, 'project', 3, '', 0, 0),
(34, '2022-05-09 09:25:59', 2, 'updated', 'task', 'xyz', 16, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(35, '2022-05-09 09:43:05', 2, 'updated', 'task', 'dfvd', 14, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(36, '2022-05-09 09:43:09', 2, 'updated', 'task', 'dfvd', 14, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(37, '2022-05-09 09:46:09', 1, 'created', 'task', 'Instructor Panel Checking', 17, NULL, 'project', 2, '', 0, 0),
(38, '2022-05-11 09:42:55', 14, 'updated', 'task', 'Ebusiness website convert into Django', 13, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 4, '', 0, 0),
(39, '2022-05-27 05:02:35', 1, 'created', 'milestone', 'First Demo - Atul Done ', 1, NULL, 'project', 3, '', 0, 0),
(40, '2022-05-27 05:03:47', 1, 'updated', 'milestone', 'First Demo - Atul Done ', 1, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2022-03-02\";s:2:\"to\";s:10:\"2022-05-28\";}}', 'project', 3, '', 0, 0),
(41, '2022-05-27 05:04:12', 1, 'created', 'milestone', 'weasd', 2, NULL, 'project', 3, '', 0, 0),
(43, '2022-05-27 05:21:50', 1, 'created', 'milestone', 'avad', 3, NULL, 'project', 3, '', 0, 0),
(44, '2022-05-27 05:23:22', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(45, '2022-05-27 05:23:26', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(46, '2022-05-27 05:26:03', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(47, '2022-05-27 05:26:04', 1, 'updated', 'task', 'Instructor Panel Checking', 17, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(48, '2022-05-27 05:26:05', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(49, '2022-05-27 05:26:07', 1, 'updated', 'task', 'Instructor Panel Checking', 17, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(50, '2022-05-27 05:26:07', 1, 'updated', 'task', 'Instructor Panel Checking', 17, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(51, '2022-05-27 05:26:08', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(52, '2022-05-27 05:27:32', 1, 'updated', 'task', 'Instructor Panel Checking', 17, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(53, '2022-05-27 05:28:08', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(54, '2022-05-27 05:30:52', 1, 'updated', 'task', 'Instructor Panel Checking', 17, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(55, '2022-05-27 05:30:54', 1, 'updated', 'task', 'Instructor Panel Checking', 2, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(56, '2022-05-27 05:31:39', 1, 'updated', 'task', 'Med Ed - Testing', 11, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(57, '2022-05-27 05:33:14', 1, 'updated', 'task', 'Med Ed - Testing', 11, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}', 'project', 3, '', 0, 0),
(58, '2022-05-27 05:36:10', 1, 'updated', 'task', 'xyz', 16, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(59, '2022-05-27 05:37:55', 1, 'updated', 'task', 'xyz', 16, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}', 'project', 3, '', 0, 0),
(60, '2022-05-27 05:38:31', 1, 'created', 'task', 'test avd', 18, NULL, 'project', 3, '', 0, 0),
(61, '2022-05-27 05:39:18', 1, 'created', 'task', 'test avd', 19, NULL, 'project', 3, '', 0, 0),
(62, '2022-05-27 05:39:38', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(63, '2022-05-27 05:39:42', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(64, '2022-05-27 05:39:45', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}', 'project', 3, '', 0, 0),
(65, '2022-05-27 05:39:49', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(66, '2022-05-27 05:42:36', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2022-05-27\";}}', 'project', 3, '', 0, 0),
(67, '2022-05-27 05:42:45', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2022-05-27\";s:2:\"to\";s:10:\"2022-05-26\";}}', 'project', 3, '', 0, 0),
(68, '2022-05-27 05:43:23', 1, 'updated', 'milestone', 'First Demo - Atul Done ', 1, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2022-05-28\";s:2:\"to\";s:10:\"2022-05-26\";}}', 'project', 3, '', 0, 0),
(69, '2022-05-27 05:44:46', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"4\";}}', 'project', 3, '', 0, 0),
(70, '2022-05-27 05:46:15', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(71, '2022-05-27 05:49:35', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(72, '2022-05-27 05:49:39', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}', 'project', 3, '', 0, 0),
(73, '2022-05-27 05:50:01', 1, 'updated', 'milestone', 'First Demo - Atul Done ', 1, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2022-05-26\";s:2:\"to\";s:10:\"2022-05-28\";}}', 'project', 3, '', 0, 0),
(74, '2022-05-27 05:54:29', 1, 'updated', 'task', 'test avd', 19, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(75, '2022-05-27 05:54:34', 1, 'updated', 'task', 'test avd', 18, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(76, '2022-05-27 05:56:26', 1, 'updated', 'task', 'xyz', 16, 'a:3:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}s:12:\"repeat_every\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}s:11:\"repeat_type\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"months\";}}', 'project', 3, '', 0, 0),
(77, '2022-05-27 05:57:24', 1, 'created', 'task', 'testing', 20, NULL, 'project', 3, '', 0, 0),
(78, '2022-05-27 05:58:27', 1, 'created', 'milestone', 'h20', 4, NULL, 'project', 3, '', 0, 0),
(79, '2022-05-27 05:58:55', 1, 'updated', 'task', 'testing', 20, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(80, '2022-05-27 06:02:24', 1, 'created', 'task', 'asxsa', 21, NULL, 'project', 3, '', 0, 0),
(81, '2022-05-27 06:11:16', 1, 'updated', 'task', 'xy', 15, 'a:3:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}s:12:\"repeat_every\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}s:11:\"repeat_type\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"months\";}}', 'project', 3, '', 0, 0),
(82, '2022-05-27 06:14:13', 1, 'updated', 'task', 'xy', 15, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(83, '2022-05-27 06:14:17', 1, 'updated', 'task', 'Instructor Panel Checking', 17, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(84, '2022-05-27 06:14:19', 1, 'updated', 'task', 'dfvd', 14, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(85, '2022-05-27 07:16:24', 1, 'created', 'milestone', 'Candi Source - Approval', 5, NULL, 'project', 3, '', 0, 0),
(86, '2022-05-27 07:17:23', 1, 'updated', 'task', 'CandiSource Website', 5, 'a:4:{s:5:\"title\";a:2:{s:4:\"from\";s:19:\"CandiSource Website\";s:2:\"to\";s:30:\"CandiSource Website - Approval\";}s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"5\";}s:12:\"repeat_every\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}s:11:\"repeat_type\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"months\";}}', 'project', 3, '', 0, 0),
(87, '2022-05-27 07:18:16', 1, 'updated', 'task', 'CandiSource Website - Approval', 5, 'a:2:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"7\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2022-05-19\";s:2:\"to\";s:10:\"2022-05-20\";}}', 'project', 3, '', 0, 0),
(88, '2022-05-27 07:18:37', 1, 'updated', 'task', 'CandiSource Website - Approval', 5, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(89, '2022-05-27 07:27:52', 1, 'created', 'task', 'deepti h2o', 22, NULL, 'project', 3, '', 0, 0),
(90, '2022-05-27 07:28:13', 1, 'deleted', 'milestone', 'avad', 3, NULL, 'project', 3, NULL, NULL, 0),
(91, '2022-05-27 07:28:17', 1, 'deleted', 'milestone', 'weasd', 2, NULL, 'project', 3, NULL, NULL, 0),
(92, '2022-05-27 07:35:24', 1, 'updated', 'task', 'Med Ed - Testing', 11, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(93, '2022-05-27 07:35:30', 1, 'updated', 'task', 'CandiSource Website - Approval', 5, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(94, '2022-05-27 07:53:08', 1, 'deleted', 'milestone', 'First Demo - Atul Done ', 1, NULL, 'project', 3, NULL, NULL, 0),
(95, '2022-05-27 08:02:25', 1, 'created', 'task', 'Candi Ai Logo - Finalization', 23, NULL, 'project', 3, '', 0, 0),
(96, '2022-05-27 08:03:30', 1, 'created', 'milestone', 'Candi AI - Final Logo', 6, NULL, 'project', 3, '', 0, 0),
(97, '2022-05-27 08:03:36', 1, 'deleted', 'milestone', 'h20', 4, NULL, 'project', 3, NULL, NULL, 0),
(98, '2022-05-27 08:03:43', 1, 'updated', 'task', 'Candi Source Website', 9, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(99, '2022-05-27 08:03:45', 1, 'updated', 'task', 'Candi Ai Logo - Finalization', 23, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(100, '2022-05-27 11:18:44', 1, 'created', 'task', 'Candisource Logo - finalization', 24, NULL, 'project', 3, '', 0, 0),
(101, '2022-05-27 11:23:46', 1, 'created', 'milestone', 'Candi Source - Logo Approval', 7, NULL, 'project', 3, '', 0, 0),
(102, '2022-05-27 11:23:53', 1, 'updated', 'task', 'Candisource Logo - finalization', 24, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(103, '2022-05-27 11:24:08', 1, 'updated', 'task', 'Candisource Logo - finalization', 24, 'a:2:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"7\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(104, '2022-05-27 11:24:35', 1, 'updated', 'task', 'Candisource Logo - finalization', 24, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 0),
(105, '2022-05-27 11:25:16', 1, 'updated', 'task', 'Candi Ai Logo - Finalization', 23, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 3, '', 0, 0),
(106, '2022-05-27 11:27:53', 1, 'updated', 'task', 'Candi Ai Logo - Finalization', 23, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 0),
(107, '2022-05-30 11:35:59', 1, 'created', 'task', 'App Changes - Home Service & Service Provider', 25, NULL, 'project', 6, '', 0, 0),
(108, '2022-05-30 13:19:50', 1, 'created', 'task', 'nbhjb ', 26, NULL, 'project', 4, '', 0, 0),
(109, '2022-06-10 09:31:04', 1, 'created', 'task', 'kkkk', 27, NULL, 'project', 4, '', 0, 0),
(110, '2022-06-10 09:51:18', 1, 'created', 'task', 'testing 06 task', 28, NULL, 'project', 6, '', 0, 0),
(111, '2022-07-28 04:30:22', 24, 'updated', 'task', 'Med Ed - Testing', 10, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(112, '2022-07-28 04:30:26', 24, 'updated', 'task', 'Med Ed - Testing', 10, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(113, '2022-07-28 15:17:08', 1, 'created', 'task', 'Hhh', 29, NULL, 'project', 2, '', 0, 0),
(114, '2022-07-28 15:17:16', 1, 'created', 'task', 'Jsjsjm', 30, NULL, 'project', 2, '', 0, 0),
(115, '2022-07-28 15:17:21', 1, 'created', 'task', 'Bsjsmsnm', 31, NULL, 'project', 2, '', 0, 0),
(116, '2022-07-28 15:17:54', 1, 'updated', 'task', 'Hhh', 29, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(117, '2022-07-28 15:17:56', 1, 'updated', 'task', 'Hhh', 29, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_announcements`
--

CREATE TABLE `rise_announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_announcements`
--

INSERT INTO `rise_announcements` (`id`, `title`, `description`, `start_date`, `end_date`, `created_by`, `share_with`, `created_at`, `files`, `read_by`, `deleted`) VALUES
(1, 'Termination of Chaitanya Holkar', '<p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Joining Date :- 23 Feb 2022</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Last Date :-&nbsp; 7 May 2022</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Mail Sent on&nbsp;</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Tue, May 10, 10:55 AM</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Dear Chaitanya,</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">With regret, we inform you that your employment with Solicitous Business Solutions Pvt. Ltd. is being discontinued, effective 9th May 2022 due to lack of performance and paucity of corporate ethics respectively.</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Any severance payments will be made according to the policies of the organisation Solicitous Business Solutions Pvt. Ltd.</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">If you are entitled to any remaining formalities or attention, they will be informed to you and once done will be rectified by the company\'s F&amp;F team. If you have any questions or concerns, you can contact the relevant department.</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Sincerely,</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Kavita Jagtap</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Operations Manager</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Solicitous Business Solutions Pvt. Ltd.</span><br></p>', '2022-02-23', '2022-05-07', 2, 'cg:2', '2022-05-24 10:32:10', 'a:0:{}', '0,2,1', 0),
(2, 'Exit - Namrata Kale', '<p><b>Joining Date :-</b> 10th October 2021</p><p><b>Last Date :- </b>7th May 2022</p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>Salary Amount :-</b></span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> 10,000/-</span><br></p><p><br></p><p><br></p>', '2021-10-10', '2022-05-07', 2, 'cg:2', '2022-05-24 12:25:34', 'a:0:{}', '0,2,1', 0),
(3, 'Sachin Nath', '<p><b>Joining Date :</b>- 7th Feb 2022</p><p><b>Last Date :-&nbsp;</b></p><p><b>Stipend :- 5000/-</b></p><p><br></p><p><b>Last Mail :- </b>24th May 2022</p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Hello Sachin</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Good Afternoon,</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Your final amount of 16 days is 2566/- whereas you took 1000/- in advance from the company, so the remaining amount is 1566/- and you did not complete your tenure of 6 months as per the agreement.</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Also, I\'m attaching the NDA copy</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Kindly have a look and reply to the mail as \"I agree to the above-written terms &amp; conditions (NDA).\"</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Thanks and Regards</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Kavita Jagtap</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><b style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Solicitous Business Solutions Pvt. Ltd.</b><br></p>', '2022-02-07', '2022-05-24', 2, 'cg:2', '2022-05-24 12:24:55', 'a:0:{}', '0,2', 0),
(4, 'Shubham Nivangune', '<p><b>Joining Date : -</b> November 18, 2021</p><p><b>Last Date :-</b>&nbsp;<span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">May 18, 2022</span></p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>Stipend </b></span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">:-&nbsp; 5000/-</span></p><p><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Last Mail :- 24th May 2022</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Dear&nbsp;</span><span class=\"il\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Shubham</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Congratulations!</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">This is to certify that</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">You worked on a project titled Online Jewelry Shop.</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">We wish you all the best for the upcoming future.</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Thanks and Regards</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Kavita Jagtap</span><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\"><b style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12.8px;\">Solicitous Business Solutions Pvt. Ltd.</b><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p>', '2021-11-18', '2022-05-18', 2, 'cg:2', '2022-05-24 12:02:25', 'a:0:{}', '0,2,1', 0),
(5, 'Bhakti Markad', '<p><b>Joining Date :-</b>&nbsp;25th Jan 2022 ( 3 Months Internship )</p><p><b>Last Date :- </b>14th May 2022</p><p><b>Stipend :</b> Unpaid</p>', '2022-01-25', '2022-05-14', 2, 'cg:2', '2022-05-24 12:24:03', 'a:0:{}', '0,2,1', 0),
(6, 'Trupti Mhaskar', '<p><b>Joining Date :</b>- 23 April 2021 ( 1 Year Bond )</p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>Last Date :-</b></span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> 10th May</span></p><p><b>Salary :-</b> 10,000/-</p><p><br></p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>(Note : 15 days gap)</b></span><br></p>', '2021-04-23', '2022-05-10', 2, 'cg:2', '2022-05-24 12:22:45', 'a:0:{}', '0,2,1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_article_helpful_status`
--

CREATE TABLE `rise_article_helpful_status` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_attendance`
--

CREATE TABLE `rise_attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_attendance`
--

INSERT INTO `rise_attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 1, '2022-04-19 03:33:28', '2022-04-30 13:03:18', NULL, '', NULL, NULL, 0),
(2, 'pending', 1, '2022-04-30 13:03:23', '2022-04-30 13:03:27', NULL, '', NULL, NULL, 0),
(3, 'pending', 1, '2022-04-30 13:24:54', '2022-05-01 16:21:32', NULL, '', NULL, NULL, 0),
(4, 'pending', 1, '2022-05-02 11:58:34', '2022-05-02 12:31:57', NULL, '', NULL, NULL, 0),
(5, 'pending', 1, '2022-05-02 12:32:01', '2022-05-07 14:30:59', NULL, 'ttttttttttttttttt', NULL, NULL, 0),
(6, 'pending', 8, '2022-05-07 07:13:55', '2022-05-07 07:14:15', NULL, '', NULL, NULL, 0),
(7, 'incomplete', 14, '2022-05-07 07:15:30', NULL, NULL, NULL, NULL, NULL, 0),
(8, 'pending', 9, '2022-05-07 07:15:44', '2022-05-07 07:15:56', NULL, '', NULL, NULL, 0),
(9, 'incomplete', 16, '2022-05-07 07:20:44', NULL, NULL, NULL, NULL, NULL, 0),
(10, 'pending', 2, '2022-05-07 12:47:36', '2022-05-07 12:50:12', NULL, 'Log Out', NULL, NULL, 0),
(11, 'pending', 2, '2022-05-07 12:51:02', '2022-05-07 12:52:48', NULL, 'qwertyuio', NULL, NULL, 0),
(12, 'pending', 1, '2022-05-18 09:10:12', '2022-05-30 11:23:13', NULL, 'Log Out', NULL, NULL, 0),
(13, 'pending', 2, '2022-05-24 17:21:51', '2022-05-24 17:23:32', NULL, '', NULL, NULL, 0),
(14, 'pending', 2, '2022-05-24 17:24:23', '2022-05-24 17:25:20', NULL, '', NULL, NULL, 0),
(15, 'pending', 23, '2022-05-27 12:00:00', '2022-05-27 12:30:00', NULL, 'H2O - Flutter', NULL, NULL, 0),
(16, 'pending', 23, '2022-05-27 16:20:00', '2022-05-27 17:30:00', NULL, 'H2O - Flutter', NULL, NULL, 0),
(17, 'pending', 23, '2022-05-28 10:30:00', '2022-05-28 11:30:00', NULL, 'H2O - Flutter', NULL, NULL, 0),
(18, 'pending', 1, '2022-06-14 12:10:39', '2022-06-14 12:10:51', NULL, 'log out', NULL, NULL, 0),
(19, 'pending', 24, '2022-07-27 05:22:33', '2022-07-28 02:43:58', NULL, '', NULL, NULL, 0),
(20, 'pending', 24, '2022-07-28 04:28:57', '2022-07-28 17:19:07', NULL, '', NULL, NULL, 0),
(21, 'pending', 24, '2022-07-29 06:27:56', '2022-07-29 18:59:25', NULL, '', NULL, NULL, 0),
(22, 'pending', 24, '2022-08-11 05:29:08', '2022-08-11 05:31:05', NULL, '', NULL, NULL, 0),
(23, 'pending', 24, '2022-08-11 05:31:38', '2022-08-11 13:31:18', NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_checklist_groups`
--

CREATE TABLE `rise_checklist_groups` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `checklists` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_checklist_items`
--

CREATE TABLE `rise_checklist_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_checklist_template`
--

CREATE TABLE `rise_checklist_template` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_ci_sessions`
--

CREATE TABLE `rise_ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_ci_sessions`
--

INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('841d43cd06fedf82767fdb4815475845d4753c78', '103.91.223.17', '2022-04-12 09:20:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393735353233303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('ee06c38f0e8c9b16729e859f1e5c0c4cbb929b31', '103.91.223.17', '2022-04-12 09:21:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393735353233303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('0dd1eb3d0e66858e35ec849641b72fa68188488f', '103.91.223.17', '2022-04-13 04:27:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393832333934323b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('58dbae4b50e7bee8a08dba0697e38f7ea31ddcb3', '151.192.99.26', '2022-04-16 12:11:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303131313131393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('8408149fd662f4b8bb7d7d30fecb618b40aedef4', '151.192.99.26', '2022-04-16 12:49:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303131333338333b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f656d61696c223b757365725f69647c733a313a2231223b),
('9b800897a04e1811a380cca1bb6dac0541ef6aa7', '151.192.99.26', '2022-04-16 13:27:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303131333338333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('28afaa1a3850df442a8dcd25063d204d094265e2', '139.167.169.175', '2022-04-18 08:53:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237313839323b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('44b7d47ceac7eba75d5dc7566754c78e2e328ac0', '151.192.99.26', '2022-04-19 04:31:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303333393134373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('bb393c43bb10b871adf3861df4915378a9c709fd', '103.51.75.174', '2022-04-19 05:55:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303334373733333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('faf149a118754f11e5eb592a8912adb4c7dc0b5b', '103.51.75.174', '2022-04-19 05:55:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303334373733333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('5e7b81276cf6d4672ee28250423a6631b49aca76', '103.51.75.174', '2022-04-19 07:11:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303335323330363b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b),
('ddc73b4496cf389753c66bdb29bd0420f2f82d77', '103.51.75.174', '2022-04-19 07:25:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303335323330363b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b),
('ecde5bb07d3155d65f9b102c282da1ca8c281ca4', '103.51.72.196', '2022-04-20 05:43:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303433333339333b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('508e444350da4f08f53d71502fb1035b019d4636', '103.51.72.196', '2022-04-20 05:43:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303433333339333b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('4220086b429a53257c5060a8f3fc522fad439a79', '103.51.72.196', '2022-04-20 05:44:17', ''),
('0bae0a19578dc06b51a2fb3aa2a2ad4d5f94af8d', '151.192.99.26', '2022-04-21 13:59:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303534323339373b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('c13e5fd12b67472d4863d198c233927284d84945', '103.51.75.217', '2022-04-22 12:07:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303632393232363b),
('68b27b66f345a3f00cad378bf38517153dda1239', '103.51.75.217', '2022-04-22 12:07:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303632393232383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('f294ebd577ffc3090a570cc5c7955227aac99cc8', '103.51.75.217', '2022-04-22 12:13:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303632393633333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c6561766573223b757365725f69647c733a313a2231223b),
('7f591efee7fe96b50810df68e31c3dd1f0f669a3', '103.51.75.217', '2022-04-22 12:11:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303632393438363b),
('c392b776c059777b915bbfb6580b6d35dae868da', '103.51.75.217', '2022-04-22 12:11:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303632393438363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('63c95a0bf3c6a51b66578d05fc3a6d63051e7c28', '103.51.75.217', '2022-04-22 12:19:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303632393934353b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a313a2231223b),
('ac069758b44923c3bb0478f9e4f0b71c8322f103', '103.51.75.217', '2022-04-22 12:24:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633303238353b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('0dd3cc8245ec47930beaba952ed0857bc6caee00', '103.51.75.217', '2022-04-22 12:25:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633303238353b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f223b757365725f69647c733a313a2231223b),
('fa97637aec842aa07bc7f9ff257702df9fd02449', '103.51.75.217', '2022-04-22 12:33:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633303738393b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('9bebde2f020eb2544ec272d09bf437bfcb5787e8', '23.29.118.44', '2022-04-22 12:29:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633303535343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a6447de4b9b4d6b8ef77454afd7e258e4ead9d46', '103.51.75.217', '2022-04-22 12:38:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633313039303b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c65616473223b757365725f69647c733a313a2231223b),
('b21138b7d8e0d8b4d69ce69829b7a4d1fbbea4c5', '23.29.118.44', '2022-04-22 12:34:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633303838323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0fd198dfa23e51946a6cce9303cd8942182c66ce', '23.29.118.44', '2022-04-22 12:37:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633313033303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e2162237afec39dcd0877d5ff9576f44eafcf532', '103.51.75.217', '2022-04-22 12:43:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633313431393b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f657870656e736573223b757365725f69647c733a313a2231223b),
('99276c6fdfd838517a8c381f4bd91feaab6a9fbe', '103.51.75.217', '2022-04-22 12:52:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633313936363b5f63695f70726576696f75735f75726c7c733a36393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b735f6b616e62616e223b757365725f69647c733a313a2231223b),
('f8f716659b6cfe7ce51662a147668a572a6ddd56', '23.29.118.44', '2022-04-22 12:54:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633323039343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e8d7b8ac113a6327cfb23542fe29cb83b54e5aec', '103.51.75.217', '2022-04-22 13:01:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633323436303b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a313a2231223b),
('fd9daeb5ec3eedbf3d6be01577bc453169e4a0d8', '23.29.118.44', '2022-04-22 12:55:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633323132343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f643fb16b3a3018a9f5806d508c3a461da600e74', '23.29.118.44', '2022-04-22 12:55:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633323135323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('472f133d0a14c1ec12430a90428810ba21ebd8ed', '103.51.75.217', '2022-04-22 13:12:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633323436303b5f63695f70726576696f75735f75726c7c733a36393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b735f6b616e62616e223b757365725f69647c733a313a2231223b),
('f03d65fa0d0665b5b8d5659e80b4fd6c86674d8f', '223.225.59.99', '2022-04-22 15:39:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634313736303b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e74732f766965772f31223b757365725f69647c733a313a2231223b),
('9057fb719df1adf5473c774033d367f4c699e373', '103.51.75.176', '2022-04-23 06:12:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303639343335373b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('cabe34f2a03c381f21e1043cf86c6c80c4cbf586', '103.51.75.176', '2022-04-23 06:45:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303639363334383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('193993a644174e37a6e994de3cc46079a21ac008', '152.57.206.236', '2022-04-23 06:24:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303639353039363b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('a423d019d13603a3f542b46dae5769de37add7f2', '103.51.75.176', '2022-04-23 07:57:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303639363334383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2231223b),
('ae2b3ad78becdc63386d15820d4a327a7dc786d2', '103.51.75.176', '2022-04-23 07:57:31', ''),
('4caef93051e176336ed9f0a9ff6e83d15e95ab8d', '103.51.75.176', '2022-04-23 08:14:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303730313638363b),
('fc58ec8807beea9fedc91c29b6423b45141b3369', '103.51.75.176', '2022-04-23 10:14:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303730313638363b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c65616473223b757365725f69647c733a313a2231223b),
('c1b6a5ec4a5c08ff65f0ca1b7b4c71cda40afd82', '103.51.75.176', '2022-04-23 11:16:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303731323631373b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f322f67656e6572616c223b757365725f69647c733a313a2231223b),
('04722172b4d38a95399ba5d37c1c85795fe5b94f', '103.51.75.176', '2022-04-23 11:28:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303731333331353b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f322f67656e6572616c223b757365725f69647c733a313a2231223b),
('718bf9e52b9f201068d16cec5d956328fb1e4464', '103.51.75.176', '2022-04-23 11:43:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303731343232353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('72c5011cf08a07e688538c9cd8a59761164c0eb6', '103.51.75.176', '2022-04-23 11:52:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303731343734393b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30332d3237543030253341303025334130302532423035253341333026656e643d323032322d30352d30385430302533413030253341303025324230352533413330223b757365725f69647c733a313a2232223b),
('59208ec38ae4b6f72cd0ec38255528ca72130bc8', '103.51.75.176', '2022-04-23 12:03:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303731353433363b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a313a2232223b),
('f316cd05c9839175171b5c23725d41dc47df1f92', '103.51.75.176', '2022-04-23 13:04:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303731353433363b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a313a2232223b),
('4a6ae3850436295dd65dd0a252f315a046d1f3fa', '103.51.72.221', '2022-04-25 04:48:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303836323130373b5f63695f70726576696f75735f75726c7c733a3132313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532466e6f746573223b),
('7df771410322ff9d18787ca008837b2a1527f3b2', '103.51.72.221', '2022-04-25 06:59:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303836393936313b5f63695f70726576696f75735f75726c7c733a3132313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532466c65616473223b),
('a353b6a223b3bbb8cf478e416714e20f8b4c086f', '103.51.72.221', '2022-04-25 10:40:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303838333231303b5f63695f70726576696f75735f75726c7c733a3132313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532466e6f746573223b),
('8af0645a1825baa744724ba9cf5bd6f82f8fa1f2', '103.51.72.221', '2022-04-25 10:40:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303838333231303b5f63695f70726576696f75735f75726c7c733a3132313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532466e6f746573223b),
('48e35c0147005f5583432acdfb9fc9858fbac46f', '103.51.75.76', '2022-04-26 05:42:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303935313735373b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('53332b43638a7b3a4a2227dd222dee807b21bdd9', '103.51.75.76', '2022-04-26 07:27:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303935313735373b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('b81e97833b3e4e363e97aa83aa0a38f539f6a3dc', '103.91.223.17', '2022-04-26 05:44:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303935313836373b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('06791f850ec09e98eb4735d3453da0371aa89053', '103.91.223.17', '2022-04-26 05:45:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303935313836383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f31223b757365725f69647c733a313a2231223b),
('3ab6d676bc48d387be085a592034f48d28b021ab', '103.91.223.17', '2022-04-26 10:23:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303936383630303b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f31223b757365725f69647c733a313a2231223b),
('2185a636c79baed0db875d904643e9776ea8fa58', '23.29.118.44', '2022-04-26 10:10:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303936373832343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('cd1a7f187841580bd5794bf443e4303bcc451507', '103.51.75.76', '2022-04-26 10:24:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303936383639333b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f31223b757365725f69647c733a313a2231223b),
('ea623e92fa3a46fee0b7f14d34e56fe7660caa37', '103.91.223.17', '2022-04-26 10:35:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303936383630303b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31223b757365725f69647c733a313a2231223b),
('fffdf5cf03e451f7a17e5a32de90af1798ad155a', '23.29.118.44', '2022-04-26 10:24:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303936383638323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0a54932400bb361b1a292608bb983842cb292b2c', '103.51.75.76', '2022-04-26 10:47:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303937303035363b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('6760e7cd2ddf6cdd8e5e9421c2c97dd1b09cc4b4', '23.29.118.44', '2022-04-26 10:47:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303937303034303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7f4eebbe82dce21c0c6289773bbb1ed9dbf26b90', '23.29.118.44', '2022-04-26 10:49:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303937303137343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1d1ea39d6b4b9945e810d17be3ccc9934fe8bccc', '23.29.118.44', '2022-04-26 10:49:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303937303138313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('003039ea7c39e40de5cf1c7b39f57702692f2f16', '103.51.75.76', '2022-04-26 11:37:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303937333034313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('5117f0dc3843f5ee2d975e64f4df443976b4e3f6', '103.51.75.76', '2022-04-26 11:37:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303937333034313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('a94ef7b9e415a0b0a61c0a2519a5c0d29d8f799b', '103.91.223.17', '2022-04-27 04:57:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313033353437313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('d4edff70d88464a7dc83bd174ac2cf138d907f7c', '103.91.223.17', '2022-04-27 05:00:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313033353437313b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('0dad077c448e06d2011aaa693676e5f1bc973595', '103.51.75.208', '2022-04-30 04:49:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343134343b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('b35b3aa8c83368c584708fa7d7c11ca1044c20ac', '23.29.118.44', '2022-04-30 04:47:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343032383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3443a6773cd6f675275d97782796de8abc63a521', '23.29.118.44', '2022-04-30 04:47:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343037323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9fa46fffe4e9db9dc3d3941c4dbd667835369058', '23.29.118.44', '2022-04-30 04:48:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343130343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e6078ab617fb9c15b129148114caff06529c6123', '23.29.118.44', '2022-04-30 04:48:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343130393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ab5ee0a672fc38f6ca9623a9650f0b46788758d1', '23.29.118.44', '2022-04-30 04:48:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343131313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4618a5e3bf14662f7591da70914b95af43332cfa', '23.29.118.44', '2022-04-30 04:48:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343131323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('64d5f4c0b283dddce2b02efafabac59dbca3e6db', '23.29.118.44', '2022-04-30 04:51:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343331343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c0b421915bf236501f54ae23676650e5895795a4', '103.51.75.208', '2022-04-30 04:58:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343638393b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a313a2232223b),
('29f5e030fee436e31143b09ee24ca130ee5ed4af', '23.29.118.44', '2022-04-30 04:53:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343338383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2a3865694606d537ee310155af96db20bd5dc31d', '23.29.118.44', '2022-04-30 04:53:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343339313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('23741a58d7a9fe7ab9c15dabc110b4156bd64e0f', '23.29.118.44', '2022-04-30 04:57:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239343637393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9e38a446704f000950cac9a837a895fd3fe6e7ac', '103.51.75.208', '2022-04-30 06:23:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313239393831313b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30332d3237543030253341303025334130302532423035253341333026656e643d323032322d30352d30385430302533413030253341303025324230352533413330223b757365725f69647c733a313a2232223b),
('efc5ae30a647448e4a9fcc56c77abe2ea933b493', '103.51.75.208', '2022-04-30 06:28:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330303131383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f31223b757365725f69647c733a313a2231223b),
('43e40d1b04a11dd4c14230f1d8795d8653787a0e', '103.51.75.208', '2022-04-30 06:31:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330303236353b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('c3f8b2e7259e407a475f129a36ea1b968bc5b55e', '152.57.205.202', '2022-04-30 06:34:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330303436333b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f312f67656e6572616c223b757365725f69647c733a313a2231223b),
('a41319f98753dbc7fd1053d4d71e68c925b379eb', '103.51.75.208', '2022-04-30 06:51:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330313439353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('bc0b57c79aedc12ea632f537686fe58f6bd7c874', '103.51.75.208', '2022-04-30 07:23:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330303436333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('c57a545b10ae11ce3d2d57e6d21c74971135e864', '103.51.75.208', '2022-04-30 07:53:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330313439353b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('a5a9a5a97d79e46961d081ad64697a5071e711b4', '103.51.75.208', '2022-04-30 09:10:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313330393830313b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('d4c18d8f483dddcf5cc6ba0bb033e95e76dc09a6', '103.51.75.208', '2022-04-30 11:40:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313331383833323b5f63695f70726576696f75735f75726c7c733a36363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e74732f696e6465782f636f6e7461637473223b757365725f69647c733a313a2231223b),
('6ace6efb3b4575f73b592b5b7a767ef55f0f65d0', '103.51.75.208', '2022-04-30 13:05:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332333933313b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a313a2231223b),
('8c2fdd9a4a4bd54f6fbf7c694cc1481855bc838c', '23.29.118.44', '2022-04-30 11:42:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313331383932383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1993a216bc2353e1421e05199c556653d54e7622', '23.29.118.44', '2022-04-30 11:42:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313331383933303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f8dc4e3c32fe22620be3f35f1be9eaa438fd88ff', '103.51.75.208', '2022-04-30 12:28:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332313638343b5f63695f70726576696f75735f75726c7c733a3133343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324673657474696e677325324667656e6572616c223b),
('4e294ab83c48c9e33f3647a923de93bc6799ada7', '103.51.75.208', '2022-04-30 12:58:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332333533303b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f6c6f63616c697a6174696f6e223b757365725f69647c733a313a2231223b),
('92586cf4b41df2632e2eacfefeb177fd729ffa25', '103.51.75.208', '2022-04-30 13:04:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332333835383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('894218afa7c5417cffce4a7ef72c07718e80dd0e', '103.51.75.208', '2022-04-30 13:13:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332333835383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('24b6c4e3894fe2aae22c98dc5f54e5d49126a2dc', '103.51.75.208', '2022-04-30 13:14:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332343434383b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a313a2231223b),
('cd4c99f6098926e812aae1af2c01186d6550cb74', '103.51.75.208', '2022-04-30 13:35:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332343434383b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('c8db08b84f165b03f595981542f1f1d8b5f94a6e', '103.51.75.208', '2022-04-30 13:40:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332363031333b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f6c6f63616c697a6174696f6e223b757365725f69647c733a313a2231223b),
('c67653a0219b128fcd9e7c6b08def8e355b9c95e', '103.51.75.208', '2022-04-30 14:06:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313332363031333b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f656d61696c5f74656d706c61746573223b757365725f69647c733a313a2231223b),
('e27bf87a538e7180ce7f7530c2cf91f4fa18c7ff', '116.75.156.152', '2022-05-01 16:26:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313432323339383b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b732f223b757365725f69647c733a313a2231223b),
('91221843e5419a8b307d6434eab5c086ac0c185e', '23.29.118.44', '2022-05-01 16:23:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313432323232393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8be9be77b0c9d455f43cacd518d59095cc470919', '23.29.118.44', '2022-05-01 16:26:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313432323337363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('6a3a444faf1a81331f8f65216e07ccde367d612d', '116.75.156.152', '2022-05-01 16:44:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313432333435313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e7473223b757365725f69647c733a313a2231223b),
('d5058dfba246aa13c147c41602480d42057b6282', '116.75.156.152', '2022-05-01 16:32:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313432323732323b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30352d3031543030253341303025334130302532423035253341333026656e643d323032322d30362d31325430302533413030253341303025324230352533413330223b757365725f69647c733a313a2231223b),
('709f1e4e357aa26cfc2d6896f01eb39c56e0e5ee', '116.75.156.152', '2022-05-01 16:44:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313432333435313b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30352d3031543030253341303025334130302532423035253341333026656e643d323032322d30362d31325430302533413030253341303025324230352533413330223b757365725f69647c733a313a2231223b),
('2a7deb669f80edac9231dcc1d3db26e6776acf06', '103.51.75.59', '2022-05-02 05:23:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313436393030383b5f63695f70726576696f75735f75726c7c733a36313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f696e766f69636573223b757365725f69647c733a313a2231223b),
('d695a06027e46ac1506398a8c1499069eb0f8756', '103.51.75.59', '2022-05-02 05:35:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313436393732383b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f31223b757365725f69647c733a313a2231223b),
('66de5a5001a5aa9a99ef62893ac9858af5409c0d', '103.51.75.59', '2022-05-02 06:31:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437333037363b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('bf42a8bbf5a65d02d9f735f8164e3753e297846e', '103.51.75.59', '2022-05-02 05:46:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437303339363b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('4048145d1337e385912073efe4329b83e0e0c8bc', '103.51.75.59', '2022-05-02 05:52:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437303732383b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('bcf2bf23e30ff0c9e1d5fd612815e3b04f9ae168', '103.51.75.59', '2022-05-02 06:13:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437323032393b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('42861c78635c2e41703ab19bebccbb7864ae2271', '103.51.75.59', '2022-05-02 06:47:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437343034333b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('5d22fe73f69428a2b7b7f5aae26fa8dfab48b8c9', '103.51.75.59', '2022-05-02 07:18:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437333037363b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('13bc9a2ab192e2c7d012121b9f93e4fd422ef1e1', '103.51.75.59', '2022-05-02 09:23:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313438333432343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('6a9c8e6fbec8805c13464b349c5cf6e4240a127c', '103.51.75.59', '2022-05-02 07:52:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437373932343b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('c1c847e6296d1f0f3e54de54567a9d2756a7a61d', '103.51.75.59', '2022-05-02 09:34:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313438343036373b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('c824577291a4023b764db6aef9faf9c40a332acc', '103.51.75.59', '2022-05-02 08:10:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313437393032383b5f63695f70726576696f75735f75726c7c733a38333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f6172642f656469745f636c69656e745f64656661756c745f64617368626f617264223b757365725f69647c733a313a2231223b),
('86f73ac137c70679386fda6826232df67bb51221', '103.51.75.59', '2022-05-02 09:25:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313438333534373b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f656d61696c5f74656d706c61746573223b757365725f69647c733a313a2231223b),
('3d305ea65821b3367c6f4625560dd91cef31be6c', '103.51.75.59', '2022-05-02 11:57:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439323636353b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('6b42ccbdb596f222bffd593f10da5c26fdd5e5e5', '103.51.75.59', '2022-05-02 12:02:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439323936383b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('a5f83c19be7e5e86be0a6a56b9318ca912c05d1e', '103.51.75.59', '2022-05-02 09:36:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313438343230373b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3136223b757365725f69647c733a313a2231223b),
('ae7e3913e6eb953742beddf3dad3b5760f0d5b1e', '103.51.75.59', '2022-05-02 09:35:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313438343036373b5f63695f70726576696f75735f75726c7c733a37333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31312f6a6f625f696e666f223b757365725f69647c733a313a2231223b),
('c991cfa08717858b20264af635ac7205787bd5ca', '103.51.75.59', '2022-05-02 09:42:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313438343532383b5f63695f70726576696f75735f75726c7c733a37333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31322f6a6f625f696e666f223b757365725f69647c733a313a2231223b),
('cc067f7e84a3853642f3f431da69972e5d37f045', '103.51.75.59', '2022-05-02 11:51:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439323237393b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('b970f174d5ba447049d9399810b652b9e1b59da7', '103.51.75.59', '2022-05-02 12:54:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363036383b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('4a83596f1e2290471174d7120c82e1baf0a08366', '103.51.75.59', '2022-05-02 12:31:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439343730353b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f6c6f63616c697a6174696f6e223b757365725f69647c733a313a2231223b),
('27983bbc785806d04ada6ead438bc1343f288a3b', '103.51.75.59', '2022-05-02 12:51:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439353930393b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f617474656e64616e6365223b757365725f69647c733a313a2231223b),
('6cb23d2c97feb2f1fa674f5af3c67fc9e24a17e2', '103.51.75.59', '2022-05-02 12:51:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439353930343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('88678a5bc35c1f972e9c672bdcc3e05ae1d7d8bc', '103.51.75.59', '2022-05-02 12:59:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363336303b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f74696d65736865657473223b757365725f69647c733a313a2231223b),
('c083018aa102949a6652f40746c8b8776bbcf6b8', '103.51.75.59', '2022-05-02 13:01:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363036383b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('f76311685c0da2d7ba52b33f4b9df58456b7eac0', '23.29.118.44', '2022-05-02 12:56:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363138353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('cdbc473cb9b6447bf44474184afc1536bc9e039b', '23.29.118.44', '2022-05-02 12:56:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363139333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('bc6177ad4b469b80fa5c5e9506b98614af09ec60', '103.51.75.59', '2022-05-02 13:03:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363631323b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f74696d656c696e65223b757365725f69647c733a313a2232223b),
('78b565e7dc334cdce4d976c909e20ad9a0abe2e2', '23.29.118.44', '2022-05-02 12:57:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363233323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b);
INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4659957d3d186422d0525581411ec52193806f85', '23.29.118.44', '2022-05-02 12:57:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363234333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e0ec5af19ab768813016b299040802359eee8505', '23.29.118.44', '2022-05-02 12:58:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363331343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7f96f6cdb9d5310d5c3316554f5d5c863f37d4fb', '103.51.75.59', '2022-05-02 13:07:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363835343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f74696d656c696e65223b757365725f69647c733a313a2231223b),
('f4016a029fd82ffa04f0f81fe9e2ae2fe9996452', '23.29.118.44', '2022-05-02 12:59:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363339313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('cd815e109e69e2958a6d4e86a3e9431aa776d3af', '23.29.118.44', '2022-05-02 13:03:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363539363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4a510950d3fc0f4150bd568362574ddaad5dc415', '23.29.118.44', '2022-05-02 13:03:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363630353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('183d32668af01aa6a3d711477c355ca4bac3b55d', '103.51.75.59', '2022-05-02 13:11:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373039323b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32223b757365725f69647c733a313a2232223b),
('b495e354d385d702e0682844ca9904bcbfa6ec4e', '23.29.118.44', '2022-05-02 13:07:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439363832313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('429268abadbb121f0ee0e095f63a4878d5c29e59', '103.51.75.59', '2022-05-02 13:15:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373335383b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f74696d656c696e65223b757365725f69647c733a313a2231223b),
('374343d447907e072b982168c84cf3e94acf1af9', '23.29.118.44', '2022-05-02 13:14:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373234353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f8b6a3a770579745feaea9fc541434ec549fad69', '103.51.75.59', '2022-05-02 13:20:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373632373b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a313a2232223b),
('ed455e3d2352acfc5d472a2ff4f6892231260618', '103.51.75.59', '2022-05-02 13:22:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373733393b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f74696d656c696e65223b757365725f69647c733a313a2231223b),
('e713ea9d6d86539b32ccf6b9db92262b5fe0b31b', '23.29.118.44', '2022-05-02 13:16:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373338323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('389dd5d92f56a01a9137c1f656245f541ab7919a', '23.29.118.44', '2022-05-02 13:17:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373434303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('622dee274e347a0c9922c560b4cb6ab1a7eab1b0', '103.51.75.59', '2022-05-02 13:26:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439373938313b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32223b757365725f69647c733a313a2232223b),
('ada901fae7679b2f2247c4d3673435e124b388f4', '103.51.75.59', '2022-05-02 13:29:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383138383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('bf09ee877724cfdf459170701612652ee8965585', '103.51.75.59', '2022-05-02 13:33:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383432393b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c6561766573223b757365725f69647c733a313a2231223b),
('7056105f7d402814d2afe7e5b4849d4334994a5f', '23.29.118.44', '2022-05-02 13:29:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383135363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('188b0ed2ef7a46c6134acc02b7177c3360190ebd', '23.29.118.44', '2022-05-02 13:29:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383138323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('19e085412a9830445a98f8d8436115dc869b2853', '103.51.75.59', '2022-05-02 13:35:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383534373b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('1d2900f42caa889077298da8e5be7cccb771402c', '23.29.118.44', '2022-05-02 13:30:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383235333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7059a26ef7547a92470117606c00e66d92da355b', '23.29.118.44', '2022-05-02 13:31:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383239363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('399b728bfbdcf4799525c2d5329e02b4f3e58b6c', '103.51.75.59', '2022-05-02 14:29:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383437323b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f32223b757365725f69647c733a313a2232223b),
('d785341ee19c80ab94b0ba9d4f93b9d794b74c1b', '103.51.75.59', '2022-05-02 13:43:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439383938323b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('c7c178ee3d53c8dc557a67c6c8a379aa81e1e528', '103.51.75.59', '2022-05-02 13:58:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439393930303b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('6befba890aa0613434dec01f64bf855c9f465ada', '103.51.75.59', '2022-05-02 14:33:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313439393930303b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c65616473223b757365725f69647c733a313a2231223b),
('3aea827f4d9e182a239c35691e69370b7c371408', '116.75.156.152', '2022-05-02 18:13:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313531353139383b5f63695f70726576696f75735f75726c7c733a3132323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532466576656e7473223b),
('293046b19628a71c0d4605970f959563eaf63ebd', '103.51.75.190', '2022-05-05 12:06:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313735323430373b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('6a9e476d51ca5248a5922055e3854891eb0c82ea', '103.51.75.190', '2022-05-05 12:23:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313735333433363b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3133223b757365725f69647c733a313a2231223b),
('11e9522375a2a295230cedba4dcbd2222d8ecd2e', '103.51.75.190', '2022-05-05 12:29:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313735333735383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('a6021ce442a5ad6098a51fc7497cf7dac04ca247', '103.51.75.190', '2022-05-05 12:34:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313735343037373b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30342d3235543030253341303025334130302532423035253341333026656e643d323032322d30362d30365430302533413030253341303025324230352533413330223b757365725f69647c733a313a2231223b),
('6cd2c626f1419b6644da1f1acf95d7a8badcf66b', '103.51.75.190', '2022-05-05 12:46:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313735343037373b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('4dbcbcfd544f6e0dc083b3deef33c41dcae84ddf', '103.51.75.118', '2022-05-06 05:23:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313831343539363b5f63695f70726576696f75735f75726c7c733a3133353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a656374732532467669657725324632223b),
('a2b663015035b25154a997901ee4a3d0f0e7cbb9', '103.51.75.186', '2022-05-07 06:47:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930363036353b5f63695f70726576696f75735f75726c7c733a3133353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a656374732532467669657725324632223b),
('f8cd910757841ea84f16479677026328dc48d883', '103.51.75.186', '2022-05-07 07:03:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373031313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('2ef38925ed427aa5fb84485875ba5ec4e0811fbc', '1.187.61.6', '2022-05-07 06:53:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930363433343b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('ccb768a3f5590c7ac45b7d91eb69a558fc803695', '103.51.75.186', '2022-05-07 07:05:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373131353b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a323a223132223b),
('395464dc5e23e362be5a7aa1dc3aad098f8a8416', '103.51.75.186', '2022-05-07 07:06:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373136373b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('c74e8850f07bd2508f46bf7e5e01a9347a0afe8f', '103.51.75.186', '2022-05-07 07:07:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373237393b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('87e2934ec91c05c4b156e23f8eed8f78cc08d625', '103.51.75.186', '2022-05-07 07:11:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373437343b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('49e24114359acf93c252f464438d96e5e0c91bb9', '103.51.75.186', '2022-05-07 08:09:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373037333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223230223b),
('df2b7537c083a648ac57457f8d0630a6fdc25e1c', '103.51.75.186', '2022-05-07 07:10:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373435363b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a323a223132223b),
('d51dac03090bd6508dcddd47354ff6a887f2f6e7', '103.51.75.186', '2022-05-07 07:12:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373535383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a323a223134223b),
('dd5ca56f9dd87d8e8577eec6f57d7d8973b7fb58', '103.51.75.186', '2022-05-07 07:12:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373534313b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a313a2238223b),
('f865a0428b561c1afb0e569001b64e02dec20e28', '152.57.204.46', '2022-05-07 07:33:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383830333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223135223b),
('023fe017343818225201400be77a15b85a3f380d', '103.51.75.186', '2022-05-07 07:13:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373632363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('0927216effc04889b629a1915c0353a8eb5b45bc', '152.57.206.85', '2022-05-07 07:14:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373637383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('befa38649f1b35d70395bce0307261041c3d7f31', '103.51.75.186', '2022-05-07 07:16:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373738343b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a323a223132223b),
('472342e038947fb06852da982000b9f1f65ec3bb', '103.51.75.186', '2022-05-07 07:28:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373437343b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('680d3ca095356fd945884809965a36deec6b94a4', '103.51.75.186', '2022-05-07 07:17:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373832313b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a323a223230223b),
('00c6b8609bb1a5c4dd066eb106e8ec0db33ae539', '152.57.198.82', '2022-05-07 07:11:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373531363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('f3b115ee5fa5ffab517c41f0f2beb38cada757a6', '103.51.75.186', '2022-05-07 09:06:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373534313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2238223b),
('fa053fb5b068d6ec40f937b404166e0d3513d2ce', '103.51.75.186', '2022-05-07 07:23:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383232313b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a323a223134223b),
('e3e28d7e800cb6e06b17449fc7820b7c6b02e772', '103.51.75.186', '2022-05-07 08:54:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373632363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2239223b),
('2b8ae007fb9a8011ca0ebf5c68e31c7bcb97a9dc', '152.57.206.85', '2022-05-07 07:33:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383831323b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2237223b),
('a21805447ae204bb01ed985e9db3c3be8985e7de', '103.51.75.186', '2022-05-07 07:15:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373732343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2239223b),
('aeca2032bdcd701c917ebafd9ed1de18ee0bbf44', '103.51.75.186', '2022-05-07 07:20:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383035393b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f37223b757365725f69647c733a313a2231223b),
('733bbb5cc1da79acf7e46b6b8a4f0f60373e0eb0', '103.51.75.186', '2022-05-07 07:22:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383134323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('5151bbb93b5fa961c0b021798c390d4a1c421f22', '23.29.118.44', '2022-05-07 07:16:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373737393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('6ac590d0f4bc099d290172730fa10f5bbe3b1edc', '103.51.75.186', '2022-05-07 07:24:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383235363b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a323a223132223b),
('0f5b30c0031dc47bc2f85deec93cc90acee00c4f', '103.51.75.186', '2022-05-07 07:32:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383736343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223136223b),
('665b77f3d6d70bfa67ab3e98eaa74f2b2a4382c5', '103.51.75.186', '2022-05-07 07:28:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383438323b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30342d3235543030253341303025334130302532423031253341303026656e643d323032322d30362d30365430302533413030253341303025324230312533413030223b757365725f69647c733a323a223230223b),
('ccc7afdb6aa816c203d8f1f34948952e890a01fc', '103.51.75.186', '2022-05-07 07:17:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373836323b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a323a223134223b),
('5fd8678aa4e90f7df8c7f1336b27424dc2ec6ad9', '23.29.118.44', '2022-05-07 07:18:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930373932343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7b6488b46f786b95d192db4b926360084bde44a5', '152.57.206.85', '2022-05-07 07:20:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383034363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('763202fc1a2766d97be170a93e4510a6884f2529', '23.29.118.44', '2022-05-07 07:22:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383134323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7da3a7f71a0f68274a0593baafb1d4b78f87458b', '103.51.75.186', '2022-05-07 07:41:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383134323b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2234223b),
('4fa06524a48cac074320cc54f5f81dedcc521181', '103.51.75.186', '2022-05-07 07:29:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383535353b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a323a223134223b),
('e4fcbedb3878ba297d076b49a942a30cf8a129ae', '103.51.75.186', '2022-05-07 07:29:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383537383b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31322f67656e6572616c223b757365725f69647c733a323a223132223b),
('7ec88ee66ff080e28a67e850f1040e3bf54a99fa', '103.51.75.186', '2022-05-07 09:58:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313931373439393b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2235223b),
('a08756dceec40f0e0f0aec9758fca27537d29f51', '23.29.118.44', '2022-05-07 07:27:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383436383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2612179713ad8f995999d7ac870be0498f093d5f', '103.51.75.186', '2022-05-07 09:11:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383438323b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223230223b),
('e76905ea91d00166152b3cb14cf98a1a002e99c3', '103.51.75.186', '2022-05-07 09:00:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383535353b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30352d3330543030253341303025334130302532423035253341333026656e643d323032322d30372d31315430302533413030253341303025324230352533413330223b757365725f69647c733a323a223134223b),
('aa7ca3331c29cce2cc3a38ad08efe3580cd0ba89', '103.51.75.186', '2022-05-07 08:59:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383537383b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a323a223132223b),
('fcce4a2f9ad9711ebbca5d844903e2522f1ea2a7', '23.29.118.44', '2022-05-07 07:30:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383635323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1896b80d9634c60ba71f0a00d331b7416ef9e8e7', '103.51.75.186', '2022-05-07 07:32:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383736343b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30342d3235543030253341303025334130302532423035253341333026656e643d323032322d30362d30365430302533413030253341303025324230352533413330223b757365725f69647c733a323a223136223b),
('de9ea1e0c223191089a8c2fd7aba912d0f7afc1b', '103.51.75.186', '2022-05-07 07:41:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383738343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223136223b),
('39706a3953947ae1dca289f306b71e991d757f23', '152.57.200.139', '2022-05-07 07:40:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393233353b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30342d3235543030253341303025334130302532423035253341333026656e643d323032322d30362d30365430302533413030253341303025324230352533413330223b757365725f69647c733a323a223135223b),
('dd60111b8eeee3890259e38661c93b36c0a75be0', '152.57.198.104', '2022-05-07 07:39:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393137383b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30322d3238543030253341303025334130302532423035253341333026656e643d323032322d30342d31315430302533413030253341303025324230352533413330223b757365725f69647c733a313a2237223b),
('a471eef2a376e4d61a17bf0244f391cf59576302', '23.29.118.44', '2022-05-07 07:35:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930383935373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8faf281cb541bae06391c791ce6a121eee6a3ee6', '152.57.198.104', '2022-05-07 07:46:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393536303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2237223b),
('5b43dd0efa877817fa3544767b1ce7f349a4c002', '152.57.200.139', '2022-05-07 07:49:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393734353b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30342d3235543030253341303025334130302532423035253341333026656e643d323032322d30362d30365430302533413030253341303025324230352533413330223b757365725f69647c733a323a223135223b),
('5468180934da2caa94e6c9bea1dfa990a1a06dbb', '152.57.198.104', '2022-05-07 07:55:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393536303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2237223b),
('d2ead2f2935b5c6475a430b79011af32192f9fa0', '152.57.200.139', '2022-05-07 08:03:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393734353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223135223b),
('6b0601b8c9a74d306d24ab6aa39e951b652f6c98', '23.29.118.44', '2022-05-07 07:49:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393739323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('556ca5f306a737398e9d720a40a07ef564478df1', '23.29.118.44', '2022-05-07 07:52:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313930393936303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4792e1a3d9b71afb0685306325bfe3859966b754', '103.51.75.186', '2022-05-07 09:58:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313931373530303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('5270a0806a5e269ac26fe03ebe9b9950868154c3', '103.51.75.186', '2022-05-07 11:25:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932323730333b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('c2ca3be6a4cacfd34868f7f6c823dec1bf3f0341', '103.51.75.186', '2022-05-07 11:39:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333534313b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2232223b),
('e343ffd5d9d7937bb4e2b3d2117fefc32fb063af', '103.51.75.186', '2022-05-07 11:42:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333737353b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('cad320a5bbedeb7b40e06f40840bda4d136bface', '23.29.118.44', '2022-05-07 11:37:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333434343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7d92d4ff6aafdc2daf93df122b09cc7bdbc6a34c', '23.29.118.44', '2022-05-07 11:37:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333434373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('24a41789b5c3bef5dad6d47a48947d69282e56dc', '103.51.75.186', '2022-05-07 11:48:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343133343b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2232223b),
('daef7d662c15e35740fad1dca1335be0a91cdfc9', '23.29.118.44', '2022-05-07 11:41:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333636303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ead41b64426df34df39cb2d9b61029fe6a693957', '103.51.75.186', '2022-05-07 11:49:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343138373b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('b299c7154aa2bc9343f5bd6666b9762a72dc35d9', '23.29.118.44', '2022-05-07 11:43:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333831333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('43d54cb084872352a482335d86522ec8d036cb43', '23.29.118.44', '2022-05-07 11:44:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333834333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e37f04e78b5b82dca184100076c32e1425a72a3e', '23.29.118.44', '2022-05-07 11:44:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333838303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7a66e16f49a7dbcdb0e86b4470082af310eee729', '23.29.118.44', '2022-05-07 11:45:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333932323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('25c914f1674e317731119b0643a405a016c85048', '23.29.118.44', '2022-05-07 11:45:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932333934353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1b02a5d6b212020834545a936311b5a42587b895', '23.29.118.44', '2022-05-07 11:47:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343037383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a92991af4ed3aa4b898e461e6166a59f98ea9cf6', '103.51.75.186', '2022-05-07 12:03:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343938353b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f34223b757365725f69647c733a313a2232223b),
('461610e56aa19351f106ab1036225030f11e5b6e', '103.51.75.186', '2022-05-07 11:55:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343532343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f34223b757365725f69647c733a313a2231223b),
('8c26f63c7b142d5a78cf2ef4382883bad379bed1', '23.29.118.44', '2022-05-07 11:50:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343235383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2aa9372b4e64d5015bc3da4f525011d4e788a2c8', '23.29.118.44', '2022-05-07 11:51:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e52c8584a923edd12cfa25a6ba760b8216fbd6a1', '23.29.118.44', '2022-05-07 11:51:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3fda8a5c48d3722d023ec4bfa40f71881c472051', '23.29.118.44', '2022-05-07 11:51:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1cdcc8c3204c7b4545c451cc80c49fa0725406da', '23.29.118.44', '2022-05-07 11:51:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('12f3db4ba2ecb0d0e563d7b6408f75fe2cf12c20', '23.29.118.44', '2022-05-07 11:51:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('cd038eda5d62bb8967849de91492034a2f217796', '23.29.118.44', '2022-05-07 11:51:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('11e57f2b2d1a0214efff0a95f689d64dde4dc5e4', '23.29.118.44', '2022-05-07 11:51:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4287c64961b53569a551290b91572893148618b4', '23.29.118.44', '2022-05-07 11:51:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('48bb29ded1b192eddebd82a65c77b59f33c0ba2e', '23.29.118.44', '2022-05-07 11:51:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a5e015e459fdb333bb881e099d751be9c4ab5555', '23.29.118.44', '2022-05-07 11:51:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('6c86c42dd0f78689d0dfaa29a272f945b37ba775', '23.29.118.44', '2022-05-07 11:51:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0b173c970e59c2f9e6a08a27cd58446184d165cb', '23.29.118.44', '2022-05-07 11:51:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4181b96e6ed109cb563ceca9fd38859fa16e705b', '23.29.118.44', '2022-05-07 11:51:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4f51ba78e275ad298635a9c8621f00555c62f7ed', '23.29.118.44', '2022-05-07 11:51:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ba0b1698fd193186dfc318b02291f48307e306f9', '23.29.118.44', '2022-05-07 11:51:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343331303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a04436f10c2d48f0f024610c172c51cb09f6b1c2', '23.29.118.44', '2022-05-07 11:51:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343331303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8fe2fdc0ad2d99f5d54cd5d4c7f8ae8be98f599d', '23.29.118.44', '2022-05-07 11:51:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343331303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('43ed144630f6b54dd509cfa2188ede1c38e7c950', '23.29.118.44', '2022-05-07 11:51:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343331303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0553c14ad2062abcd3168cf6ab5f472e1c3e7593', '152.57.240.3', '2022-05-07 12:00:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343835363b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31352f67656e6572616c223b757365725f69647c733a323a223135223b),
('b44372ff645c5d0b546e584347c528ec4a48a24f', '103.51.75.186', '2022-05-07 11:59:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343736393b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f372f67656e6572616c223b757365725f69647c733a313a2237223b),
('08f4b1785aec5e87b09044ce1f0cff912bff915f', '103.51.75.186', '2022-05-07 11:59:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343736383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('3bd6695afd0c0764bdfcb67ef79443049b0fa335', '103.51.75.186', '2022-05-07 12:04:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353036373b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f392f67656e6572616c223b757365725f69647c733a313a2239223b),
('51443dee4474beb4184e2957afa6f75e39406629', '103.51.75.186', '2022-05-07 13:47:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933313235343b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f382f67656e6572616c223b757365725f69647c733a313a2238223b),
('529cc158d8318d3e71c1202cf81fb815696dbeea', '103.51.75.186', '2022-05-07 13:52:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343531343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223230223b),
('d9e64fe2b61a209685f6e9832dd67ab5f1ce4e7e', '103.51.75.186', '2022-05-07 12:00:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343835333b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('cfb393b76bb3cfc238a89d5715fe8b4667afba40', '103.51.75.186', '2022-05-07 12:05:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353133333b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31362f67656e6572616c223b757365725f69647c733a323a223136223b),
('0423a13d623361078961e652eb4e0834685c3d4e', '103.51.75.186', '2022-05-07 12:08:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353331393b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31312f67656e6572616c223b757365725f69647c733a323a223131223b);
INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4f9337d2446b8facf0a285c311e2e941a1ae4692', '103.51.75.186', '2022-05-07 12:17:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353832363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('f4386af64c273c30335afb5fcdaf9fe8fe00ce49', '103.51.75.186', '2022-05-07 12:03:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353033393b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223139223b),
('7bf8562671fc3e7de2e8bde7084b9f34448acd3b', '103.51.75.186', '2022-05-07 12:09:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353339333b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31342f67656e6572616c223b757365725f69647c733a323a223134223b),
('a9f29864b030cc9c3402684e551d63bb08e4edf4', '103.51.75.186', '2022-05-07 12:05:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353134303b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f372f67656e6572616c223b757365725f69647c733a313a2237223b),
('015e7e05cb103790993772715d8501acf87e3c7f', '49.44.67.197', '2022-05-07 11:59:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343737333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('108b0cfe8317853788e30f4a11a4bb0ed694907b', '103.51.75.186', '2022-05-07 12:06:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353139353b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('81a0836381883e3ee0a6efbb5d3496f91e250d9e', '152.57.240.3', '2022-05-07 12:06:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353231313b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31352f67656e6572616c223b757365725f69647c733a323a223135223b),
('272fdf61931442039e11d306a7d245f76ae18f60', '223.178.151.154', '2022-05-07 12:06:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353137313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223137223b),
('cd0b225fcfb40d5bafe5caac2c71589a49a31ee7', '103.51.75.186', '2022-05-07 12:05:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343930333b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f352f67656e6572616c223b757365725f69647c733a313a2235223b),
('5231b5b8570efb7e650185b39241cb9fa0bbb147', '103.51.75.186', '2022-05-07 12:13:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353539303b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32302f67656e6572616c223b757365725f69647c733a323a223230223b),
('4a4b52529a52afed53da64819e2b9d6018114a77', '103.51.75.186', '2022-05-07 12:39:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932343934393b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f372f67656e6572616c223b757365725f69647c733a313a2237223b),
('90f9bf4ce2609ff433496ac0ab442c455006c32d', '103.51.75.186', '2022-05-07 12:08:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353239313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('3ad254eae2cf97e0c1d472f244b8f404f7c3bb1f', '103.51.75.186', '2022-05-07 12:05:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353033393b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223139223b),
('e024fe852d0389bd763f62a2dc50678dbccd8f8e', '103.51.75.186', '2022-05-07 12:09:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353337393b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f392f67656e6572616c223b757365725f69647c733a313a2239223b),
('f2fbe6df3d4f6e0c9294912073d3cdadc93c3327', '103.51.75.186', '2022-05-07 12:11:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353438353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223136223b),
('a646a515d5f6377c758dc34235488dd47afdc7b7', '103.51.75.186', '2022-05-07 12:13:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353134303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2237223b),
('b22cbbbec1d374b814898b77c0586ee4c79bade2', '223.178.151.154', '2022-05-07 14:23:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933333339353b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31372f67656e6572616c223b757365725f69647c733a323a223137223b),
('cc7a67e52d411a2cfe04368556544cf5b18599e4', '103.51.75.186', '2022-05-07 12:16:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353831393b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('2af9c9fe1536501db9fbbcdec9d9fdc211a39b0f', '152.57.240.3', '2022-05-07 13:01:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353231313b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31352f67656e6572616c223b757365725f69647c733a323a223135223b),
('3b055a9578777556e4e2a196b92e8782fd941ffd', '103.51.75.186', '2022-05-07 12:15:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353730343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223131223b),
('cfaa8fece9e407efac0e4310afbce1503a8f959b', '103.51.75.186', '2022-05-07 12:18:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353932373b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f74696d65736865657473223b757365725f69647c733a313a2231223b),
('bef938b9482c40ae7be85e99e0b6263152082207', '103.51.75.186', '2022-05-07 13:54:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353337393b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f392f67656e6572616c223b757365725f69647c733a313a2239223b),
('1a47ecf675133d1d1c2d15926e2a39f032f7fb29', '103.51.75.186', '2022-05-07 13:54:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353339333b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31342f67656e6572616c223b757365725f69647c733a323a223134223b),
('9c2e40a82bf556d1ca6d8f06ace8d9220291f587', '103.51.75.186', '2022-05-07 12:21:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353438353b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31362f67656e6572616c223b757365725f69647c733a323a223136223b),
('ee4b66fcf80721b7752c71f3755807c965fe0b27', '103.51.75.186', '2022-05-07 12:18:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353539303b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a323a223230223b),
('7fbe6a9b56fb275762dfc365ea945d658c3693b2', '103.51.75.186', '2022-05-07 12:15:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353730343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223131223b),
('ca92009b2baeac2b9423865384fcd1924c0b87b1', '103.51.75.186', '2022-05-07 12:22:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932363132383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('c6deee1bfa3224e50dabbaef88b5b9fd7fbb5de1', '103.51.75.186', '2022-05-07 12:27:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932353832363b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31342f67656e6572616c223b757365725f69647c733a323a223134223b),
('d1e9db2aa02973a670716debff9f96ab89711872', '103.51.75.186', '2022-05-07 12:23:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932363233363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223231223b),
('13031496c41fe1a7f0bd57bab7ea0f762c105dda', '103.51.75.186', '2022-05-07 12:27:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932363433363b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('2daa6b27324449ce6d99f65b5734856a18fc5d47', '103.51.75.186', '2022-05-07 12:32:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932363736373b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('0537ef32402020d1c7495c694e12e933102b8c73', '103.51.75.186', '2022-05-07 12:28:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932363435333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('924a4e705a67fa8b302eec9479145b79783be1b0', '103.51.75.186', '2022-05-07 12:38:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932373038343b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e74732f766965772f35223b757365725f69647c733a313a2231223b),
('d45780de38dbde9b369143fec7cd97fbb2b17399', '103.51.75.186', '2022-05-07 12:47:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932373632313b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f74696d65736865657473223b757365725f69647c733a313a2231223b),
('470621b7dafd8ae1811842d32eefcd20ccb4fa28', '103.51.75.186', '2022-05-07 12:53:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932383033313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('4af5e1695bdba37b1af56e71919003b674fec37c', '103.51.75.186', '2022-05-07 12:52:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932373937373b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f74696d65736865657473223b757365725f69647c733a313a2231223b),
('04d99283d6074d0608e99e641d53a60f16ab1dd6', '23.29.118.44', '2022-05-07 12:49:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932373735383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c321cc07d7a696c8b2e401f1f2679614af15f335', '103.51.75.186', '2022-05-07 14:39:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932373933373b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('33cd308c52b03390f9f74d54d1ff0fda0e866415', '103.51.75.186', '2022-05-07 12:58:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932383238313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('4956faafa647c258d4e056d1af2f0ab8e58ffbe1', '103.51.75.186', '2022-05-07 12:56:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932383033313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('f332ab77bb57b9f8d3b845ab50f75dc5b11b96e2', '23.29.118.44', '2022-05-07 12:56:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932383136373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('56d909749c057aa4bb9056edfde0293320bad3e8', '103.51.75.186', '2022-05-07 13:14:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932393234343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('5269e027dd2681f98c1f8cc2ff1df0723e18d23e', '152.57.106.41', '2022-05-07 13:08:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932383834383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e7570223b),
('38c8271395dd3b5e89fe0a7d99ed6ba6e3524e86', '103.51.75.186', '2022-05-07 14:29:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933333738333b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('2dbf5ba9843adaf68d5e6311b62e82a5ffd7a412', '103.51.75.186', '2022-05-07 13:20:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932393632303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('a57efa37adf4f07592153f69007336e408b6112e', '103.51.75.186', '2022-05-07 13:20:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313932393632303b5f63695f70726576696f75735f75726c7c733a37303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f6172642f656469745f64617368626f6172642f32223b757365725f69647c733a313a2231223b),
('6488fc4bbbb073a320c4dda730d44dfa7f33bef8', '103.51.75.186', '2022-05-07 13:21:23', ''),
('427423e83b02d98fa4ecd8c8eb046a27f017d790', '103.51.75.186', '2022-05-07 13:47:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933313235343b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f382f67656e6572616c223b757365725f69647c733a313a2238223b),
('5f38925630aae7b719c1afe3d829c9854dd5bf99', '103.51.75.186', '2022-05-07 14:11:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933323639323b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('f50236c3b28abc6258621e5571a53cce412ff11d', '223.178.151.154', '2022-05-07 14:23:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933333339353b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31372f67656e6572616c223b757365725f69647c733a323a223137223b),
('d36d549dac68e99ec19cb33f934875d63684e052', '223.178.151.154', '2022-05-07 14:23:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933333430343b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('3369a55cb398652d1ce5fd5a509ee5ff39334b93', '103.51.75.186', '2022-05-07 14:39:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313933333738333b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f74696d65736865657473223b757365725f69647c733a313a2231223b),
('df9536d0e0ff94e57bacaeddfb05552cb2018b87', '152.57.226.44', '2022-05-07 16:45:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313934313934333b5f63695f70726576696f75735f75726c7c733a3133363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f7461736b73223b),
('2b8ad5330e0424706fd9ed6a1b3d2bde2c80bdca', '182.70.59.168', '2022-05-07 17:46:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313934353630303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('c4035298a6555f6f11dfdf055d7f3f7dea184c94', '103.91.223.17', '2022-05-08 04:53:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313938353539393b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('5993656d36721c79cd399a642c7bc70b8dc9efe3', '103.91.223.17', '2022-05-08 04:53:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313938353630303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b6572726f727c733a34303a2254686520616374696f6e20796f7520726571756573746564206973206e6f7420616c6c6f7765642e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('005356af1adb7ffb07eec77daff53860f04eac10', '152.57.206.59', '2022-05-08 15:49:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323032343936363b5f63695f70726576696f75735f75726c7c733a3134393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532467465616d5f6d656d62657273253246766965772532463525324667656e6572616c223b),
('85e7223cca3c5e12efda3e90ff42fdd6501f1910', '152.57.201.32', '2022-05-08 15:49:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323032343936363b5f63695f70726576696f75735f75726c7c733a3134393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532467465616d5f6d656d62657273253246766965772532463525324667656e6572616c223b),
('248014475062011fd02fe623181c3538e69d3397', '152.57.198.43', '2022-05-09 01:10:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323035383632353b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('fe7237d957fd220c329b6d5d20714f1be5eba972', '103.51.75.96', '2022-05-09 05:04:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037323636393b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('898d3e1b60ad3698d08859fb05f5a07255569e0b', '23.29.118.44', '2022-05-09 04:45:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037313531303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2baa1963fc04dc3e550ca94b7ecdcc36fa8a1217', '23.29.118.44', '2022-05-09 04:46:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037313538383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2bcce545b8cfc7611f4e1aa73e4b6b9dbb80ef34', '103.51.75.96', '2022-05-09 06:34:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383038393b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('85c7965ce2d2a41d196bad04493e02491568c762', '23.29.118.44', '2022-05-09 05:07:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037323836303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5a8a20e8df28232c33c3c95688c0916ef5c0af03', '23.29.118.44', '2022-05-09 05:07:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037323836313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('96418d73fbf93699b8d4794bf09093bf4362e61c', '23.29.118.44', '2022-05-09 05:07:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037323836313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('91136ecae60cb10d8c4b549a3717102275eecaaa', '23.29.118.44', '2022-05-09 05:07:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037323836313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ad57b0eef5d76254dcbab28a99f9444429dea5cf', '23.29.118.44', '2022-05-09 05:07:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037323836313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8826e5ad2e98f31ec38d385457516ff348094df5', '152.57.243.68', '2022-05-09 05:49:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037353335313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('71061b30e5c41a50e087aae3757237d37e78bc71', '103.51.75.96', '2022-05-09 06:48:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383931313b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('53dcae7363b5d4e9d9632112e511b7851b9a70ef', '23.29.118.44', '2022-05-09 06:36:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383139303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9cb4c3e8ae160d22933fd87e638159e41049166c', '23.29.118.44', '2022-05-09 06:37:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383237303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f37db858df3da4bf88d8cbe59b4163286dc03be6', '23.29.118.44', '2022-05-09 06:38:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383239303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('af216d1c14e9cda25c7205b21a90d30bd405e6ac', '103.51.75.96', '2022-05-09 06:38:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383332363b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('9f3a688690f33e064cb96d9c844ed2a9ee90d4e5', '23.29.118.44', '2022-05-09 06:38:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383333303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3fb611284621515e8f28c4db5fc51f15d91654a4', '23.29.118.44', '2022-05-09 06:41:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383439323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('b92ebecba07c3ebb6345ffd737a853dfd13bc1ca', '103.51.75.96', '2022-05-09 06:46:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037383736313b),
('3bc6f9233917d0723be080b297c49946769d0078', '103.51.75.96', '2022-05-09 10:01:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039303530343b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('e5eb2605148ba87b3b7558b16e8a88dec5b62e52', '23.29.118.44', '2022-05-09 06:59:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037393539343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9380d3aa34e120d15574ebe68958e8e1865b3631', '152.57.198.165', '2022-05-09 07:00:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323037393631303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('a550914bdb03238459ea6ea2be8b477b7a1ffb4b', '103.51.75.96', '2022-05-09 09:10:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038373430363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('026c94e7d0027c51e327e008e410b74c438f68d1', '103.51.75.96', '2022-05-09 09:15:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038373732333b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('fa1598f6e7f9b2d50e8a9a403900ea945f69ee7f', '23.29.118.44', '2022-05-09 09:14:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038373636353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('401ed7c31111d1f4cf7a1abf880b0d20b71475d2', '103.51.75.96', '2022-05-09 09:20:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038383033363b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('f7db71e446e1e8f7b6c251a780201e88947509b7', '23.29.118.44', '2022-05-09 09:17:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038373834353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('73a6b6ced69c0e911fc8498ff6afaabe4a29eea1', '23.29.118.44', '2022-05-09 09:22:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038383132393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3061721ff16117046c4ef4fb171a6e767d323558', '23.29.118.44', '2022-05-09 09:23:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038383139363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7cf59e1552ac801b61498db2f7d54677f33a5888', '103.51.75.96', '2022-05-09 09:43:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393431333b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2232223b),
('0540f8426ff6eea38c6c0a6a986535ded5bf14e7', '23.29.118.44', '2022-05-09 09:26:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038383336303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('62eac4d98da515d829fd2c57a78c30ef5d657f1e', '23.29.118.44', '2022-05-09 09:43:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393338363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0b4ad1f0d749971520ae17f1688c4ecd3dec1d4e', '23.29.118.44', '2022-05-09 09:43:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393338393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f8f4095a4183e1bf602e4be0834f2ba729136998', '103.51.75.96', '2022-05-09 09:48:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393732333b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('91cca20d460e772af722ba01ca67af7161c6e232', '23.29.118.44', '2022-05-09 09:45:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393532313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('84c80e501ab5346758fd76e4697c1f721a69cd9c', '23.29.118.44', '2022-05-09 09:45:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393532313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e44bc77db37e537acf49a0bcfe8e55704bcc7d72', '23.29.118.44', '2022-05-09 09:45:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393532323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1ff96b1cd757443426a7a5fa1783df8ce4d777df', '23.29.118.44', '2022-05-09 09:45:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393532323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9464124d20cb333480564cb9462234be87e8d36d', '23.29.118.44', '2022-05-09 09:46:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393536393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('47aa385e942d4f952b0952dc7efacc04d96403b6', '103.51.75.96', '2022-05-09 11:07:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323038393732333b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('92003b658fd0e21d8d6fbc3c7661b6205f8dde22', '103.51.75.96', '2022-05-09 10:50:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039303530343b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('1914bd71347c40d83ffacf3ee47bac76d9e90834', '103.51.75.96', '2022-05-09 11:07:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039343336323b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('4f9a97746803c41509c6fc303ea5c79c81acf608', '152.57.209.193', '2022-05-09 11:43:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039363538333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('8462b49d968946b349089fe29ad9d07b94b2134f', '146.112.163.41', '2022-05-09 11:43:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039363631303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('488136fff19a3f809ec2648e49ce2e050c9b167d', '104.47.100.254', '2022-05-09 11:44:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039363634323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('b83f2ca29edf74e4da87c9f8ac6c727db84b193a', '165.225.120.231', '2022-05-09 11:44:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039363634333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('6870d8e4dd54bfaf87f7a3ef4981d4da4ff8de05', '136.226.255.31', '2022-05-09 11:56:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039363634363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('492217c867cc51fd05010691d40d9cd09b8f33bb', '52.172.252.72', '2022-05-09 11:44:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039363636313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('ed3944daa96ecc6552fe6c32a4d59fa5b42ed616', '103.51.75.96', '2022-05-09 13:43:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130333830363b5f63695f70726576696f75735f75726c7c733a3134363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f7461736b735f6b616e62616e253246223b),
('79fc6f389bec73fcd1ae47970b466d2c29a89801', '152.57.236.192', '2022-05-09 17:14:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323131363438313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('617dbf779845818c3d7785dfd36222ec02e14ebb', '103.51.75.123', '2022-05-10 08:04:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323136323438343b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b732f223b757365725f69647c733a313a2231223b),
('c193cc630eca742539207a8a5088d655d681fbc1', '103.51.75.123', '2022-05-10 11:49:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323138333334303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('55236594f7ab8b7e36bee4fd02a8d5409a2bedf7', '103.51.75.123', '2022-05-11 07:37:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323235343633333b5f63695f70726576696f75735f75726c7c733a3133363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f7461736b73223b),
('50af6e4c21ac35e5a0990bcbc3d025cd7fd7a965', '103.51.75.123', '2022-05-11 09:45:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323235393538353b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b732f223b757365725f69647c733a313a2231223b),
('6b694017e7318366309b9df68c448f4be27313c4', '103.51.75.123', '2022-05-11 10:29:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323236323031303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223134223b),
('184b0832b12fcd6f5d83f8a11177e821eb184f17', '23.29.118.44', '2022-05-11 09:42:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323236323137363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c8e8b681cadbf3c991521bee52a989411492ee19', '152.57.242.34', '2022-05-11 12:01:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323237303437353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('cfa3c3c74c3b12bec9a189592f175cf57bca747a', '152.57.241.56', '2022-05-11 12:01:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323237303437353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('e6762ff6108d2461028d131a7983cea8cd6a516a', '128.14.197.131', '2022-05-11 12:12:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323237313133353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('4062925b21e03d7686ba4b0f452742a897794f05', '152.57.236.199', '2022-05-11 12:18:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323237313531323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('bb3e6c0ec3e5a7815355bf53d09e2521014db26b', '194.5.213.74', '2022-05-11 12:18:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323237313531323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('45d6c93ac3ae6c49048fa62a35212b15d8ce9c57', '103.51.75.187', '2022-05-12 06:22:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323333363536383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('cccb971f55fa0502d221c083e9cdaf52124c147c', '23.29.118.44', '2022-05-12 06:22:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323333363531393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('62a626ec6142e7d02ff75c02c235011d5d45f384', '103.51.75.187', '2022-05-12 09:17:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334373036333b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30342d3235543030253341303025334130302532423035253341333026656e643d323032322d30362d30365430302533413030253341303025324230352533413330223b757365725f69647c733a313a2231223b),
('4a5f14ea6f01cf1a1fb9e4e33fe192d1915f38df', '103.51.75.187', '2022-05-12 09:26:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334373538323b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('dbdc71398acc9541bd7918f546ef51fd58c09165', '103.51.75.187', '2022-05-12 09:43:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334383631323b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c65616473223b757365725f69647c733a313a2231223b),
('634f6f2363b013ddc462005828ce3f4a2fc37a20', '103.51.75.187', '2022-05-12 09:26:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334373538333b),
('73ca6d21825714b0b0a2b7bceeaab91578c94270', '103.51.75.187', '2022-05-12 09:45:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334383732353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('40e74e9f6625670a8d64c38828602f8c5fa6651c', '103.51.75.187', '2022-05-12 10:28:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335313333343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('3c377ac77947e6025b6b8b282198db71644dddd0', '103.51.75.187', '2022-05-12 09:46:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334383732353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('acdc9eac1d9a37ae71961deedc2deeb3d59d4e85', '103.51.75.187', '2022-05-12 11:25:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335343733393b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('a3805a5f2b0545daa780b1ac0db28f874b94e49e', '103.51.75.187', '2022-05-12 11:31:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335353038343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('40f6be9524b3e7049ddefc1152525aa4f35943a0', '103.51.75.187', '2022-05-12 13:18:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335353038343b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c65616473223b757365725f69647c733a313a2231223b),
('f25051ef448d7be5de6b75b1e81725cbdfa6eb98', '103.208.69.35', '2022-05-12 18:24:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323337393838353b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('adc6fc34582c4f2e37488d039b3c8dd8210fc5b7', '116.75.139.78', '2022-05-18 06:42:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835363135343b5f63695f70726576696f75735f75726c7c733a36313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f696e766f69636573223b757365725f69647c733a313a2231223b),
('d383996b641b10b07fdcd24013b1bd276efb0b6c', '116.75.139.78', '2022-05-18 06:49:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835363536323b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636f6d70616e79223b757365725f69647c733a313a2231223b),
('ca3dd380f203c8c8824a173e60469b0b5ab4735e', '116.75.139.78', '2022-05-18 07:02:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835373337353b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f32223b757365725f69647c733a313a2231223b),
('3e0ccf41a95bc7f4c9ca9e14626fdbb52321bc8c', '116.75.139.78', '2022-05-18 07:28:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835383931383b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('a6959bd0e2f23ee24b89640f91c62405aaff3813', '116.75.139.78', '2022-05-18 07:39:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835393535353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f706f73616c732f766965772f31223b757365725f69647c733a313a2231223b);
INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('31ec67ad8a5b726f9e5b5eeb9d52b6991c856917', '23.29.118.44', '2022-05-18 07:29:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835383939343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5299431767a6e44e7fc54dabb3c1b4b4ba3c9d8e', '116.75.139.78', '2022-05-18 07:44:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323835393839353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f706f73616c732f766965772f31223b757365725f69647c733a313a2231223b),
('68e691d0855c1e9feed11042cbdd6931f7a40607', '116.75.139.78', '2022-05-18 09:10:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836353030353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f706f73616c732f766965772f31223b757365725f69647c733a313a2231223b),
('bba1dee28f74cf541a234e71efb2c813a48342de', '103.91.223.17', '2022-05-18 07:51:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836303239313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('f670485c7fc03277c23b3d20e8e60299400b70c6', '103.91.223.17', '2022-05-18 07:56:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836303631333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('56c9ce18630444a9057d671f41eec33ef138801e', '116.75.139.78', '2022-05-18 07:54:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836303434323b5f63695f70726576696f75735f75726c7c733a37303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6f666665722f707265766965772f312f6a6472787172596e5571223b757365725f69647c733a313a2231223b),
('7c9d409859cbb30e8103f55fbbf88a2603453c5a', '116.75.139.78', '2022-05-18 07:56:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836303630333b5f63695f70726576696f75735f75726c7c733a37303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6f666665722f707265766965772f312f6a6472787172596e5571223b),
('8034d9bac5afbc27b0d050abba30f9a463550732', '103.91.223.17', '2022-05-18 08:01:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836303931393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f706f73616c732f766965772f31223b757365725f69647c733a313a2231223b),
('11b36d26919194aa29ca7f23109f31986015f16f', '103.91.223.17', '2022-05-18 08:02:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836303936353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('47cdabf389f45c5d200f3f5ab49092e7292eed24', '116.75.139.78', '2022-05-18 09:03:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836343538333b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('c0480d408f2615fc1fe39d518824f06acaeed0c7', '23.29.118.44', '2022-05-18 09:02:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836343532363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('734ba11c3cb01ed350a59c767e6a85e4c7b6a970', '116.75.139.78', '2022-05-18 10:33:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836393938393b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f33223b757365725f69647c733a313a2231223b),
('52b1b6a8ef926582a9733ffacc44e3ba41041401', '116.75.139.78', '2022-05-18 09:33:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836363433313b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f33223b757365725f69647c733a313a2231223b),
('f3e26ccd8ad27e27154678e6b6d6e89a327d2f38', '116.75.139.78', '2022-05-18 09:58:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836373839303b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f33223b757365725f69647c733a313a2231223b),
('51968096a13ea016ea9762227c7ff057634e5070', '116.75.139.78', '2022-05-18 11:47:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836373839303b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f312f6163636f756e74223b757365725f69647c733a313a2231223b),
('64641ca390e583901fc663658c095e296bdf8501', '116.75.139.78', '2022-05-18 10:39:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323836393938393b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f33223b757365725f69647c733a313a2231223b),
('30a9b23e948a4a98a66ad08ae2641247debc124c', '152.57.233.158', '2022-05-19 11:21:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323935393236353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('760cc75f2b2fab39913e36d62bc8dcc3482f8d74', '27.61.194.60', '2022-05-19 15:45:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323937353131353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('633723b9ad0b79325c1115c366e37aa03e3b3f64', '27.61.194.60', '2022-05-19 15:45:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323937353131353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('f21814fda3e115b4881ee201a0ce7878a464561e', '103.51.75.190', '2022-05-20 07:26:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333033313630353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('ba633a25fe881cdaa24bffa8c3e704abd02ac1fd', '103.51.75.190', '2022-05-20 07:33:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333033323033363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('64d41a5e3531e0e160344db133852f533b05eb5a', '103.51.75.190', '2022-05-20 07:41:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333033323530303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('2b8f65c5c8d2c32f77f1615aaf9c36cafd314596', '103.51.75.190', '2022-05-20 07:44:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333033323530303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('d314d15a259de49339fa61de3420ed030438a315', '156.146.59.39', '2022-05-20 11:57:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333034373739313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('f9871c0687aa6965aeac53ab84be5ae521a3705b', '116.75.139.78', '2022-05-20 13:40:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333035343030383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f34223b757365725f69647c733a313a2231223b),
('97226e14dca5fc0860d65a10ac594843f884881b', '116.75.139.78', '2022-05-20 15:35:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333035343030383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('c5cc5660c222e84d7c5985c571d6cb91a745ba9a', '106.193.102.233', '2022-05-24 06:59:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337353536343b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('9b088be983802896dfb2186af7e514dc66aa11b9', '106.193.102.233', '2022-05-24 07:00:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337353536343b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2232223b),
('18dc9d44f9f3cd15afeff2ffd188322e8ce47ee7', '106.193.102.233', '2022-05-24 07:12:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337363336313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('db84573e6d6ab1a47bfcbc6c704cd18d48e131fc', '106.193.102.233', '2022-05-24 08:49:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338323138323b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('d707d6c19222eed8e2d0dcbbcc4e8a9afcedf356', '116.75.139.78', '2022-05-24 07:55:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337363735363b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f312f6163636f756e74223b757365725f69647c733a313a2231223b),
('d78cc51390ae6b396e35c63b4451290ab0ec1d6b', '106.193.102.233', '2022-05-24 08:49:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338323138333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('3a26c26a3d0ca227e5f3549fed28f06b1c67d02f', '106.193.102.233', '2022-05-24 08:58:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338323639303b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b),
('e9ae65b3379791bdfe65a3f36b35d7e4ca7b0b55', '106.193.102.233', '2022-05-24 09:00:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338323639303b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b),
('6a784830b9c9f259660f86ccfc924b73335f0830', '106.193.102.233', '2022-05-24 10:15:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338373334373b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b),
('9f8ba3cf69158dabc92e3017f68d44e1ae37ac09', '106.193.102.233', '2022-05-24 10:17:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338373334373b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b),
('66768a2876f503f15e7c410541189ca9c9aea8c5', '106.193.102.233', '2022-05-24 10:32:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338383335323b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32223b757365725f69647c733a313a2232223b),
('c7f9416b5b663e9c8f62945f20161569162d5b73', '23.29.118.44', '2022-05-24 10:32:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338383333303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('97b7f1092f0f3ac4b19aae2eb81ef1b7b3b1b6cc', '106.193.102.233', '2022-05-24 10:33:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338383335333b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a313a2231223b),
('fb62db96b004fd1f985ed1c9f2df3d2204d2abce', '106.193.102.233', '2022-05-24 10:40:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338383832323b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('d817dab0ad1e91e35e13fd531ca4bc62f852be44', '23.29.118.44', '2022-05-24 10:40:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338383832303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('05758ed5daacaf3a4697ecbf999e2fbb8991d513', '106.193.102.233', '2022-05-24 10:41:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338383832323b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('63cfd222c365a170a919ee6ae04851a6a0ce4d20', '106.210.153.161', '2022-05-24 11:53:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339333138383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('7719a2c06a12ccccaa0c6e76d59dc2779012bd65', '23.29.118.44', '2022-05-24 11:53:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339333138363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('377c71759b67f217191ab46dc45c2d8f6ca719da', '106.210.153.161', '2022-05-24 11:54:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339333138383b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a313a2232223b),
('d2adcef99624e29cecdfc98e34113dc1019ef753', '106.210.153.161', '2022-05-24 12:02:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339333734383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('87c69896377af09bb0d4ac12d0a464f0edc7fe45', '103.91.223.17', '2022-05-24 12:43:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339363139333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('bd67295d4176f7c812e05b2ccd186e2bff5637a3', '23.29.118.44', '2022-05-24 12:02:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339333734363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('b66ac58967173bbf0b294d30d13aa1636d23598d', '106.210.153.161', '2022-05-24 12:03:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339333734383b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f766965772f34223b757365725f69647c733a313a2232223b),
('d2e8641c578054528a031c2fbf0ba7b522cfef7d', '106.210.153.161', '2022-05-24 12:13:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339343430363b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('b2ddc4be83885e169b9e0ec59f1864ccfb5a3874', '23.29.118.44', '2022-05-24 12:13:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339343430353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3c942e2466abe235c0153952d9994a3aa12cc3a7', '106.210.153.161', '2022-05-24 12:14:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339343430363b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('917b8a0214fa0f90eb85b1ef971722b8f5404b14', '106.210.153.161', '2022-05-24 12:25:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339353133353b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d2f32223b757365725f69647c733a313a2232223b),
('b0bf3eacb6110b1d640e5de3d461d7d5b20908da', '23.29.118.44', '2022-05-24 12:22:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339343933313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3f3a5149544fcc70cf0f21e48aff5d7c1cb45214', '106.210.153.161', '2022-05-24 12:26:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339353133353b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d2f32223b757365725f69647c733a313a2232223b),
('274f44240d157e290ad63f1c0ab0b9e6265b2cb1', '106.210.153.161', '2022-05-24 12:48:52', ''),
('306e49d22c3769b7cbea6ddf25142ada0da26a9a', '103.91.223.17', '2022-05-24 12:46:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333339363139333b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a313a2232223b),
('d2f3fc2180e5b35eaf4bf9617bdb02bf2937afa5', '106.210.141.66', '2022-05-24 17:21:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431323837333b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('997391fd7ddda65ba2d4376857bcf6044afc6dba', '116.75.139.78', '2022-05-24 17:11:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431323238333b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3134223b757365725f69647c733a313a2231223b),
('e39930c2cccb8f7ac3a458a7fbd89b41d22f109f', '116.75.139.78', '2022-05-24 17:16:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431323538393b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a313a2231223b),
('b6d803ba112ae70c509b94bc480ff9e6aaba3b12', '116.75.139.78', '2022-05-24 17:23:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431333032323b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32223b757365725f69647c733a313a2231223b),
('8239f74071c1f9d9c3e875f769076d7a472440d1', '106.193.160.86', '2022-05-24 17:22:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431323837343b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('d68e1148b3c5dfb15b671208f82a3af4dd344eec', '106.193.160.86', '2022-05-24 17:28:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431333238383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('11e77cf1f3c8c471dba4ac39bf3c72f88b3ec0ab', '116.75.139.78', '2022-05-24 17:28:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431333333303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('40e30a186b19c91abf7bda8b5bb4126912288dfb', '106.193.160.86', '2022-05-24 17:29:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431333238383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('fa0999cbddad9d8072427a71c59695e8555e058d', '116.75.139.78', '2022-05-24 17:30:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333431333333303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('4b7f3a511e4881743bb3984453c117caab8e1061', '106.193.160.86', '2022-05-24 17:29:54', ''),
('66dc2a451f87c65fa1332c205dfe6ee318c97087', '110.227.19.126', '2022-05-25 05:02:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333435343934323b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e74732f666f726d223b757365725f69647c733a313a2232223b),
('724c4446bdd4f4bb1fe11d41e0baeb9fb442a585', '110.227.19.126', '2022-05-25 05:03:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333435343934323b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3131223b757365725f69647c733a313a2231223b),
('4101f4bc6c90b4f16ae479db2933c0946e3de592', '110.227.19.126', '2022-05-25 05:48:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333435373732323b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('dc28ef16d4d5f7ff12bbc7661fff9bafa6ce58ae', '110.227.19.126', '2022-05-25 05:50:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333435373732323b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f6172642f766965772f31223b757365725f69647c733a313a2231223b),
('30709fd704fe8d63ea54bd27d147908eefcb1b03', '110.227.19.126', '2022-05-25 06:41:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333436303930353b5f63695f70726576696f75735f75726c7c733a3133363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f6172642532467669657725324632223b),
('8a478190a0961dd57af5eb87712db65e8c678f5c', '117.99.249.18', '2022-05-25 06:42:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333436303930353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f6172642f766965772f32223b757365725f69647c733a313a2231223b),
('d2dbda027db989f28c0ca04824b626d696e4894b', '117.99.249.18', '2022-05-25 10:35:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437343932383b5f63695f70726576696f75735f75726c7c733a3132323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e7068702532466576656e7473223b),
('64f0d0a19c4b68735729562809bdb9d9cf7d82c7', '106.193.131.104', '2022-05-25 10:36:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437343932383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2232223b),
('d9a326030d6ca7b8e256ddede93978a25c44c4d7', '106.193.131.104', '2022-05-25 11:02:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437363537343b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3131223b757365725f69647c733a313a2231223b),
('911a9abda09d1368566b226f9146e6b79f5a3147', '103.91.223.17', '2022-05-25 10:43:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437353338323b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3131223b757365725f69647c733a313a2231223b),
('7c441c14902c7bbf3541ae805098728182cb7cae', '103.91.223.17', '2022-05-25 10:48:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437353731363b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f34223b757365725f69647c733a313a2231223b),
('c0fcdfbf5e431ddcf018506139beeeebcb35cc56', '103.91.223.17', '2022-05-25 10:55:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437363132343b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f34223b757365725f69647c733a313a2231223b),
('056bd920497ad5d07e7d6af7d013131d20c58067', '103.91.223.17', '2022-05-25 11:42:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437383934303b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f68656c702f6b6e6f776c656467655f626173655f61727469636c6573223b757365725f69647c733a313a2231223b),
('d004307447beb772474ec9a5759c7a4dcec2da54', '106.193.131.104', '2022-05-25 11:03:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437363537343b5f63695f70726576696f75735f75726c7c733a37333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f31312f6a6f625f696e666f223b757365725f69647c733a313a2231223b),
('6a27f513e5235bcd73d6c24c99cc194825a8b098', '106.193.131.104', '2022-05-25 11:08:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437363932303b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f322f6a6f625f696e666f223b757365725f69647c733a313a2231223b),
('f658c92a66847f672d6d05f2cd0a34c215d2a677', '106.193.131.104', '2022-05-25 11:09:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437363932303b5f63695f70726576696f75735f75726c7c733a37313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f322f67656e6572616c223b757365725f69647c733a313a2231223b),
('138d64b1a6dd126fe4962b94b205a1f14cf59c91', '106.193.131.104', '2022-05-25 13:55:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333438343339323b757365725f69647c733a313a2231223b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32223b),
('5c693b12756287a90070546767e7dbdffb1d6778', '103.91.223.17', '2022-05-25 11:53:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437393632393b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3131223b757365725f69647c733a313a2231223b),
('4fa8686ba0b31b9a03c3cd3b82053b241c9996ac', '103.91.223.17', '2022-05-25 12:37:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333437393632393b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3131223b757365725f69647c733a313a2231223b),
('93dc251bab31c417fc6dfeb07890557aba033210', '106.193.201.36', '2022-05-26 04:59:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333534313136323b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('5e94e9d5a7730b9541457ad35d5fbf0d6af1854c', '106.193.201.36', '2022-05-26 04:59:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333534313136323b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('bdbc0e6885f4dd1b4ce2caf7595d6248e5d8a10e', '103.91.223.17', '2022-05-26 07:49:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535313334303b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f74696d656c696e65223b757365725f69647c733a313a2231223b),
('ded8aafdc51fe814f9f5912217617e2fc4db29ff', '103.91.223.17', '2022-05-26 07:49:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535313336353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('267b1bec633ba21584ec525815d66afd8233c8ce', '106.220.213.108', '2022-05-27 04:50:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632373033323b5f63695f70726576696f75735f75726c7c733a3133393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('bc16976b53ba92c0ef7fc0c217ba3b591854ea2a', '103.91.223.17', '2022-05-27 05:22:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632383937363b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('7b7cadd5b364eff6f664fba82ad0dd052452bc32', '106.220.213.108', '2022-05-27 05:03:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632373831313b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f6172642f766965772f32223b757365725f69647c733a313a2231223b),
('de254f01380a13e9a0f618bf2124ccbb90bd20f0', '116.75.139.78', '2022-05-27 05:18:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632383638333b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('5e2249f158b974289791a16cc7495e2603c4e3e1', '106.220.86.38', '2022-05-27 05:26:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632373831313b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('9dd0052832b812a6771e99ddaca44edbb61bd035', '116.75.139.78', '2022-05-27 05:25:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393133333b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f67616e74742f223b757365725f69647c733a313a2231223b),
('c010df4db203605dc446fcdba5407734be08cc23', '106.213.189.33', '2022-05-27 05:28:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393239343b5f63695f70726576696f75735f75726c7c733a37303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b735f6b616e62616e2f223b757365725f69647c733a313a2231223b),
('56896d6989b13d3f261b55a62803cc7b19683b52', '23.29.118.44', '2022-05-27 05:23:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393030323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('373247f3f630c93fe62ec9668cbc44fe83797d2b', '23.29.118.44', '2022-05-27 05:23:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393030363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('b7d5a184aaa3fbc742c54b020727a6c5ffc2d440', '116.75.139.78', '2022-05-27 05:46:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303337373b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('af76892839dd12952414df29bad9642780b7f5ed', '23.29.118.44', '2022-05-27 05:26:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393136343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8ba5a98a489790e4fdca95135f36000a5e6d5e37', '23.29.118.44', '2022-05-27 05:26:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393136353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('6812fa078eef5c5e1ed438dfe5a7b8f60ea0014c', '23.29.118.44', '2022-05-27 05:26:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393136353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c40d0987877530a902213e4a46a1114cbec51054', '23.29.118.44', '2022-05-27 05:26:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393136373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('003f430413347be9afb9bf3c5650942b02b7a593', '23.29.118.44', '2022-05-27 05:26:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393136373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('98ddf64e324c7e4a5899fbdc73c06e21da209934', '23.29.118.44', '2022-05-27 05:26:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393136383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c65745d75a9a1e75e5abff24959e7d8abb2a21d3', '23.29.118.44', '2022-05-27 05:27:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393235333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('799307448ec5a5f6a3bb9e43884ba26e1cc67f6e', '23.29.118.44', '2022-05-27 05:28:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393238383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('679b5fa1695f8127529e91d1f77c8d69efa4f446', '106.213.189.33', '2022-05-27 05:39:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393936303b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('5527a031c315ca57ad5e5c62497a4d955e1fdffd', '23.29.118.44', '2022-05-27 05:30:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393435333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ef9d076d9a799abd5101929b57c22a1332eafeeb', '23.29.118.44', '2022-05-27 05:30:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393435343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('83326ea33704174b681f114b430e9306601245cc', '23.29.118.44', '2022-05-27 05:31:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393439393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3114c1f006abb14e8386fd456afa9a7451b87e5a', '23.29.118.44', '2022-05-27 05:33:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393539343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3a84a8bfe4f3775609f4c67c600451b8af822e37', '23.29.118.44', '2022-05-27 05:36:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393737313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('18b2883c53900926c7bde570cb50c06ca031c542', '23.29.118.44', '2022-05-27 05:37:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393837353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c63a460c2a13497b5e4fc27ce2fa6e0906415458', '23.29.118.44', '2022-05-27 05:38:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393931313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c9c88e2483d31de86e7141e675b311df2c1365f6', '23.29.118.44', '2022-05-27 05:39:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393935383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ba883b51e044464176a6bd19974c9f28e16824d5', '106.213.189.33', '2022-05-27 05:52:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303736313b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('87fb6d82f82074ce3df4ffdbf59689090f1aea9f', '23.29.118.44', '2022-05-27 05:39:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393937383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('17b16cb3d9af04a7124f7139f9b621d5c41c1f2c', '23.29.118.44', '2022-05-27 05:39:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393938323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('6f55c84cb33ec0841ffc36e52406eb812e538357', '23.29.118.44', '2022-05-27 05:39:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393938363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5bb969dc511f731a2e99a625975b6e90eb59a7e3', '23.29.118.44', '2022-05-27 05:39:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632393938393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f1d1bd60592f8a9c41af40f2caaf530367cf6c51', '23.29.118.44', '2022-05-27 05:42:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303135363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('070066deed37bfbd91b5dda650f6cf2fea2a662c', '23.29.118.44', '2022-05-27 05:42:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303136353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f0f77cd427120af50809550e743458a5d9d296b7', '23.29.118.44', '2022-05-27 05:44:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303238363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('90570853bb14db29471749afa4b88c0594feb983', '23.29.118.44', '2022-05-27 05:46:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303337353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('905bc3a326b048bc5cf3b5d4e37e90a9d111e672', '116.75.139.78', '2022-05-27 06:00:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313232343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('e5a7ee812be41b9583499b73df7c5f72080e86ff', '23.29.118.44', '2022-05-27 05:49:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303537353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3d7aec4afa8c0e236929e911c90742ba998b8c28', '23.29.118.44', '2022-05-27 05:49:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303537393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e8fb359dc6f5b6695f374eea378032c43c84d2cc', '106.213.189.33', '2022-05-27 05:58:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313131363b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('655227fa88f902cb0909333177f06287a7af18a7', '23.29.118.44', '2022-05-27 05:54:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303837303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('464314e5e49782eee970e4dec16be320d6855b54', '23.29.118.44', '2022-05-27 05:54:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303837343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c5717381b5fff08c2ca5d1864a625140552a16b6', '116.75.139.78', '2022-05-27 05:54:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303838393b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('3b9edb2fdab47fcad3a94b14653b8e37263c78c7', '23.29.118.44', '2022-05-27 05:56:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633303938363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b);
INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('b17bd50ca0ec2b7f05f93d0e7289dc88165cabd6', '23.29.118.44', '2022-05-27 05:57:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313034343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a0e1beee32aa9dfa82b71528c182898d9c90ca86', '106.213.189.33', '2022-05-27 06:10:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313833343b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('5c6cfb854d70527bbf28039d08dcc29f5d6c1cec', '23.29.118.44', '2022-05-27 05:58:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313133353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9b123be93078dcdac20d0c6f12cf01a1391de901', '23.29.118.44', '2022-05-27 06:00:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313230373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('78dd3868ef6783fde71040a932901239c9ecf527', '116.75.139.78', '2022-05-27 06:12:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313937383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('90be0f1e8482997f201c31689429e36ad8adbf14', '23.29.118.44', '2022-05-27 06:00:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313233393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('280be3a362b03f04bb2c2b1228768f3fb8879d44', '23.29.118.44', '2022-05-27 06:02:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313334353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('74731497d2836fb8df9db671c6fe69673b4a80b8', '23.29.118.44', '2022-05-27 06:02:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313335373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('92ac675a1fa3b0dc4eb54277f9843260f837f521', '106.213.189.33', '2022-05-27 06:19:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633323334353b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b732f223b757365725f69647c733a313a2231223b),
('39b567c8f0af45e03b7b309e8a7f91f04052fe38', '23.29.118.44', '2022-05-27 06:11:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633313837363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('19f2020cd25c9aa39d18d046e91c19397f41a85a', '116.75.139.78', '2022-05-27 07:04:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353039353b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b732f223b757365725f69647c733a313a2231223b),
('188fbc9af849f0a5aa3f08c87b882412cc5b3b9b', '23.29.118.44', '2022-05-27 06:14:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633323035333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('da808a53d3323be07bfdf8fb343e63788036989a', '23.29.118.44', '2022-05-27 06:14:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633323035373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ac5729ccfe05fe05f8a470b1d3a059346d530d96', '23.29.118.44', '2022-05-27 06:14:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633323035393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4ca1827dc58ada32aae33a00e0fc7197d57fb7fe', '106.213.189.33', '2022-05-27 06:24:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633323635323b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('ceae71846ce2fee5325af680df10061f62105b83', '106.213.189.33', '2022-05-27 07:03:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353030363b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('026b1ef137c2b133d3a97e51573ac272e6a2069e', '103.91.223.17', '2022-05-27 07:03:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353030363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('39f75606932300b99c5a7c19a314d835dc7b1501', '116.75.139.78', '2022-05-27 09:00:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353039353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('6f02c0c14696fb44f1569bc6867875c6c782b8b2', '106.210.241.234', '2022-05-27 07:21:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363037343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('b459eac87f2ae405272d7a253c18cbea1aac8935', '23.29.118.44', '2022-05-27 07:17:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353834333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1b4753812746a96dae5f74adab12e13169ff59aa', '23.29.118.44', '2022-05-27 07:18:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353839363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('cc3ba1c6147d1285d8149e42544c49543992b12c', '23.29.118.44', '2022-05-27 07:18:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633353931373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4f48901ddd4806b6db0ffd2a9c53ecf3af4e0e42', '23.29.118.44', '2022-05-27 07:21:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363037333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('42a95d0e74f4ed9c4077e074473e194e3f297add', '223.178.147.122', '2022-05-27 07:35:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363933373b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('5f461b66efa23f96173c440afcd00f43a1391e4a', '23.29.118.44', '2022-05-27 07:27:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363437323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5987fe4212f62fd1b0b71fed3d42f3e7484a22d9', '23.29.118.44', '2022-05-27 07:35:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363932343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('505a8c8c317bb805933dc5edf410316fa9d879b3', '23.29.118.44', '2022-05-27 07:35:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363933303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('1b3c107596ce312607e754694e42d42ba727daf6', '223.178.147.122', '2022-05-27 08:59:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633363933373b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('e68b10954686bfeb4003f411c91cc63b9ae775f8', '23.29.118.44', '2022-05-27 07:57:25', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633383234353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f119513d6422e64ab125efcd9060fd5d6cd54896', '23.29.118.44', '2022-05-27 08:02:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633383534363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4102027dfcfd0e9826d25c462f4f218d0a93aab6', '23.29.118.44', '2022-05-27 08:03:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633383632343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('345d54e3532b598ab5d0c2a355966f47dcd2e6a1', '23.29.118.44', '2022-05-27 08:03:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333633383632353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9dfc38bec0a743a261407276fd0a2373cc13715e', '106.77.52.117', '2022-05-27 11:10:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333634393834323b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('c836880581d75ea88a6bffa6f76e9a9434ae66a6', '106.77.52.117', '2022-05-27 11:24:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303638323b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('3d3d5bfdaa7a223a4119b83142ccd31398500823', '23.29.118.44', '2022-05-27 11:18:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303332343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('58183d82518b919efc0a2e7ce927d3917b847e56', '23.29.118.44', '2022-05-27 11:23:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303633333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('e5adbef16be4bf4089fb351a6f98e723a9632faa', '23.29.118.44', '2022-05-27 11:24:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303634393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8a442f11c55aeb56f6d8293b2c5c7109ea9b392e', '23.29.118.44', '2022-05-27 11:24:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303637363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8f3de24a0afff885539417ecc5310c140da90f05', '106.210.238.198', '2022-05-27 13:05:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303638323b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('21816d7d85ad498b9e77582bd935fc9856ad24e9', '23.29.118.44', '2022-05-27 11:25:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303731363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8cbb7c844f560d67fa3b564f3d4478ef7f233847', '23.29.118.44', '2022-05-27 11:27:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333635303837343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d83fb2c33446288744b665e31e07f2387aefbe4f', '103.91.223.17', '2022-05-28 08:06:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333732353036303b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f32223b757365725f69647c733a313a2231223b),
('791a5d9f52e1e12c78ec223cff6c2ebab2d8cbd0', '106.210.152.254', '2022-05-30 05:08:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333838373333323b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('84ae8a1c7844907a39909abe392a0ab9d453aac2', '106.210.152.254', '2022-05-30 05:21:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333838383039323b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('7d7f20b0a4e91847f23c4eae9cd5a4b8503d1b2f', '106.77.50.234', '2022-05-30 11:28:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931303038323b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('68e9ecbef16f42d7f544fa10eb084ba34409bb45', '106.77.50.234', '2022-05-30 11:28:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931303038323b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('0ff22646ee3d252019ed5d25abd52088239f2347', '106.77.50.234', '2022-05-30 11:36:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931303536383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f36223b757365725f69647c733a313a2231223b),
('80ab84b8783caa4bc202a1dfda624e4474612816', '106.77.50.234', '2022-05-30 11:36:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931303536383b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('7dd7f0ae036ba0c5dc990db8f5f2c9027504d8cb', '106.77.50.234', '2022-05-30 11:43:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931313031363b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f36223b757365725f69647c733a313a2231223b),
('c1633af8dabd76ec28f6ec0afa823e3f7a2ca141', '106.77.50.234', '2022-05-30 11:44:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931313031363b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3233223b757365725f69647c733a313a2231223b),
('ca7f3c57d224651abc3227397b94bbd4e5111696', '106.77.50.234', '2022-05-30 11:56:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931313739353b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f617474656e64616e6365223b757365725f69647c733a313a2231223b),
('c6935199049c55845fe79a710bc0617cdbe0f7f3', '106.77.50.234', '2022-05-30 11:56:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931313739353b5f63695f70726576696f75735f75726c7c733a36353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('7678065963c3ca53bbbec7bc1b9ee217c604b52a', '106.77.50.234', '2022-05-30 13:16:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931363630373b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f3233223b757365725f69647c733a313a2231223b),
('3416baff078e51c2eaf4b96365853f46f616caff', '106.210.224.149', '2022-05-30 13:21:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931363630373b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f73656e745f6974656d73223b757365725f69647c733a313a2231223b),
('e86e2639aea54ebc18935caf4d1e788ae2b8887c', '172.70.218.204', '2022-05-31 06:26:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333937383430323b5f63695f70726576696f75735f75726c7c733a3133373a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d687474702533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f70726f6a65637473223b),
('02611281a191d88a00e82a9ca047143e394a6946', '172.70.218.186', '2022-05-31 07:28:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333938323130313b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('2fe26373da21fa5f48357c8d56e73b96117e94cf', '162.158.48.86', '2022-05-31 07:34:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333938323439313b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('cc4d168feda944fd887e9a58e9ba47e4844c21bd', '162.158.227.188', '2022-05-31 07:36:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333938323439313b5f63695f70726576696f75735f75726c7c733a35383a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f33223b757365725f69647c733a313a2231223b),
('2b2b7c7aa0b1d87d3aea089089f17cdaa2f6291f', '162.158.227.218', '2022-05-31 10:52:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939343337393b5f63695f70726576696f75735f75726c7c733a34393a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('8e3c537eb5e5dbc98fa0814c76dcd9d782c7d308', '172.70.142.8', '2022-05-31 10:07:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939313636353b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('3c7ee8fa0435b3a3c1811159aee6e3cc91a64310', '172.70.142.8', '2022-05-31 10:17:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939323236383b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('6fdfe267ce84f13a2249e451cab10d8821c32fbd', '162.158.191.220', '2022-05-31 10:23:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939323630303b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('fd83dbefa44158e9029caee327301675e3e408a8', '162.158.191.220', '2022-05-31 10:36:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939333336323b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('225c308286e3371eaf5a1fcd1f132cd6348ad2d4', '162.158.191.220', '2022-05-31 10:41:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939333731383b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('a2e339e59300b60f52c2ad8658b4e8aef79ad681', '162.158.191.220', '2022-05-31 11:00:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939343831323b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('2b0b74c4d4750d20cb4e222162ab768cc4f3fe17', '172.70.218.204', '2022-05-31 10:58:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939343638303b5f63695f70726576696f75735f75726c7c733a35303a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('b70b2931ea63162f71b8d4673e813317f28446e4', '172.70.218.186', '2022-05-31 11:00:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939343638303b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('39de27a6988a4afd304e49cf1560ed186f0a6d94', '162.158.191.220', '2022-05-31 11:12:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939353533393b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('cc415dbc2a8fa43f092a034db6744aa6ab285854', '172.70.191.170', '2022-05-31 11:14:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333939353533393b5f63695f70726576696f75735f75726c7c733a36343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f70726f6a65637473223b757365725f69647c733a313a2231223b),
('5243cd1ad3487f31e3467e7010fd0f001722542d', '172.70.147.56', '2022-06-03 14:27:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343236363435393b5f63695f70726576696f75735f75726c7c733a34393a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('c847574fab873f0ca96185ac26d4dfae07acdde1', '162.158.48.86', '2022-06-03 15:20:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343236393630373b5f63695f70726576696f75735f75726c7c733a34393a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('9ef2d450057c9ba3801bbc701f9a94b2f1dec361', '172.70.218.204', '2022-06-04 07:31:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343332373930393b5f63695f70726576696f75735f75726c7c733a3132333a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d687474702533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('c9e9e5658e5021d18835d77beeb07724ba0c13e9', '172.70.142.8', '2022-06-09 07:12:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343735383732313b5f63695f70726576696f75735f75726c7c733a34393a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('f1886f50ed93d62af44f47f1877e4aa54677e611', '172.70.142.8', '2022-06-09 07:12:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343735383732313b5f63695f70726576696f75735f75726c7c733a34393a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('b7742f970d7e77e95254311de2ced24145efbfb1', '172.70.218.186', '2022-06-10 07:21:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834353639333b5f63695f70726576696f75735f75726c7c733a35373a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6d657373616765732f696e626f78223b757365725f69647c733a313a2231223b),
('d7132876291ebcc7b12b440ec6cf08928cd2e8e2', '172.70.189.19', '2022-06-10 07:24:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834353632343b5f63695f70726576696f75735f75726c7c733a36313a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('db386ddf0f70fa6901747ffada6c09c0e3d561b9', '172.70.218.186', '2022-06-10 07:21:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834353639333b5f63695f70726576696f75735f75726c7c733a35313a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('fb07ab7203b48127c70837ca281f7b7ee5f06c75', '172.70.218.186', '2022-06-10 08:10:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834383635383b5f63695f70726576696f75735f75726c7c733a3132323a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d687474702533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e706870253246696e766f69636573223b),
('f818d6db625a2f0112aa9451fb51bd0b8b43823c', '172.70.189.173', '2022-06-10 07:38:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834363733353b5f63695f70726576696f75735f75726c7c733a3133343a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d687474702533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324670726f6a65637473253246616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('39aaf75f26b09354555e50e90944b54eb70e079d', '162.158.191.190', '2022-06-10 07:52:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834373533313b5f63695f70726576696f75735f75726c7c733a36313a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('359121e9ca4d4d6ed5af03976f7df6ab6573ca61', '172.70.189.19', '2022-06-10 07:59:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834373939313b5f63695f70726576696f75735f75726c7c733a36313a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('9616836bcb97f4929d124c3e880cd1967b8c5658', '172.70.191.186', '2022-06-10 08:07:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834383434393b5f63695f70726576696f75735f75726c7c733a36313a22687474703a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('f40e8507652cc1485a6dbccd6dd6d06b754423b7', '162.158.191.220', '2022-06-10 08:17:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834393033383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('baceea1aaae207c0a413470a9b064acb1636f33e', '172.70.218.186', '2022-06-10 08:11:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834383635383b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('468349a32409b279ecfc59cd273b1671503e3167', '172.70.218.186', '2022-06-10 09:16:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834383638343b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f617474656e64616e6365223b757365725f69647c733a313a2231223b),
('749a7c34dae18c0805efb72216ecb186d93f57ae', '162.158.170.42', '2022-06-10 08:18:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343834393033383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('0b4523f8c5a41a580124cf1d54635b1e443e8f0a', '172.70.218.186', '2022-06-10 11:16:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343835333338303b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('089610eb414a23e2ef8c284e4a5f8dd95a6a20c3', '172.70.230.86', '2022-06-10 09:31:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343835333436343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('64531a1e22d77006d828977ebe8723cb03238bbd', '172.70.191.170', '2022-06-10 09:54:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343835343834333b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('3cf5284a32d208874aca7870368979e2e9046ea1', '172.70.114.164', '2022-06-10 09:51:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343835343637393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('496fc70c2883ecfa02ea03d38b22fb9a9e315d51', '172.70.191.170', '2022-06-10 10:02:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343835343834333b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('c70c409ed608be1686dda3a528f2aa7fea701b8b', '172.70.147.8', '2022-06-10 15:48:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837363132373b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('41322c8acf3db05a1d965df319e70e4ab137d023', '172.70.92.148', '2022-06-10 15:50:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837363231343b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('b8855ce3bf9bcf289363d185ade8a80d91a8f0bd', '162.158.48.64', '2022-06-11 10:38:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343934333933363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('8c83f89096ca9079aec8a0c6146fcf9862c63a01', '162.158.227.218', '2022-06-13 11:07:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353131383437323b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032322d30352d3330543030253341303025334130302532423035253341333026656e643d323032322d30372d31315430302533413030253341303025324230352533413330223b757365725f69647c733a313a2231223b),
('f9f12f0086f167cac28013d50b1d2023d5c9750c', '172.70.218.204', '2022-06-13 11:17:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353131393037373b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f616c6c5f7461736b73223b757365725f69647c733a313a2231223b),
('d95f2d7fd6ea0fce7a69af8c1d012b29e622b4d6', '172.70.218.204', '2022-06-13 11:23:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353131393430383b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f726f6c6573223b757365725f69647c733a313a2231223b),
('65fa94334d72562165922d27b3affaec96f26ed9', '172.70.218.204', '2022-06-13 13:00:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353131393430383b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('5b186f11e03724572d2156c04c6508df410c3870', '172.70.219.33', '2022-06-14 12:44:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353230383632323b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('56d880b84b110f21a89d2821051e36dc541bbb40', '172.70.189.19', '2022-06-20 04:01:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353639373634383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('462e2fab1d614d2830d0498f7e20c7694eb725cf', '172.70.191.170', '2022-07-14 14:06:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373830373537363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('8e5e1e9e71568b5a6947c6fd728b8c93699c999e', '172.70.147.8', '2022-07-14 14:06:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373830373537363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('f58dc1af7654497cc72782bc038ff7776b5b6e1d', '172.70.147.58', '2022-07-17 16:49:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383037363539333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('73cd0aec2026970a5ef2ea24b887b355928aa60e', '172.69.239.158', '2022-07-19 14:33:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383234313233303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('8cd1a8b441d788bf37904a025b4bb9f1d38f841d', '172.70.174.36', '2022-07-26 12:50:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833393835363b),
('b9198e1263bf77b492cf86d702fea940e214733b', '172.70.135.219', '2022-07-26 12:50:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833393835363b),
('c9d799fef1997933ed70a39ee5b9d98370f574ec', '172.70.135.33', '2022-07-26 12:50:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833393835363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('838cbf22feb24f52a8dc99e6c8a5f317d0d3dff9', '172.70.34.12', '2022-07-26 12:50:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833393835373b),
('7673e746fa3356132fa551b39545a5f5374338f7', '172.70.174.232', '2022-07-26 12:50:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833393835373b),
('8856f54ac5c2c605a7026dd3e67af982257d24e8', '172.70.175.183', '2022-07-26 12:50:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833393835373b),
('60de93b00345fd79c53f33d7affa8a863aae21b8', '162.158.171.3', '2022-07-26 13:04:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383834303638313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('78eac08e6dd79a2e9c809d8c38c454fabfb3516f', '172.70.147.130', '2022-07-26 13:31:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383834323236393b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('a1d6af7e6b2e103ab6440cc48fcf04ee0a4665f8', '172.70.142.254', '2022-07-26 13:30:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383834323233373b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f32342f6163636f756e74223b757365725f69647c733a323a223234223b),
('6c8c6dfced9e76ba4654841378fb00488f73e727', '172.70.142.8', '2022-07-26 13:48:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383834323233373b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223234223b),
('fed985eab88715d5dbb89c3e1100c0ae94d50661', '162.158.170.82', '2022-07-26 13:30:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383834323234353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('1c57d5c6bf8fbe431cbe9bf5fa3a31bd55fd8f06', '172.70.147.130', '2022-07-26 13:46:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383834323236393b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('ba69881517feb19b5c11fd2d3dddb87122ef8278', '172.70.147.188', '2022-07-27 07:21:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383930363531373b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223234223b),
('84815923cc19b22a18dcbef63d5f464a1b23d7dc', '172.70.189.117', '2022-07-27 08:47:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383931313637353b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f223b757365725f69647c733a323a223234223b),
('44acf0fcf134dfd4a76538eeb7d8113fba60127b', '172.70.147.188', '2022-07-27 07:44:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383930373839333b5f63695f70726576696f75735f75726c7c733a36333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d626572732f766965772f38223b757365725f69647c733a313a2231223b),
('60e4cf1828dc227570c6c439b5a903e1980b84c3', '172.70.230.142', '2022-07-27 07:42:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383930373734363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('057a08d37e237cdf566ce13cc0865fbe00b827a0', '172.70.142.60', '2022-07-27 08:00:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383930373839333b5f63695f70726576696f75735f75726c7c733a35363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7465616d5f6d656d62657273223b757365725f69647c733a313a2231223b),
('681490f205ffab218bcedecd9d09dfeb0a6f9299', '172.70.147.192', '2022-07-27 08:53:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383931323033393b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a323a223234223b),
('e2a3d2ae60adb8607afe0697dfb6bc30c4d0f3e8', '172.70.110.224', '2022-07-27 08:51:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383931313839383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('fac7d0c5932d2d0b41c5554ca61b49dd32872efa', '172.70.147.192', '2022-07-27 09:06:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383931323033393b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223234223b),
('c93d2f9e6c052256663a90b37d935ac44de66e09', '162.158.170.184', '2022-07-27 13:35:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383932323432393b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223234223b),
('0234accc692fd816e71592cee58bff23c4482589', '162.158.235.145', '2022-07-28 02:44:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383937363236313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('399e4d96e41d32b7140488cdc69dd9d8fcdd98b6', '172.70.219.33', '2022-07-28 04:43:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383938333339323b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f746573223b757365725f69647c733a323a223234223b),
('3366abc458ef14263338d260aa3e1c70805a0281', '172.70.114.200', '2022-07-28 04:30:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383938323632333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5371b54a60122a0fc849685477bcade14c9b395c', '172.70.114.154', '2022-07-28 04:30:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383938323632373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('6454a150eaedc86d390f3c9f69c5cf44c8216f4a', '172.70.85.196', '2022-07-28 05:13:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383938333339323b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f223b757365725f69647c733a323a223234223b),
('b9df22e5598ca00a744121022f53adc02433a86b', '162.158.162.104', '2022-07-28 16:40:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032363433353b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f7461736b5f766965772f32223b757365725f69647c733a313a2231223b),
('1eee6a0a0ace39952e7039ec229da4a3ccc97939', '172.70.230.52', '2022-07-28 15:17:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032313432383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('660b904ef097c5c567aed94e7bebd790339e6e87', '172.70.114.200', '2022-07-28 15:17:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032313433373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('708caeaf5cc662a9c4c3aa1245e67589ccbc2004', '172.70.114.154', '2022-07-28 15:17:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032313434313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('705dbaea2dedd02e22378acb8f2599b0e5176be4', '172.70.114.200', '2022-07-28 15:17:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032313437343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d0c9206e3e035909514c2b01b038dad0d28ddf18', '172.70.114.154', '2022-07-28 15:17:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032313437373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c1f6df3ece71b7ca1ec989354d9b7b273d90aa51', '162.158.162.18', '2022-07-28 16:40:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032363433353b5f63695f70726576696f75735f75726c7c733a36343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f7461736b5f766965772f32223b757365725f69647c733a313a2231223b),
('9895b8dda585498d69379f46f834f5b0a8f76c64', '172.70.218.204', '2022-07-28 17:19:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032383735383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b);
INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('44ca2d46c80a77f38dc022d76e568ff11bf856ca', '172.70.142.254', '2022-07-29 08:22:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393037363035353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223234223b),
('9d513be874f6e3bdad0cf30fce035d18525794d9', '172.70.147.188', '2022-07-29 11:25:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393039333931303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('465696cf7d9818ddf6bfe8d4ed84ff922c9a9c77', '172.70.219.33', '2022-07-29 18:59:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393132313137303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('f9be928ec599d8cf1630144afafec837541030e9', '172.70.142.216', '2022-07-30 10:00:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393137353234333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('8ced34618c66f9f4fd6d2cdca6f201c1c1a6ee9f', '162.158.235.51', '2022-08-06 12:24:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393738383633353b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('fce94af9569648760933bdba061b1e953f1abe83', '172.70.147.130', '2022-08-09 11:28:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303034343533373b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('d2e57cb0595bb5e7560145d9f81255ca1321d073', '172.70.142.60', '2022-08-11 05:57:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303139373433353b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('4ea0aa597b933474ceb876f8de6a446c68043036', '172.70.147.130', '2022-08-11 06:09:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303139383137303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('54edf6c8121dbb459fe5f9f873a450f00ef3c542', '172.70.188.122', '2022-08-11 07:28:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303139383137303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a323a223234223b),
('72d225a65c4116bec76cdb9eea071b7a334f0196', '172.70.188.8', '2022-08-11 09:51:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303231313437383b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('8cac1225892ad3aceb031ca43588ad0474ca720a', '162.158.171.3', '2022-08-11 13:31:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303232343730303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('8c86157c35d180109e1b7bab25953ff4e13b04e5', '172.70.218.204', '2022-08-13 07:01:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303337343038363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('ffd1ab4df0cc6f9dfb2462a130feb922c1fbb9a7', '172.70.188.8', '2022-08-17 05:24:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303731333835313b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('3f5454eca34769e72d7f89e6fced16743f06cfa6', '172.70.191.182', '2022-08-23 06:38:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313233363638373b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f35223b757365725f69647c733a313a2231223b),
('0c9480dec0ea9deb19ccf9e2ec59f13605009d23', '172.70.191.134', '2022-08-23 07:08:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313233383438323b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f36223b757365725f69647c733a313a2231223b),
('d21855137e60953de4aae5bb7c622d1f7eb6ed6c', '172.70.191.134', '2022-08-23 07:44:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313234303634343b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f36223b757365725f69647c733a313a2231223b),
('8c2b302f36dd36554633df0ae405bddfbdf3e9d4', '172.70.188.122', '2022-08-23 08:52:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313234343733383b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f36223b757365725f69647c733a313a2231223b),
('67ea59f298594bbbfe7fe0916cdb64b37f69cde0', '172.70.188.8', '2022-08-23 09:00:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313234343733383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f70726f6a656374732f766965772f32223b757365725f69647c733a313a2231223b),
('30ebcb82af74eee5047b78016239736c0158b45a', '172.70.191.176', '2022-08-26 09:25:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313439383732373b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f36223b757365725f69647c733a313a2231223b),
('080537e1fd2502bcd15faf7d0c34eb8f8a423056', '162.158.179.39', '2022-09-07 10:50:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323534303631383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('392393f6e5cec2d76c10f701c03d4aa35b60d827', '172.70.191.134', '2022-09-07 13:29:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323535353732313b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('ea11368882b64b33f2dd1ac50d5488d0732b59d3', '172.70.191.188', '2022-09-15 06:35:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232333732363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('af655496a1ed734a412f2ad49ed65275bdcfeccd', '172.70.191.188', '2022-09-15 06:43:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232343233313b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('104c482a7e64534b635564126ba75f1619d9e8ef', '172.70.191.188', '2022-09-15 07:10:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232353830343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f37223b757365725f69647c733a313a2231223b),
('8ab8352409209c59db2b52bc3cf3e289579c5920', '172.70.191.188', '2022-09-15 07:15:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232353830343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f37223b757365725f69647c733a313a2231223b),
('dfd03910ab0ea7bbb121d0fbf0d939b744768f78', '172.70.111.21', '2022-09-15 07:10:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232353835333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d1afacaef7961f84c70dbae5bb0b33b46b250d66', '172.70.115.3', '2022-09-15 07:10:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232353835343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('31bd8e0f74cc22196dd05488aa450e123fe651ba', '172.70.110.12', '2022-09-15 07:14:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232363034373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c60b34dca6318b0b0062455e272c2a277f771520', '172.70.111.51', '2022-09-15 07:14:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333232363034373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a939a4ed88009bcffa9ce55b07248a0349242842', '172.70.237.150', '2022-09-20 09:05:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636343731373b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('7e95f5dd814c519d423244caa41c31dace7aa9d5', '172.70.237.150', '2022-09-20 09:10:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636353034333b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('e535bdfe5d90c8e395fd278895659c5f3a8fc1f8', '172.70.237.150', '2022-09-20 09:15:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636353334373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('69d777a156c00cfd58c337453742244110f396ba', '172.70.237.150', '2022-09-20 09:23:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636353832333b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('60df26a21edf0f7ee9cc7881cebe8280e948341c', '172.70.237.150', '2022-09-20 10:17:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636393033393b5f63695f70726576696f75735f75726c7c733a35383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f656d61696c223b757365725f69647c733a313a2231223b),
('e3d08de2b8aba5a01fb3ad909c2422f2a39ec46c', '172.70.237.150', '2022-09-20 10:23:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636393338383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f38223b757365725f69647c733a313a2231223b),
('9366837bbdf6928b35b32bd3fcc882f917213633', '172.70.237.150', '2022-09-20 10:58:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333636393338383b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('9c7da63b872f4525acce05ce529048fdca6ac479', '172.70.218.186', '2022-09-21 05:58:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333733393735383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('e0fd18ff2c93da9e44bbf3fd1db601d412a98c44', '172.70.218.186', '2022-09-21 06:04:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333734303234343b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('6187235b9dda4ae922d1ca661f6db21ef6851b67', '172.70.237.150', '2022-09-21 06:14:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333734303836313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('eab0a2b986375c200f3a09e1a8863fdbed0a6180', '162.158.162.151', '2022-10-15 06:01:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353831333639393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f6963655f7061796d656e7473223b757365725f69647c733a313a2231223b),
('bce6a89cc34d0db7a34f5db6ddf2d204bf800b70', '172.70.237.169', '2022-10-15 07:35:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353831333435343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('f534002210635dcf96cf044c796e4aaf310279ef', '172.70.189.140', '2022-10-15 06:06:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353831333639393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f6963655f7061796d656e7473223b757365725f69647c733a313a2231223b),
('4fef27f4c2da33fb4666417b22c7c7256cdfa60a', '172.70.191.177', '2022-10-16 08:55:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931303534373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('e2ca9d9fabc4fd494456e3f592ce8dbea201b177', '172.70.191.189', '2022-10-16 08:31:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353930393036323b),
('1056467743ad119255c16d44d2f45b226c5e7861', '172.70.191.189', '2022-10-16 08:31:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353930393036333b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('98d2310a90ce5529d7df6b9ffa3050fa3caafff1', '172.70.218.29', '2022-10-16 08:38:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353930393439303b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('c0f92a25058607854e58b7dc4fed6839becad44d', '172.70.218.187', '2022-10-16 08:52:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931303333353b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('6850088b1be6ff1409aceb2e1f36f3ffbb096e5c', '172.70.218.187', '2022-10-16 09:03:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313030373b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('e36dd359cd17259625f31a8ba6cbc46344b2f133', '172.70.237.177', '2022-10-16 09:14:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313639343b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('9d3c52a28301ca40fb578209433dad9c819a8b73', '172.70.218.187', '2022-10-16 09:11:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313531343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('337ca0948543ffbb2fc456b802a00a8b69f792e2', '172.70.218.187', '2022-10-16 09:17:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313832353b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f39223b757365725f69647c733a313a2231223b),
('eede2c0fcf54adc3c2cbfeb63e56ecd97e443b0a', '162.158.62.119', '2022-10-16 09:12:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313537363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3a62451d8c95b73c39c3afefff7f166751679895', '172.70.115.38', '2022-10-16 09:12:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313537363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('51acba8250171cb25ddd4356f31fe774b6046a80', '172.70.114.177', '2022-10-16 09:14:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313638353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c3c26ee7a2a4e9f92700bcf3055e84a79c09b781', '172.70.110.171', '2022-10-16 09:14:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313638363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0082b032d45ccc14e413c8cb7073266af914b370', '172.70.237.151', '2022-10-16 09:24:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313639343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f39223b757365725f69647c733a313a2231223b),
('10ec874bd43e94f5e1c7d04360d1576aebd390ae', '172.70.230.71', '2022-10-16 09:16:48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313830383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('81e899e8395180608126ed1f95b0ea24e11a95ca', '172.70.115.38', '2022-10-16 09:16:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931313830393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8d3a2bb50e990d0d0c0b013b4f706bdcd4d0879a', '172.70.218.187', '2022-10-16 09:25:00', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931323330303b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3130223b757365725f69647c733a313a2231223b),
('20944bcbf292f1f9ea129f2b990c161a1e1cefc2', '162.158.62.191', '2022-10-16 09:24:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931323238323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('3f9aa24625f2410f5f59b7612bbc7fb3e29ce3ec', '172.70.110.127', '2022-10-16 09:24:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931323238323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0e4aabc10fc0e88fda864e4aca5affed48f8d92c', '172.70.218.187', '2022-10-16 09:49:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931333735373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('bf64839275128712f219a4d19952cf03eaaef480', '172.70.218.187', '2022-10-16 09:37:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931333034333b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6c65616473223b757365725f69647c733a313a2231223b),
('8aac69c52304b307663ccaab81362652d6582a2f', '172.70.218.187', '2022-10-16 09:58:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931343332303b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3131223b757365725f69647c733a313a2231223b),
('b835c062f38305a843aecb82267741fd5ca6e278', '162.158.63.16', '2022-10-16 09:51:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931333931313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('abb320ae969cd17d9b12994821503764d86fa1c6', '172.70.114.111', '2022-10-16 09:51:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931333931323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('af5ff49f54e8d050618befb791c4e9f92a7f69bd', '172.70.218.187', '2022-10-16 10:05:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931343734343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('91f1e8590f14540b65d3a2d3a52e3fee9848f9b1', '172.70.218.187', '2022-10-16 10:24:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931353839303b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('807eb665b11a286841378373b8f38401874d46d7', '172.70.218.187', '2022-10-16 10:37:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931363635373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('cd5fe08b21daaf56adf28e77959f345fcaebb242', '172.70.114.61', '2022-10-16 10:30:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931363231373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('103fd3e14fb18a08c3fee1faf6001c63d8062725', '172.70.114.177', '2022-10-16 10:30:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931363231383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('ffa6bf0d8b94b7890b70e1e6177bb825647e3b94', '172.70.218.187', '2022-10-16 10:30:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931363235333b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3132223b757365725f69647c733a313a2231223b),
('09a65f58384c2a9c9c99e08d3c58ab89a4f4fbd9', '172.71.202.93', '2022-10-16 10:44:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373038323b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('ba919bef46665da8910516aa8f304718d59c540d', '172.71.114.129', '2022-10-16 10:50:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373433363b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3133223b757365725f69647c733a313a2231223b),
('bde00a1b0445105ea4f65db0bd2db264d46f751d', '162.158.62.43', '2022-10-16 10:49:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373335393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a75db1ef0766fb69e4e9a9af7fa0cab6ed688909', '162.158.62.183', '2022-10-16 10:49:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373335393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('7293af4b049c7ee2c2a1708e125fbad9b845dd3d', '162.158.235.52', '2022-10-16 10:55:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373733383b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3134223b757365725f69647c733a313a2231223b),
('f756954288a31bbdb3c7905a9b3913120b5da3ae', '172.70.110.145', '2022-10-16 10:55:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373731323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a640abb1c4e401a034efb8c55c7579aa41951ed4', '162.158.62.65', '2022-10-16 10:55:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931373731333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('dda27a952f84dd3386b2804b6eb167d837172864', '162.158.235.52', '2022-10-16 11:01:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383130393b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('e64c33ac99a6c56956ad3db2e3981ea6ef7f2fac', '162.158.235.52', '2022-10-16 11:07:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383433343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('c9d589595da67f1a914a62d12234a9bfa80081a7', '172.70.110.171', '2022-10-16 11:02:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383135373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('737d83987d0c5fe9c377ef09d00e47c3da2bb058', '172.70.230.71', '2022-10-16 11:02:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383135373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8d61c7af23d2e58c43dfb294afa7d7045d576845', '162.158.235.52', '2022-10-16 11:13:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383831353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3137223b757365725f69647c733a313a2231223b),
('d4c99a26c14f9eb35cfeb2c732355105590b5529', '172.70.230.53', '2022-10-16 11:10:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383633323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('57eb342c385b690373d2d3b362edccabb2fb3420', '172.70.110.171', '2022-10-16 11:10:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383633333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0bba4d9cf7fc21467b6e759a202e7d379a090cc2', '172.70.110.145', '2022-10-16 11:13:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383739393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('de62f306d81b9d7576032e6d59cbe9973187d97f', '172.70.110.127', '2022-10-16 11:13:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931383739393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('31dbbe945af1bbfec556a4e2680fad35c2027d21', '162.158.235.52', '2022-10-16 11:20:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393231353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3138223b757365725f69647c733a313a2231223b),
('1a71c98086bc505b3c862db5706e954d1bb076c6', '172.70.230.143', '2022-10-16 11:17:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393033333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('17345c547ae8eb338b239778c0ce1a8fc7698d65', '172.70.114.61', '2022-10-16 11:17:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393033333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('98be9616f7fb4dbd1f1e536d55050e060a2f88d8', '162.158.235.52', '2022-10-16 11:27:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393632373b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3139223b757365725f69647c733a313a2231223b),
('6d622059a75e9d2026f63f89a7779f8540c0e5ef', '162.158.62.225', '2022-10-16 11:25:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393530363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('9a2dad020856e7ac458ea8b162e71485d89296d9', '172.70.114.111', '2022-10-16 11:25:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393530373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('59c23ba794fb2ba756a178b18e5d71cc7bd1588b', '162.158.235.52', '2022-10-16 11:33:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932303033383b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3230223b757365725f69647c733a313a2231223b),
('5f591d7e5400d798de32b0f2c0985fdaa89f5a98', '172.70.115.38', '2022-10-16 11:32:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393937343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('118c0483a58d8dc085a34804e8740d12723326e4', '162.158.62.85', '2022-10-16 11:32:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353931393937343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('94e250b540c590d10dae9776b68ad21dfda7a267', '162.158.235.52', '2022-10-16 11:40:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932303433323b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3230223b757365725f69647c733a313a2231223b),
('6c96658d7f75e485d040e6ef3971156425ac6a85', '162.158.235.52', '2022-10-16 12:05:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932313930393b5f63695f70726576696f75735f75726c7c733a35313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e7473223b757365725f69647c733a313a2231223b),
('b05a54da64bec35bea5aa590488b51610c6dc756', '162.158.235.52', '2022-10-16 12:11:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932323237353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3231223b757365725f69647c733a313a2231223b),
('777f0936b2742b71368fed95f16438dfd5d25747', '162.158.235.52', '2022-10-16 12:27:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333233393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3232223b757365725f69647c733a313a2231223b),
('dd846c1792d4160231c83b6184256f61fe494ad3', '172.70.110.171', '2022-10-16 12:16:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932323630393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d990889cbc9af055d12884eca1eaf637983b4ca9', '172.70.114.61', '2022-10-16 12:16:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932323630393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('068b1435a7ef2624424ea149215deac4928b15c3', '172.70.110.171', '2022-10-16 12:23:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333030333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2ca0277a9ce563e34791e018ae1309ca09605488', '172.70.115.38', '2022-10-16 12:23:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333030333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('c771783fec6646c01f95930c07d9b3cdc7cf27a4', '172.70.110.145', '2022-10-16 12:25:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333133343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d61892dceda9d404ee2b0ed309cd87969433c815', '172.70.110.171', '2022-10-16 12:25:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333133343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d214517130cc831e7aa9491f8979248c88a4955b', '162.158.235.52', '2022-10-16 12:33:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333632323b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3233223b757365725f69647c733a313a2231223b),
('ba1520247b800cb016df190371666f48c2d04007', '162.158.227.239', '2022-10-16 12:39:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333934383b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3233223b757365725f69647c733a313a2231223b),
('c550d086211df2e95d75c29f371aea4b69978eaa', '172.70.114.177', '2022-10-16 12:35:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333731323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('79b08d256b65a2c34558237932475abe7edbaf1a', '172.70.230.71', '2022-10-16 12:35:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932333731333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f449e1aa8961adbae0a38ef355ba3cd4ca88ab1c', '162.158.227.239', '2022-10-16 12:51:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343636333b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3234223b757365725f69647c733a313a2231223b),
('088f1742ee655d76c797f92309982557e1d7765f', '172.70.114.61', '2022-10-16 12:43:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343138363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('a522451629c91fce3e0740999f571db88757492d', '172.70.110.127', '2022-10-16 12:43:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343138373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('01b77ba5edc9108bfbbf273b349b1e955e4edc29', '162.158.227.239', '2022-10-16 12:45:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343334323b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3234223b757365725f69647c733a313a2231223b),
('7cb89f1a180bcb2e16922f32598b986cbdf6cff0', '172.70.110.171', '2022-10-16 12:46:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343431323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f566cd5c9633458c32863480078a33a38efaeb3c', '172.70.110.171', '2022-10-16 12:46:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343431323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('cb34848e623204938fe23d79de86ab82bd480915', '162.158.227.239', '2022-10-16 13:04:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353438373b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3236223b757365725f69647c733a313a2231223b),
('d10924c77982eec9772fe06de7b16ee63ffad3f5', '172.70.230.171', '2022-10-16 12:54:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343838373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d7f18c12957d4b464025dd00cc271684075cacb3', '172.70.110.145', '2022-10-16 12:54:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932343838373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d529719c8ad27c6165c36107c495cf25ee581c4f', '162.158.227.239', '2022-10-16 12:57:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353035393b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3235223b757365725f69647c733a313a2231223b),
('df2fb81782c16d8df8fe645233494c9a017ecbe1', '172.70.110.127', '2022-10-16 13:00:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353234393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2a5ae5319304b6aeec5c438491bd7bc609697e03', '172.70.110.127', '2022-10-16 13:00:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353235303b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('f25fa30966c24efd1fda2343943e2b4372b6ea1b', '162.158.227.239', '2022-10-16 13:11:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353839323b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3237223b757365725f69647c733a313a2231223b),
('7105081c68bfbd5ffb568ba16d33901d5ee5fc29', '172.70.115.38', '2022-10-16 13:08:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353733313b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('351a5c7b416c75f1729f593d167ed387ec008235', '172.70.110.125', '2022-10-16 13:08:52', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932353733323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('fae52768427005a105caab440f6330b8f3a63940', '162.158.227.239', '2022-10-16 13:16:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363230313b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3238223b757365725f69647c733a313a2231223b),
('d30492afc3465db5726407e83461abd9811a062a', '172.70.114.61', '2022-10-16 13:14:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363035393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('85ee75e68202d58dc580211d1dbf632c21325f09', '172.70.110.127', '2022-10-16 13:14:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363035393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('73c25444b6edad3bcdafa1e9151ecc762e2393be', '162.158.227.239', '2022-10-16 13:23:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363631353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3239223b757365725f69647c733a313a2231223b),
('6b16af19d929ebb0a8ffdb88572470f79740b2ba', '172.70.110.125', '2022-10-16 13:18:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('26452e0b9716ee0c2d4a62666e76b342bd844407', '172.70.110.127', '2022-10-16 13:18:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363330393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('16d0f0ee219d762e1d3f86e8814e095134e5f21d', '162.158.227.239', '2022-10-16 13:30:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373031393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3330223b757365725f69647c733a313a2231223b),
('d435c8c83fef1edd273ebddc03b1fa2b2aae28b4', '172.70.110.125', '2022-10-16 13:28:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363931363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d223fa9c61cf86a9deb0b8eda08a19aeb75a5b69', '172.70.110.171', '2022-10-16 13:28:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932363931373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b);
INSERT INTO `rise_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ea2e3363299d7e4c1444cdde96ff0d627265c586', '162.158.227.239', '2022-10-16 13:35:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373333383b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('1b53f3262936a936ff19af0bd29e96178cf3fb69', '172.70.114.61', '2022-10-16 13:33:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373138343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5953326b9ed1639c837a8108f2ca1b7a306cf51c', '172.70.110.171', '2022-10-16 13:33:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373138353b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('947567d65830e2d90f3464aea813b741a7b6f931', '162.158.227.239', '2022-10-16 13:41:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373636313b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3332223b757365725f69647c733a313a2231223b),
('bbf9f144a1e9c6188871040c8f7360103809b6fe', '172.70.114.177', '2022-10-16 13:36:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373338363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5081bbc5e651d09c7ea57c3b1e8b61923ff3aefa', '172.70.110.127', '2022-10-16 13:36:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373338363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('5522c7d10a7893e379acd068a1aafd4d847afefe', '172.70.110.145', '2022-10-16 13:40:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373633323b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('156e2f0bcf9535491473e86df7bf493990a9d8e1', '172.70.230.143', '2022-10-16 13:40:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373633333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('42dc630051d6703ad6947a9ebef78510816f7f92', '162.158.227.239', '2022-10-16 13:47:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383032353b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('a30100bc87d37994894537e10f80f2d145bb86f6', '162.158.62.191', '2022-10-16 13:44:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373834393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('eaf2280b85683f096d9b7fb9a6db92cbcbe667a2', '172.70.114.177', '2022-10-16 13:44:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932373834393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('71b50d5e82ac4f6330b1a8798dd3520bf7ba36cc', '162.158.227.239', '2022-10-16 13:53:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383430373b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3334223b757365725f69647c733a313a2231223b),
('cc8a38f79b804c191af0f4a3c67457f1fcc5613f', '172.70.115.38', '2022-10-16 13:49:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383138393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('8b1fa13518407f8498b6172099ca6ac6ec4a2e5b', '172.70.230.143', '2022-10-16 13:49:49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383138393b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('2484b303c99c1bb5d32da0b6a828a281216fcab8', '162.158.227.239', '2022-10-16 13:58:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383731373b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3335223b757365725f69647c733a313a2231223b),
('0246a6df210724bd6074192a863b29979c9bd1f7', '162.158.62.121', '2022-10-16 13:56:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383630363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('0f04c2957590df488d906949f347f1bb00e5b5ca', '172.70.110.125', '2022-10-16 13:56:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383630363b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('75c12c81aab4536fb41575ad0a3cbd89cb105208', '162.158.227.239', '2022-10-16 14:21:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353932383731373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('f0e324f6085b841d1a9ba6c10db155f74bed6e55', '172.71.198.139', '2022-10-19 11:12:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363137373933393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3336223b757365725f69647c733a313a2231223b),
('c4fc99505ba30c7774f5cb3aafbd63c847588b74', '172.70.237.177', '2022-10-19 11:18:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363137383239343b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3337223b757365725f69647c733a313a2231223b),
('c9d2878d6e53497f881a8cfbc73875f52eaea8a6', '172.70.237.177', '2022-10-19 11:25:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363137383239343b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3336223b757365725f69647c733a313a2231223b),
('cdf57d65362886e67893cf9c4bd35ad20be3bb50', '172.70.191.134', '2022-12-04 18:39:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303137393135333b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('1ec5c2fec1e2742dc8afba9c2f7d40b95253a283', '172.70.191.177', '2022-12-05 10:09:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303233343935363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('69c5cdcab976650654d7da740f5453aa35f8a536', '172.70.191.135', '2022-12-05 11:34:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303233343935363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('6688ee2b8e9d508dc1940721bc41bdb1c49a0a97', '162.158.170.215', '2023-01-17 12:03:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333935363939383b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('0151f5a0724eb4311666c4a4cf6f7179fc7702cb', '172.70.191.177', '2023-01-31 12:19:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136373539373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('babf839aedb40b932b43db61b79d20b242cd9d2d', '172.70.191.177', '2023-01-31 12:31:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136383330353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f67656e6572616c223b757365725f69647c733a313a2231223b),
('6cf3550352ac27a835f25d99c5c852293c3c6c13', '172.70.110.171', '2023-01-31 12:22:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136373732383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('728f098816c902929c163db26994a99941b9afce', '172.70.114.178', '2023-01-31 12:22:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136373732383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('067271e697c974238ecd8bbdaa3802b1b146e14c', '172.70.191.176', '2023-01-31 12:37:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136383632373b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f636c69656e74732f766965772f3233223b757365725f69647c733a313a2231223b),
('41e0e7b013edf1ce61d6a357ed7d2d85b51e2079', '172.70.191.176', '2023-01-31 12:52:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136393535353b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3339223b757365725f69647c733a313a2231223b),
('50423030a0e4544636c3d565fbb60890bcc75541', '172.70.230.18', '2023-01-31 12:38:27', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136383730373b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('d4d25ac04818fa6c0741e32c5abd154195fc2f1f', '172.70.230.70', '2023-01-31 12:38:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136383730383b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('053623e8f3a3298bd46e1cdff637a74ae2e30cbe', '172.70.191.176', '2023-01-31 12:57:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136393837373b5f63695f70726576696f75735f75726c7c733a36313a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f73657474696e67732f696e766f69636573223b757365725f69647c733a313a2231223b),
('938964c80499541bf541b10868bceb328a0e8295', '172.70.85.116', '2023-01-31 12:57:33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136393834303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('eac8801de6c6607f56b5d442617af7210aef0cda', '172.70.191.176', '2023-01-31 13:17:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353136393837373b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3338223b757365725f69647c733a313a2231223b),
('9ed8be87965142e65e4046afce942a0b41f67191', '162.158.22.244', '2023-02-06 08:18:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353637313533333b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('f70ed1853d540340739ede9595c56aa6721572db', '162.158.22.246', '2023-02-06 08:27:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353637313533333b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3430223b757365725f69647c733a313a2231223b),
('884eab7bd90eabb1ce7f1553a12083e10afbf219', '172.70.110.125', '2023-02-06 08:20:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353637313631333b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4b48c884e126c22125b0e14a1bdbb0fab573ae2c', '162.158.63.135', '2023-02-06 08:20:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353637313631343b5f63695f70726576696f75735f75726c7c733a38363a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e223b),
('4cb9c7011dae6b6a9683250f326ba1502a8d5c32', '172.71.186.175', '2023-02-08 12:48:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353835393937313b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3431223b757365725f69647c733a313a2231223b),
('8100d0296e1a2e61afa146a67bd6800be1770fc3', '172.70.191.188', '2023-02-15 06:11:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363434313439373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('ba3786108f938ca9a8e91b3d94742e699a9d4a81', '172.70.191.189', '2023-02-15 06:11:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363434313439373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('a9fc432c31747d1744b898878fdca4a38a3af2da', '172.71.202.184', '2023-02-17 07:53:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363632303338363b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('6b28e1ac90550b704429f1c2dc7fb2467d40c629', '172.70.218.114', '2023-02-17 08:51:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363632303338363b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3430223b757365725f69647c733a313a2231223b),
('97b021fdea2a7b713bee267726a6a0aaf57a0a12', '162.158.227.245', '2023-03-15 07:08:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383836333838363b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('e859ce1c9f08811e9b6ac9f5c929bff51ec4e53f', '172.70.218.24', '2023-03-21 12:09:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303539383b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('2831bf62b5c109e54f5aa108debddfca0486a44c', '162.158.235.146', '2023-03-21 12:15:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303933393b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3433223b757365725f69647c733a313a2231223b),
('2a8d21b87140d417eef0cf67cba62c9e6409c934', '162.158.235.145', '2023-03-21 14:04:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303933393b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3433223b757365725f69647c733a313a2231223b),
('0311ed46b8c566736350c752dccce47fe34957af', '172.70.219.28', '2023-03-25 04:55:57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393732303135373b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('1ed7b1153e08b00d57e8ad08d4d53d136389e9ed', '172.70.219.27', '2023-03-25 05:01:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393732303530363b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3434223b757365725f69647c733a313a2231223b),
('f58caac68fba7d1c918c79ea48ebafc5388b869b', '172.70.219.28', '2023-03-25 06:50:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393732303530363b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3434223b757365725f69647c733a313a2231223b),
('bf02e561f9def002b91f57ea76b6d7bfe28b3c73', '172.71.198.39', '2023-03-31 09:08:07', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303234363438393b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('34da4bba005b6a8667a8260bcc69d9d4affca1a4', '162.158.227.236', '2023-04-21 13:48:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323038343839353b5f63695f70726576696f75735f75726c7c733a35373a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f616e6e6f756e63656d656e7473223b757365725f69647c733a313a2231223b),
('fba24cf648da29c2fc90d85f77c6101c196a6cbd', '162.158.94.196', '2023-04-21 13:43:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323038343537333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('2bbb1e1416e35321df1922fd29ae441d2681db1a', '172.70.218.212', '2023-04-21 14:08:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323038343839353b5f63695f70726576696f75735f75726c7c733a35333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f64617368626f617264223b757365725f69647c733a313a2231223b),
('bab3763d28e87802a1751f33bb927872adc16a28', '162.158.110.48', '2023-04-22 05:03:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323133393831373b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('4d44b62263cb2fe066250b3fb86dfefb40881289', '162.158.87.125', '2023-04-22 06:00:12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323134333231323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b6572726f727c733a34303a2254686520616374696f6e20796f7520726571756573746564206973206e6f7420616c6c6f7765642e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('6945bdaf14532c36e02a6d5d67c2cef66a32b5a7', '162.158.94.109', '2023-04-22 06:00:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323134333231323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('1b229530d36480b17edd146679b1998f9e35547c', '162.158.48.79', '2023-04-24 14:25:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323334363037333b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f69636573223b757365725f69647c733a313a2231223b),
('69a1205a8de4140499928defa341e0f10fde6be5', '172.70.218.213', '2023-04-25 06:33:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339393930373b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3435223b757365725f69647c733a313a2231223b),
('39f2246dcebee73edd039bb3f97e0f54a755edfb', '162.158.22.35', '2023-06-09 09:42:44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313638363330333736343b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('02a2dcdda4dcf9e4b48ab93600f0bf4e133ab4fd', '162.158.106.116', '2023-08-07 15:57:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313432333833383b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('5498c29ee9b7d1775f67b2df3311370d1e5724ca', '172.71.246.7', '2023-08-07 15:58:03', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313432333836313b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('6fdaf26c5b8771cb0e931c54bb032853148c90b5', '172.70.246.19', '2023-08-07 16:04:45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313432343238343b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('10bb82c606de9c65c54a16faea25a98182c8f4c3', '162.158.22.225', '2023-08-07 19:00:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313433343438333b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3436223b757365725f69647c733a313a2231223b),
('665d9d4fd69218e261dcd62b5f0ab6de40a5c962', '162.158.111.60', '2023-08-07 18:56:05', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313433343532313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('1f17d017f86d20b1b94b721e348b2d81faf0ba84', '172.71.186.69', '2023-08-08 04:36:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313436393338323b),
('52c05921ab0d720396bdfbf392fb65ef0ef5a799', '172.71.186.69', '2023-08-08 04:36:23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313436393338323b5f63695f70726576696f75735f75726c7c733a3132343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e706870253246696e766f69636573223b),
('1b994317f4781be1399da53509d27931a924c121', '162.158.94.66', '2023-08-21 18:18:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639323634313838393b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('49b9819ae6ce961609d9c605b47de0ec6a5313be', '172.69.94.222', '2023-10-01 15:30:37', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363137343233373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('061c080b54e5eada1530cbcfdf74623ba513428f', '141.101.105.152', '2023-10-01 15:31:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363137343234323b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('4cac6a2d9d10b32cb8c7c69f8704f11f266ccb3a', '172.69.87.136', '2023-10-02 07:06:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233303339353b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('e0433aaec91a3ddb371323f0d808ce361bcb0476', '141.101.76.115', '2023-10-02 07:04:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233303235373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('62e4dc56fb3a7d157f42e07508c10ac3ece9f747', '172.71.186.172', '2023-10-02 06:51:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363232393436393b5f63695f70726576696f75735f75726c7c733a37333a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e2f726571756573745f72657365745f70617373776f7264223b),
('5ff45be146fccaa9726c9237a2161b5b358d8164', '172.71.186.173', '2023-10-02 06:56:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363232393737333b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('fbe1b41e90de67932e10db3f3bfe2102f93aa131', '162.158.22.61', '2023-10-02 07:08:46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233303532363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b7369676e696e5f76616c69646174696f6e5f6572726f72737c613a313a7b693a303b733a32323a2241757468656e7469636174696f6e206661696c656421223b7d5f5f63695f766172737c613a313a7b733a32343a227369676e696e5f76616c69646174696f6e5f6572726f7273223b733a333a226f6c64223b7d),
('585deb5f464afaa2e0138f0ed003fcb43b2322aa', '162.158.22.44', '2023-10-02 06:56:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363232393830303b),
('4ec4f9892aca5c076518063e9b1692f778c7a208', '162.158.22.44', '2023-10-02 06:56:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363232393830323b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('0c3b450371cc8376c2edb365ff6c883a13a70ddf', '172.70.147.174', '2023-10-02 07:04:18', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233303235373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('b0586e6f58aea7cdf3b9b5b7c6246b60290dde9b', '172.69.178.178', '2023-10-02 07:14:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233303835303b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e223b),
('b7e36baf7990e6266660d92a61699bb69ea217ef', '162.158.22.110', '2023-10-02 07:16:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233303939303b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3437223b757365725f69647c733a313a2231223b),
('50cbfa3e4d47302c2647c3cbe4d5d3629c7ed393', '172.70.230.17', '2023-10-02 07:21:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233313237303b5f63695f70726576696f75735f75726c7c733a3135343a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f6576656e74732f63616c656e6461725f6576656e74732f6576656e74732f302f3f73746172743d323032332d30392d3235543030253341303025334130302532423035253341333026656e643d323032332d31312d30365430302533413030253341303025324230352533413330223b757365725f69647c733a313a2231223b),
('8e5abe3d03c1baa8c5c787c4cd8cd25a9cad2115', '172.71.186.172', '2023-10-02 07:25:14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233313531343b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3437223b757365725f69647c733a313a2231223b),
('e92d1ed1da86d477fc5f37c22cb186e1dcebbbb8', '172.71.194.52', '2023-10-02 07:25:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233313237303b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f646f776e6c6f61645f7064662f3437223b757365725f69647c733a313a2231223b),
('e2247f3ea5241c886f3e4b5fbed2b8fee8eadd93', '162.158.22.44', '2023-10-02 07:29:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233313531343b5f63695f70726576696f75735f75726c7c733a36303a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f696e766f696365732f766965772f3437223b757365725f69647c733a313a2231223b),
('cb0cf5c9d918c8aa07d83fdc24471e4baf4cd97b', '162.158.111.217', '2023-10-02 09:18:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363233383239373b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('efd1cca8abb610cfb269cd018a6fc44c4c6a36c8', '172.71.102.49', '2023-10-04 14:58:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639363433313533343b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('edb35e8fe888182e63c222d2e60922537f79d675', '162.158.87.13', '2023-10-13 10:46:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373139343031303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('52756acb6dbc6f1dc3ee15361817c15c8dae6f6d', '172.70.242.144', '2023-10-17 11:35:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534323532303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('14c321e14d679ef882730f0e407fad9ad4dd876c', '172.69.150.84', '2023-10-17 11:32:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534323334333b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('e83e46c730c33f2005ae9f7a517505de493c9438', '162.158.86.83', '2023-10-17 11:35:31', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534323532303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('e613ef063c86f6839c45c8bf22b9394ac8568d7d', '172.71.186.189', '2023-10-17 11:37:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534323635393b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b),
('b1f0ceabe6561a64234eaaf6c05e10a21de4353a', '172.70.251.144', '2023-10-18 07:20:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631333631303b5f63695f70726576696f75735f75726c7c733a3132353a2268747470733a2f2f6d61696e2e736f6c696369746f75732e636c6f75642f706d732f696e6465782e7068702f7369676e696e3f72656469726563743d68747470732533412532462532466d61696e2e736f6c696369746f75732e636c6f7564253246706d73253246696e6465782e70687025324664617368626f617264223b);

-- --------------------------------------------------------

--
-- Table structure for table `rise_clients`
--

CREATE TABLE `rise_clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_lead` tinyint(1) NOT NULL DEFAULT '0',
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text COLLATE utf8_unicode_ci NOT NULL,
  `client_migration_date` date NOT NULL,
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_clients`
--

INSERT INTO `rise_clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `group_ids`, `deleted`, `is_lead`, `lead_status_id`, `owner_id`, `created_by`, `sort`, `lead_source_id`, `last_lead_status`, `client_migration_date`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Solicitous Business Solutions Pvt. Ltd.', 'Kothrud , Pune , Maharashtra.', 'Pune', 'Maharashtra', '411038', 'India', '2022-04-22', '', '8380948134', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(2, 'Med Ed', 'Hyderabad', 'Hyderabad', 'Hyderabad', '', 'India', '2022-04-26', '', '', '', '', '', 1, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(3, 'SIMS Healthcare Pvt Ltd', 'Plot No.26, Amar Society, Kavuri Hills, Madhapur, Hyderabad, Telangana 500033', 'Hyderabad', 'Telangana', '500033', 'India', '2022-04-30', 'https://mededskills.com/', '+91 91007 77102', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', 'INR', 0),
(4, 'Candi Source', ' B-96, Vivek Vihar, Delhi-110096 ', 'Delhi', 'Delhi', '110096', 'India', '2022-04-30', 'candisource.com', '+91 9953081170', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', 'INR', 0),
(5, 'Acutech', 'asdfghjkl', 'guj', '', '', '', '2022-05-07', '', '', '', '', '', 0, 0, 0, 0, 21, 0, 0, '', '0000-00-00', '', '', 0),
(6, 'Clear by Services', 'Warje', 'Pune', 'Maharashtra', '411045', 'India', '2022-05-18', '', '9767168393', '₹', '', '', 0, 1, 3, 1, 0, 0, 5, '', '0000-00-00', '', 'INR', 0),
(7, 'StarDust Metaverse', '994c Buangkok link,', '(Buangkok Woods)', '#04-311', '536994', 'Singapore', '2022-05-18', 'Stardust.live', '+65 8778 7877', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', 'INR', 0),
(8, 'Inspace Design Pte Ltd', '994c , Buangkok link, Buangkok woods', 'Singapore', '', '536994', 'Singapore', '2022-09-15', '', '+6587787877', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(9, 'Huf India Pvt. Ltd. ', 'GAT NO:304, NANEKARWADI\r\nCHAKAN, TALUKA KHED\r\nMAHARASHTRA INDIA', 'Pune', 'Maharashtra', '410501', 'India', '2022-09-20', '', '9370641704', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(10, 'Landmark Techedge Pvt. Ltd.', 'OFFICE NO 63, PATIL ARCADE, A BUILDING, near SHARADA CENTER, Erandwane', 'Pune', 'Maharashtra', '411004', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(11, 'Semantic Technologies Pvt. Ltd.', ' 392 A, Mahale Plot, 3rd Floor Gokhalenagar Road, Off. Senapati Bapat Road  ', 'Pune', 'Maharashtra', '411016', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(12, 'Save Merit Sanstha', 'Kothrud', 'Pune', 'Maharashtra', '411038', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(13, 'Combat Robotics India Pvt. Ltd.', 'Gat 767, Spine Rd, Pawar Vasti, Chikhali  ', 'Pune', 'Maharashtra', '412114', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(14, 'M S Virtual ', 'Kothrud', 'Pune', 'Maharashtra', '411038', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(15, 'Dezindia', 'Bhoomi Breeze, Raheja Estate, Kulupwadi, Borivali East', 'Mumbai', ' Maharashtra', '400066', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(16, 'ZYMES Bioscience Pvt.Ltd.', 'B-20, 2nd Floor, II phase, Okhla Industrial Estate', 'New Delhi', 'Delhi ', '110020', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(17, 'Jaydev Naik', 'Kothrud', 'Pune', 'Maharashtra', '411038', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(18, 'Yesaar Geomatics Pvt.Ltd.', 'Bibwewadi', 'Pune', 'Maharashtra', '411037', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(19, 'Janaseva Foundation', 'Indulal Complex, LBS Rd, Navi Peth', 'Pune', 'Maharashtra', '411030', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(20, 'khodke cloud solutions', 'Viman Nagar', 'Pune ', 'Maharashtra', '411014', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(21, 'Ozone Institute', 'Kothapet', 'Hyderabad', 'Telangana ', '500035', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(22, 'Dezindia - BEX', 'Kulupwadi, Borivali East', 'Mumbai', 'Maharashtra', '400066', 'India', '2022-10-16', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(23, 'ROTTEN GRAPES PRIVATE LIMITED', 'RH 1 GURDEO DATT APPT P N O 14 15 JAGTAPMALA UNTWADI NASHIK Nashik MH 422101', 'NASHIK ', 'Maharashtra', '422101', 'India', '2023-01-31', 'rottengrapes.tech', '07798925200', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', 'AAKCR1421R', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_client_groups`
--

CREATE TABLE `rise_client_groups` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_client_groups`
--

INSERT INTO `rise_client_groups` (`id`, `title`, `deleted`) VALUES
(1, 'candi', 0),
(2, 'Solicitous', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_company`
--

CREATE TABLE `rise_company` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vat_number` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rise_company`
--

INSERT INTO `rise_company` (`id`, `name`, `address`, `phone`, `email`, `website`, `vat_number`, `is_default`, `deleted`) VALUES
(1, 'Company Name', '', '', '', '', '', 0, 0),
(2, 'Solicitous Business Solutions Pvt. Ltd.', '403, Paud Road, Kothrud, \r\nPune, Maharashtra, \r\nIndia - 411038', '+917798925200', 'info@solicitousbusiness.com, admin@solicitousbusiness.com', 'https://solicitousbusiness.com', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_contracts`
--

CREATE TABLE `rise_contracts` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `contract_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `public_key` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `accepted_by` int(11) NOT NULL DEFAULT '0',
  `staff_signed_by` int(11) NOT NULL DEFAULT '0',
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_contracts`
--

INSERT INTO `rise_contracts` (`id`, `title`, `client_id`, `project_id`, `contract_date`, `valid_until`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `discount_type`, `discount_amount`, `discount_amount_type`, `content`, `public_key`, `accepted_by`, `staff_signed_by`, `meta_data`, `files`, `company_id`, `deleted`) VALUES
(1, 'Laptop', 3, 0, '2022-05-01', '2022-05-06', '', NULL, 'draft', 1, 0, 'before_tax', 0, 'percentage', '<div style=\"display: flex; flex-direction: column;\">\n\n <table style=\"margin-top: 0; margin-bottom: 40px\">\n <tbody>\n <tr>\n <td style=\"padding: 0;\">\n <div style=\"background-size: cover; background-position: center top; background-image: url(\'https://fairsketch.com/media/proposal/bg-2.png\'); padding: 140px 10px 100px;\">\n <div style=\"color:#FFFFFF;font-size:50px;line-height:62px !important;font-weight:600;letter-spacing:0px; text-align: center;\">{CONTRACT_TITLE}</div>\n <div style=\"color: #FFFFFF;\n font-size: 15px;\n text-align: center;\n  padding-top: 30px;\">We develop amazing apps for your business. <br>Here is the contract.</div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>This App Development Contract states the terms and conditions that shall govern the contractual agreement between&nbsp; {COMPANY_NAME} (the Service Provider) and {CONTRACT_TO_COMPANY_NAME} (the Client) who agrees to be bound by the terms of the Contract.<table style=\"margin-top: 0; margin-bottom: 40px\"><tbody>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"text-align: center\">\n         <div style=\"font-size: 30px\">{CONTRACT_ID}</div>\n         <div style=\"height: 3px;\n  width: 80px;\n  background-color: #2AA384;\n  margin: 25px auto 20px;\"></div>\n         <div style=\"margin-bottom: 20px;\"><div style=\"text-align: center;\">Contract Date:&nbsp;<span style=\"text-align: start;\">{CONTRACT_DATE}&nbsp;</span></div><div style=\"text-align: center;\"><span style=\"text-align: start;\">Expiry Date:&nbsp;&nbsp;{CONTRACT_EXPIRY_DATE}</span></div><div style=\"text-align: left;\"><br></div></div>\n     </div>\n     <div style=\"clear: both;\">\n         <div style=\"width: 50%; float: left;  padding-right: 10px\">\n <img src=\"https://fairsketch.com/media/proposal/proposal-to.png\" style=\"width: 100%; margin-bottom: 15px\">\n <p><i>Client</i></p>\n <br>\n {CONTRACT_TO_INFO}\n         </div>\n\n         <div style=\"width: 50%; float: left; padding-left: 10px\">\n <img src=\"https://fairsketch.com/media/proposal/proposal-from.png\" style=\"width: 100%; margin-bottom: 15px\">\n <p><i>Service Provider</i></p>\n <br>\n {COMPANY_INFO}\n         </div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"margin-top: 20px\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Service Details</div>\n <div style=\"height: 3px; width: 80px; background-color: #2AA384; margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\">We\'ll develop a mobile app for your business. <br>Here are more details about the service.&nbsp;</div>\n         </div>\n\n         <p>\n {CONTRACT_ITEMS}\n         </p>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 60px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">1. Service Policy&nbsp;</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </div><div style=\"text-align: left; margin-bottom: 20px;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"text-align: left; margin-bottom: 20px;\"><br></div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">2. Delivery&nbsp;</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </div><div style=\"text-align: left; margin-bottom: 20px;\"><span>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></div><div style=\"text-align: left; margin-bottom: 20px;\"><span><br></span></div></div></div><div style=\"\"><div style=\"text-align: center\"><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">3. Intellectual property rights</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"text-align: left; margin-bottom: 20px;\"><br></div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">4. Confidentiality</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\"><span>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></div><div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"text-align: left; margin-bottom: 20px;\"><br></div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">5. Support</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n</td></tr></tbody></table></div><div style=\"display: flex; flex-direction: column;\">\n\n<div>\n{CONTRACT_NOTE}\n</div>\n</div>', 'zssZHjOeVW', 0, 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:50:\"contract_file626eb53d9781d-IMG-20220501-WA0007.jpg\";s:9:\"file_size\";s:5:\"20211\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_contract_items`
--

CREATE TABLE `rise_contract_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `contract_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_contract_templates`
--

CREATE TABLE `rise_contract_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `template` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_contract_templates`
--

INSERT INTO `rise_contract_templates` (`id`, `title`, `template`, `deleted`) VALUES
(1, 'Contract template 1', '<div style=\"display: flex; flex-direction: column;\">\n\n <table style=\"margin-top: 0; margin-bottom: 40px\">\n <tbody>\n <tr>\n <td style=\"padding: 0;\">\n <div style=\"background-size: cover; background-position: center top; background-image: url(\'https://fairsketch.com/media/proposal/bg-2.png\'); padding: 140px 10px 100px;\">\n <div style=\"color:#FFFFFF;font-size:50px;line-height:62px !important;font-weight:600;letter-spacing:0px; text-align: center;\">{CONTRACT_TITLE}</div>\n <div style=\"color: #FFFFFF;\n font-size: 15px;\n text-align: center;\n  padding-top: 30px;\">We develop amazing apps for your business. <br>Here is the contract.</div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>This App Development Contract states the terms and conditions that shall govern the contractual agreement between&nbsp; {COMPANY_NAME} (the Service Provider) and {CONTRACT_TO_COMPANY_NAME} (the Client) who agrees to be bound by the terms of the Contract.<table style=\"margin-top: 0; margin-bottom: 40px\"><tbody>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"text-align: center\">\n         <div style=\"font-size: 30px\">{CONTRACT_ID}</div>\n         <div style=\"height: 3px;\n  width: 80px;\n  background-color: #2AA384;\n  margin: 25px auto 20px;\"></div>\n         <div style=\"margin-bottom: 20px;\"><div style=\"text-align: center;\">Contract Date:&nbsp;<span style=\"text-align: start;\">{CONTRACT_DATE}&nbsp;</span></div><div style=\"text-align: center;\"><span style=\"text-align: start;\">Expiry Date:&nbsp;&nbsp;{CONTRACT_EXPIRY_DATE}</span></div><div style=\"text-align: left;\"><br></div></div>\n     </div>\n     <div style=\"clear: both;\">\n         <div style=\"width: 50%; float: left;  padding-right: 10px\">\n <img src=\"https://fairsketch.com/media/proposal/proposal-to.png\" style=\"width: 100%; margin-bottom: 15px\">\n <p><i>Client</i></p>\n <br>\n {CONTRACT_TO_INFO}\n         </div>\n\n         <div style=\"width: 50%; float: left; padding-left: 10px\">\n <img src=\"https://fairsketch.com/media/proposal/proposal-from.png\" style=\"width: 100%; margin-bottom: 15px\">\n <p><i>Service Provider</i></p>\n <br>\n {COMPANY_INFO}\n         </div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"margin-top: 20px\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Service Details</div>\n <div style=\"height: 3px; width: 80px; background-color: #2AA384; margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\">We\'ll develop a mobile app for your business. <br>Here are more details about the service.&nbsp;</div>\n         </div>\n\n         <p>\n {CONTRACT_ITEMS}\n         </p>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 60px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">1. Service Policy&nbsp;</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </div><div style=\"text-align: left; margin-bottom: 20px;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"text-align: left; margin-bottom: 20px;\"><br></div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">2. Delivery&nbsp;</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </div><div style=\"text-align: left; margin-bottom: 20px;\"><span>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></div><div style=\"text-align: left; margin-bottom: 20px;\"><span><br></span></div></div></div><div style=\"\"><div style=\"text-align: center\"><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">3. Intellectual property rights</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"text-align: left; margin-bottom: 20px;\"><br></div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">4. Confidentiality</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\"><span>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></div><div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"text-align: left; margin-bottom: 20px;\"><br></div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">5. Support</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"text-align: left; margin-bottom: 20px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div style=\"margin-bottom: 20px;\"></div></div></div>\n\n\n\n</td></tr></tbody></table></div><div style=\"display: flex; flex-direction: column;\">\n\n<div>\n{CONTRACT_NOTE}\n</div>\n</div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_custom_fields`
--

CREATE TABLE `rise_custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `example_variable_name` text COLLATE utf8_unicode_ci,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `add_filter` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_contract` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_order` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_proposal` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT '0',
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT '0',
  `disable_editing_by_clients` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_kanban_card` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_custom_field_values`
--

CREATE TABLE `rise_custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_custom_widgets`
--

CREATE TABLE `rise_custom_widgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `show_border` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_dashboards`
--

CREATE TABLE `rise_dashboards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_dashboards`
--

INSERT INTO `rise_dashboards` (`id`, `user_id`, `title`, `data`, `color`, `sort`, `deleted`) VALUES
(1, 1, 'dashS2', 'a:0:{}', '#dbadff', 0, 0),
(2, 1, 'Dashboard - Kavita', 'a:0:{}', '#2d9cdb', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_email_templates`
--

CREATE TABLE `rise_email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_email_templates`
--

INSERT INTO `rise_email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME} {USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', '', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\r\n                                        <tbody><tr>\r\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                        </tbody>\r\n                                                                    </table>\r\n                                                                </td>\r\n                                                            </tr>\r\n                                                        </tbody>\r\n                                                    </table>\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    Hello,<br>\r\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\r\n                                                                                    Thank you for your business cooperation.\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                        <tbody>\r\n                                                                                            <tr>\r\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                        <tbody>\r\n                                                                                                            <tr>\r\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\r\n                                                                                                                </td>\r\n                                                                                                            </tr>\r\n                                                                                                        </tbody>\r\n                                                                                                    </table>\r\n                                                                                                </td>\r\n                                                                                            </tr>\r\n                                                                                        </tbody>\r\n                                                                                    </table>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n                                                                                    \r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n  {SIGNATURE}\r\n  </td>\r\n </tr>\r\n </tbody>\r\n  </table>\r\n  </td>\r\n  </tr>\r\n  </tbody>\r\n </table>\r\n  </td>\r\n </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n </tr>\r\n </tbody>\r\n </table>\r\n </td>\r\n </tr>\r\n </tbody>\r\n  </table>', NULL, 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(14, 'invoice_due_reminder_before_due_date', 'Invoice due reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Due Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that invoice {INVOICE_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(15, 'invoice_overdue_reminder', 'Invoice overdue reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Overdue Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(16, 'recurring_invoice_creation_reminder', 'Recurring invoice creation reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Cration Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">View Invoice</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(17, 'project_task_deadline_reminder', 'Project task deadline reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">This is to remind you that there are some tasks which deadline is {DEADLINE}.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{TASKS_LIST}</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(18, 'estimate_sent', 'New estimate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is the estimate. Please check the attachment.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0);
INSERT INTO `rise_email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(19, 'estimate_request_received', 'Estimate request received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE REQUEST #{ESTIMATE_REQUEST_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"><span style=\"background-color: transparent;\">A new estimate request has been received from {CONTACT_FIRST_NAME}.</span><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_REQUEST_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate Request</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(20, 'estimate_rejected', 'Estimate rejected', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been rejected.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(21, 'estimate_accepted', 'Estimate accepted', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been accepted.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(22, 'new_client_greetings', 'Welcome!', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Welcome to {COMPANY_NAME}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Thank you for creating your account. </span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">We are happy to see you here.<br></span></p><hr><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {CONTACT_LOGIN_EMAIL}</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{CONTACT_LOGIN_PASSWORD}</span></p><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(23, 'verify_email', 'Please verify your email', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account verification</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\"><p style=\"font-size: 14px;\">To initiate the signup process, please click on the following link:<br></p><p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{VERIFY_EMAIL_URL}\" target=\"_blank\">Verify Email</a></span></p>  <p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"font-size: 14px;\">If you did not initiate the request, you do not need to take any further action and can safely disregard this email.</span></p><p style=\"\"><span style=\"font-size: 14px;\"><br></span></p><p style=\"font-size: 14px;\">{SIGNATURE}</p></div></div></div>', '', 0),
(24, 'new_order_received', 'New order received', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">A new order has been received from&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">{CONTACT_FIRST_NAME} and is attached here.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(25, 'order_status_updated', 'Order status updated', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your order&nbsp;</span><font color=\"#555555\"><span style=\"font-size: 14px;\">has been updated&nbsp;</span></font><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(26, 'proposal_sent', 'Proposal sent', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>PROPOSAL #{PROPOSAL_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is a proposal for you.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{PROPOSAL_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Proposal</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> </p><p>Public URL: {PUBLIC_PROPOSAL_URL}</p><p><br></p><p>{SIGNATURE} </p></td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', NULL, 0),
(27, 'project_completed', 'Project completed', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Project #{PROJECT_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Project #{PROJECT_ID}&nbsp;has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">Title:&nbsp;</span>{PROJECT_TITLE}</p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROJECT_URL}\" target=\"_blank\">Show Project</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"color: rgb(78, 94, 106); font-size: 13.5px;\">{SIGNATURE}</span><br></span></p>   </div>  </div> </div>', '', 0),
(28, 'proposal_accepted', 'Proposal accepted', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>PROPOSAL #{PROPOSAL_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The proposal #{PROPOSAL_ID} has been accepted.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROPOSAL_URL}\" target=\"_blank\">Show Proposal</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(29, 'proposal_rejected', 'Proposal rejected', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>PROPOSAL #{PROPOSAL_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The proposal #{PROPOSAL_ID} has been rejected.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROPOSAL_URL}\" target=\"_blank\">Show Proposal</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(30, 'estimate_commented', 'Estimate  #{ESTIMATE_ID}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Estimate #{ESTIMATE_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{COMMENT_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ESTIMATE_URL}\" target=\"_blank\">Show Estimate</a></span></p></div></div></div>', '', 0),
(31, 'contract_sent', 'Contract sent', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>CONTRACT #{CONTRACT_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is a contract for you.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{CONTRACT_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Contract</a></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>Public URL: {PUBLIC_CONTRACT_URL}<br></p><p><br></p><p>{SIGNATURE}<br></p></td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(32, 'contract_accepted', 'Contract accepted', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>CONTRACT #{CONTRACT_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The contract #{CONTRACT_ID} has been accepted.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{CONTRACT_URL}\" target=\"_blank\">Show Contract</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(33, 'contract_rejected', 'Contract rejected', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>CONTRACT #{CONTRACT_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The contract #{CONTRACT_ID} has been rejected.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{CONTRACT_URL}\" target=\"_blank\">Show Contract</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_estimates`
--

CREATE TABLE `rise_estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `accepted_by` int(11) NOT NULL DEFAULT '0',
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `signature` text COLLATE utf8_unicode_ci NOT NULL,
  `public_key` text COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_estimate_comments`
--

CREATE TABLE `rise_estimate_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_estimate_forms`
--

CREATE TABLE `rise_estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `enable_attachment` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_estimate_items`
--

CREATE TABLE `rise_estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_estimate_requests`
--

CREATE TABLE `rise_estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_events`
--

CREATE TABLE `rise_events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `editable_google_event` tinyint(1) NOT NULL DEFAULT '0',
  `google_event_id` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_by` text COLLATE utf8_unicode_ci NOT NULL,
  `rejected_by` text COLLATE utf8_unicode_ci NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_events`
--

INSERT INTO `rise_events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `editable_google_event`, `google_event_id`, `deleted`, `color`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `last_start_date`, `recurring_dates`, `confirmed_by`, `rejected_by`, `files`) VALUES
(1, 'Kavita Birthday', 'Kavita Birthday', '2022-05-06', '2022-05-06', '00:00:00', '00:00:00', 1, 'Pune, Maharashtra.', 0, '', 'all', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(2, 'MedEd Delivery', 'Important', '2022-05-10', '2022-05-10', '00:00:00', '00:00:00', 1, '', 0, '', '', 0, '', 0, '#ad159e', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(3, 'Sachin Kharat', 'Birthday', '2022-01-03', '2022-01-03', '00:00:00', '00:00:00', 1, 'Solicitous Business Solutions', 0, '', 'all', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(4, 'Sourabh', 'Birthday', '2022-02-20', '2022-02-20', '00:00:00', '11:00:00', 1, '', 0, '', 'all', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(5, 'Raj Birthday', 'welcome Raj', '2022-06-05', '2022-06-05', '00:00:00', '00:00:00', 12, '', 0, '', 'all', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(6, 'Kaushik', 'Birthday', '2023-02-08', '2023-02-08', '00:00:00', '00:00:00', 16, '', 0, '', 'all', 0, '', 0, '#34495e', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(7, 'Supriya Chougule', '28-10-2000', '2000-10-28', NULL, '23:35:00', '00:00:00', 15, '', 0, '', '', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(8, 'Prathmesh ', '30/03/2000', '2022-03-30', '2022-03-30', '12:00:00', '14:00:00', 7, 'Pune', 0, '', 'all', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(9, 'Supriya Chougule', '28-10-2000', '2022-05-20', '2022-05-20', '01:37:00', '00:23:00', 15, 'Osmanabad', 0, '', 'all', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(10, 'MedEd Meeting', 'MedEd Meeting', '2022-05-09', '2022-05-09', '17:00:00', '18:00:00', 1, '', 0, '', 'member:2,member:5,member:1,member:12,member:6,member:16', 0, '', 0, '#4a8af4', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `rise_expenses`
--

CREATE TABLE `rise_expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_expense_id` tinyint(4) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_expenses`
--

INSERT INTO `rise_expenses` (`id`, `expense_date`, `category_id`, `description`, `amount`, `files`, `title`, `project_id`, `user_id`, `tax_id`, `tax_id2`, `client_id`, `recurring`, `recurring_expense_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `deleted`) VALUES
(1, '2022-05-24', 1, 'wasd', 5000, 'a:0:{}', 'March Salary', 0, 14, 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rise_expense_categories`
--

CREATE TABLE `rise_expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_expense_categories`
--

INSERT INTO `rise_expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_file_category`
--

CREATE TABLE `rise_file_category` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `type` enum('project') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'project',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_general_files`
--

CREATE TABLE `rise_general_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_general_files`
--

INSERT INTO `rise_general_files` (`id`, `file_name`, `file_id`, `service_type`, `description`, `file_size`, `created_at`, `client_id`, `user_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file628d10bf51de7-Clearby-Services.pdf', NULL, NULL, 'Ankita KYC Documents', 152956, '2022-05-24 17:07:11', 0, 14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rise_help_articles`
--

CREATE TABLE `rise_help_articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_help_categories`
--

CREATE TABLE `rise_help_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_invoices`
--

CREATE TABLE `rise_invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `labels` text COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `tax_id3` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_invoice_id` int(11) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_invoices`
--

INSERT INTO `rise_invoices` (`id`, `client_id`, `project_id`, `bill_date`, `due_date`, `note`, `labels`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `tax_id3`, `recurring`, `recurring_invoice_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `due_reminder_date`, `recurring_reminder_date`, `discount_amount`, `discount_amount_type`, `discount_type`, `cancelled_at`, `cancelled_by`, `files`, `company_id`, `deleted`) VALUES
(1, 2, 2, '2022-04-01', '2022-04-30', 'Second phase Payments ', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 1, 0),
(2, 3, 2, '2022-05-18', '2022-05-19', '50% Payment for the project.', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(3, 7, 5, '2022-05-18', '2022-05-20', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(4, 4, 3, '2022-05-20', '2022-05-24', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(5, 3, 6, '2022-06-24', '2022-08-02', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'fixed_amount', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(6, 3, 2, '2022-06-15', '2022-08-05', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(7, 8, 0, '2022-09-15', '2022-09-15', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(8, 9, 0, '2022-09-20', '2022-09-21', 'Proforma Invoice - 60% Advance amount of Total Project Cost', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(9, 9, 0, '2022-10-16', '2022-11-16', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(10, 10, 0, '2021-05-06', '2021-06-06', 'Puzzle Parking Project', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(11, 11, 0, '2021-05-15', '2021-05-25', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(12, 12, 0, '2021-05-29', '2021-06-09', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(13, 11, 0, '2021-06-09', '2021-06-19', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(14, 11, 0, '2021-06-18', '2021-06-28', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(15, 13, 0, '2021-06-26', '2021-07-06', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(16, 14, 0, '2021-07-12', '2021-07-22', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(17, 14, 0, '2021-07-15', '2021-07-25', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(18, 15, 0, '2021-07-20', '2021-07-29', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(19, 3, 0, '2021-07-26', '2021-08-06', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(20, 15, 0, '2021-07-30', '2021-08-08', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(21, 16, 0, '2021-08-04', '2021-08-14', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 1),
(22, 16, 0, '2021-08-04', '2021-08-14', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(23, 17, 0, '2021-08-20', '2021-08-28', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(24, 15, 0, '2021-08-24', '2021-08-28', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(25, 16, 0, '2021-08-26', '2021-09-06', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(26, 14, 0, '2021-09-08', '2021-09-18', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(27, 18, 0, '2021-09-11', '2021-09-22', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(28, 19, 0, '2021-10-04', '2021-10-14', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(29, 20, 0, '2021-10-05', '2021-10-15', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(30, 11, 0, '2021-10-05', '2021-10-15', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(31, 22, 0, '2021-10-15', '2021-10-25', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(32, 22, 0, '2021-10-18', '2021-10-28', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(33, 16, 0, '2021-10-09', '2021-10-19', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(34, 21, 0, '2021-11-15', '2021-11-25', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(35, 3, 0, '2021-12-31', '2022-01-10', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(36, 4, 3, '2021-08-26', '2021-08-28', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(37, 4, 3, '2021-11-17', '2021-11-19', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(38, 23, 0, '2023-01-31', '2023-02-01', 'App Development Payment ', '', NULL, 'not_paid', 0, 0, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(39, 23, 0, '2023-01-23', '2023-01-24', '1st week App Deployment', '', NULL, 'not_paid', 0, 0, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(40, 23, 0, '2023-02-06', '2023-02-07', 'Reference Number\r\n\r\nNO37232318743933', '', NULL, 'not_paid', 0, 0, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(41, 23, 0, '2023-02-08', '2023-02-09', '', '', NULL, 'draft', 0, 0, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(42, 23, 0, '2023-03-21', '2023-03-22', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(43, 23, 0, '2023-03-21', '2023-03-22', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(44, 8, 0, '2023-03-25', '2023-03-26', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(45, 23, 0, '2023-04-25', '2023-04-26', '', '', NULL, 'draft', 0, 0, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(46, 23, 0, '2023-08-08', '2023-08-09', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0),
(47, 23, 0, '2023-10-02', '2023-10-02', '', '', NULL, 'draft', 0, 0, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_invoice_items`
--

CREATE TABLE `rise_invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_invoice_items`
--

INSERT INTO `rise_invoice_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `sort`, `invoice_id`, `deleted`) VALUES
(1, 'Admin Development ', '', 1, '1', 1000, 1000, 0, 1, 0),
(2, 'H20 App Development ', 'Instant Job placements Application', 1, 'Project', 500000, 500000, 0, 2, 0),
(3, 'Domain Registration', 'TheStardust.life', 1, 'Domain + Service', 1500, 1500, 0, 3, 0),
(4, 'Domain Registration', 'TheStardust.live ', 1, 'Domain + Service', 1500, 1500, 0, 3, 0),
(5, 'Email ID', 'Emai ID Service ', 5, 'Emails', 2500, 12500, 0, 3, 0),
(6, 'Coming Soon Live Page ', '', 1, 'Project', 3000, 3000, 0, 3, 0),
(7, 'Website Development ', 'Wireframing, Designing - Photoshop, From scratch website Development, Iterations, Deployment, etc.', 1, 'Project', 35000, 35000, 0, 4, 0),
(8, 'H20 App Development ', 'Instant Job placements Application', 1, 'Apps', 1000000, 1000000, 0, 5, 0),
(9, 'Mobile App Development', '\r\nStudent E- Learning Mobile App', 1, 'App', 1100000, 1100000, 0, 6, 0),
(10, 'Extra Functionalities', '\r\nAdmin Panel\r\n\r\nInstructor Panel\r\n\r\nAPI Development \r\n\r\nStudent E- Learning Mobile App ', 1, 'Extras', 550000, 550000, 0, 6, 0),
(11, 'Project Paid Amount', 'Earlier Payments - Fri, Dec 31, 2021\r\n\r\nEarlier Payments - 7th July 2022', 1, '1', -500000, -500000, 0, 6, 0),
(12, 'Extra Payment', 'Considering AI Payment transferred. (T.B.D.)', 1, 'Software', -200000, -200000, 0, 6, 0),
(13, 'Website Development ', 'Static Website', 1, 'Project', 40000, 40000, 0, 7, 0),
(14, 'Artificial Intelligence (A.I) Based Futuristic Line', 'Demo Stage with 3 factor segmentation. ', 1, '', 210000, 210000, 0, 8, 0),
(15, 'Website Development ', 'Static Website', 1, 'Project', 15000, 15000, 0, 9, 0),
(16, 'Puzzle Parking Software Development', 'Advance payment', 1, '', 11000, 11000, 0, 10, 0),
(17, 'Mobile App Development', 'Advance Payment - CropTech ', 1, '', 67500, 67500, 0, 11, 0),
(18, 'Digital Marketing', 'Save Merit Save Nation Project', 1, '', 40000, 40000, 0, 12, 0),
(19, 'Mobile App Development', 'Croptech App Advance Payment ', 1, '', 45000, 45000, 0, 13, 0),
(20, 'Mobile App Development', 'CropTech App - Phase 1 Payment', 1, '', 45000, 45000, 0, 14, 0),
(21, 'Mobile App Development', '', 1, 'App', 15000, 15000, 0, 15, 0),
(22, 'Website Development ', 'Static Website - Advance Payment ', 1, 'Project', 5250, 5250, 0, 16, 0),
(23, 'Website Development ', 'Static Website - Part 2', 1, '', 5250, 5250, 0, 17, 0),
(24, 'Software Development ', 'Part 1', 1, '', 35000, 35000, 0, 18, 0),
(25, 'Website Development ', 'Static Website ', 1, '', 20000, 20000, 0, 19, 0),
(26, 'Software Development ', 'Phase 1', 1, '', 30000, 30000, 0, 20, 0),
(27, 'Mobile App Development', 'Advance Payment', 1, '', 10000, 10000, 0, 22, 1),
(28, 'Mobile App Development', 'Advance Payment', 1, '', 10000, 10000, 0, 22, 0),
(29, 'Service As a Product', '', 1, '', 5000, 5000, 0, 23, 0),
(30, 'Mobile App Development', 'Phase 3 Payment ', 1, 'App', 30000, 30000, 0, 24, 0),
(31, 'Mobile App Development', 'Phase 1 Payment', 1, 'App', 30000, 30000, 0, 25, 0),
(32, 'Website Development ', 'Phase 3 Software Payment', 1, 'Project', 17500, 17500, 0, 26, 0),
(33, 'Mobile App Development', 'Learning Mobile App', 1, 'App', 35000, 35000, 0, 27, 0),
(34, 'Service As a Product', '', 1, '', 50000, 50000, 0, 28, 0),
(35, 'Mobile App Development', 'Advance Payment ', 1, '', 25000, 25000, 0, 29, 0),
(36, 'Mobile App Development', 'Phase 3 Payment', 1, '', 122400, 122400, 0, 30, 0),
(37, 'Mobile App Development', 'Bex Project - Phase 1 ', 1, '', 90000, 90000, 0, 31, 0),
(38, 'Mobile App Development', 'BEX Project Phase 2 Payment ', 1, '', 80000, 80000, 0, 32, 0),
(39, 'Mobile App Development', 'Phase 2 Payment', 1, '', 14000, 14000, 0, 33, 0),
(40, 'Software Development ', 'Advance Payment ', 1, '', 600000, 600000, 0, 34, 0),
(41, 'Mobile App Development', 'Advance Payment', 1, '', 400000, 400000, 0, 35, 0),
(42, 'Software Development ', 'Candidate Hiring Portal', 1, 'Project', 600000, 600000, 0, 36, 0),
(43, 'Coming Soon Live Page ', 'Live Page', 1, 'Project', 0, 0, 0, 36, 1),
(44, 'Admin Development ', 'Admin panel of Candi portal development', 1, 'Project', 400000, 400000, 0, 37, 0),
(45, 'Website Hosting', 'Website Hosting service', 1, 'Year', 50000, 50000, 0, 37, 0),
(46, 'Website Development ', 'Dynamic Website', 1, 'Project', 150000, 150000, 0, 37, 0),
(47, 'Mobile App Development', 'Weekly payment Development', 1, 'App', 30000, 30000, 0, 38, 0),
(48, 'Mobile App Development', 'React native Mobile App Deployment', 1, 'App', 30000, 30000, 0, 39, 0),
(49, 'Mobile App Development', '2 week Contract ', 1, 'App', 60000, 60000, 0, 40, 0),
(50, 'Admin Development ', 'Admin / API Development ', 2, 'Weeks', 35000, 70000, 0, 41, 0),
(51, 'Admin Development ', '4 Days Resource payment', 1, '', 24000, 24000, 0, 42, 0),
(52, 'Mobile App Development', 'App Development resource', 1, 'App', 28000, 28000, 0, 43, 0),
(53, 'Domain Registration', 'In space', 1, 'Domain', 6020, 6020, 0, 44, 0),
(54, 'Mobile App Development', 'App Development Resource', 2, 'weeks', 30000, 60000, 0, 45, 0),
(55, 'Backend Development ', 'Backend Development Resource ', 2, 'weeks', 35000, 70000, 0, 45, 0),
(56, 'Data Annotation Services ', '', 2, '.Tiff Project Files', 10000, 20000, 0, 46, 0),
(57, 'AI based Camaflouge louge Development ', 'Camouflage Patterns', 4, '', 2500, 10000, 0, 47, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_invoice_payments`
--

CREATE TABLE `rise_invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_invoice_payments`
--

INSERT INTO `rise_invoice_payments` (`id`, `amount`, `payment_date`, `payment_method_id`, `note`, `invoice_id`, `deleted`, `transaction_id`, `created_by`, `created_at`) VALUES
(1, 20000, '2022-09-15', 1, '', 7, 0, NULL, 1, '2022-09-15 07:10:53'),
(2, 20000, '2022-09-15', 1, '', 7, 0, NULL, 1, '2022-09-15 07:14:06'),
(3, 11000, '2022-10-16', 1, '', 9, 0, NULL, 1, '2022-10-16 09:12:55'),
(4, -11000, '2022-10-16', 1, '', 9, 0, NULL, 1, '2022-10-16 09:14:45'),
(5, 10000, '2022-10-16', 1, '1st installment ', 9, 0, NULL, 1, '2022-10-16 09:16:48'),
(6, 11000, '2021-05-06', 1, '', 10, 0, NULL, 1, '2022-10-16 09:24:42'),
(7, 67500, '2021-05-15', 1, 'Advance payment of Croptech Project ', 11, 0, NULL, 1, '2022-10-16 09:51:51'),
(8, 40000, '2021-05-29', 1, '', 12, 0, NULL, 1, '2022-10-16 10:30:17'),
(9, 45000, '2021-06-09', 1, 'Advance Payment Receipt ', 13, 0, NULL, 1, '2022-10-16 10:49:18'),
(10, 45000, '2021-06-18', 1, 'Phase 1 Payment Receipt', 14, 0, NULL, 1, '2022-10-16 10:55:12'),
(11, 15000, '2021-06-26', 1, 'Mobile App Development ', 15, 0, NULL, 1, '2022-10-16 11:02:37'),
(12, 5250, '2021-07-12', 1, 'Part Payment Receipt', 16, 0, NULL, 1, '2022-10-16 11:10:31'),
(13, 5250, '2021-07-15', 1, '', 17, 0, NULL, 1, '2022-10-16 11:13:18'),
(14, 35000, '2021-07-20', 1, 'Advance Payment Receipt', 18, 0, NULL, 1, '2022-10-16 11:17:12'),
(15, 20000, '2021-07-26', 1, 'Static Website Payment Receipt', 19, 0, NULL, 1, '2022-10-16 11:26:56'),
(16, 30000, '2021-07-30', 1, 'Phase 1 Payment Receipt ', 20, 0, NULL, 1, '2022-10-16 11:32:53'),
(17, 30000, '2021-08-04', 1, 'Advance Payment Receipt ', 22, 1, NULL, 1, '2022-10-16 12:16:48'),
(18, 10000, '2022-10-16', 1, '', 22, 1, NULL, 1, '2022-10-16 12:23:23'),
(19, 10000, '2021-08-04', 1, 'Advance Payment Receipt', 22, 0, NULL, 1, '2022-10-16 12:25:33'),
(20, 5000, '2021-08-20', 1, 'Service Payment Receipt', 23, 0, NULL, 1, '2022-10-16 12:35:12'),
(21, 60000, '2021-08-24', 1, 'App Development Phase 2 Payment Receipt ', 24, 1, NULL, 1, '2022-10-16 12:43:06'),
(22, 30000, '2021-08-26', 1, 'Phase 2 Payment Receipt', 24, 0, NULL, 1, '2022-10-16 12:46:51'),
(23, 30000, '2021-08-26', 1, 'Phase 1 Payment Receipt', 25, 0, NULL, 1, '2022-10-16 12:54:46'),
(24, 17500, '2021-09-08', 1, 'Phase 3 - Payment Receipt', 26, 0, NULL, 1, '2022-10-16 13:01:45'),
(25, 35000, '2021-09-11', 1, 'Advance Payment Receipt', 27, 0, NULL, 1, '2022-10-16 13:08:51'),
(26, 50000, '2021-10-04', 1, 'Service as a Product Payment Receipt', 28, 0, NULL, 1, '2022-10-16 13:14:33'),
(27, 25000, '2021-10-05', 1, 'Advance Payment Receipt', 29, 0, NULL, 1, '2022-10-16 13:18:28'),
(28, 122400, '2021-10-05', 1, 'Phase 3 Payment Receipt', 30, 0, NULL, 1, '2022-10-16 13:28:36'),
(29, 90000, '2021-10-15', 1, 'Advance Payment Receipt', 31, 0, NULL, 1, '2022-10-16 13:33:04'),
(30, 80000, '2021-10-18', 1, 'Phase 2 Payment Receipt', 32, 0, NULL, 1, '2022-10-16 13:36:25'),
(31, 14000, '2021-09-09', 1, 'ZYMES Bioscience  Phase 2 Payment Receipt ', 32, 0, NULL, 1, '2022-10-16 13:40:32'),
(32, 14000, '2021-11-09', 1, 'Phase 2 Payment Receipt ', 33, 0, NULL, 1, '2022-10-16 13:44:08'),
(33, 600000, '2021-11-15', 1, 'Advance Payment Receipt', 34, 0, NULL, 1, '2022-10-16 13:49:48'),
(34, 400000, '2021-12-31', 1, 'Advance Payment Receipt ', 35, 0, NULL, 1, '2022-10-16 13:56:45'),
(35, 27000, '2023-01-31', 1, 'App Dev Weekly Pay ', 38, 0, NULL, 1, '2023-01-31 12:22:45'),
(36, 27000, '2023-01-23', 1, 'App Deployment payment received.', 39, 0, NULL, 1, '2023-01-31 12:38:27'),
(37, 54000, '2023-02-06', 1, 'Advance Paid', 40, 0, NULL, 1, '2023-02-06 08:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `rise_items`
--

CREATE TABLE `rise_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_in_client_portal` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_items`
--

INSERT INTO `rise_items` (`id`, `title`, `description`, `unit_type`, `rate`, `files`, `show_in_client_portal`, `category_id`, `sort`, `deleted`) VALUES
(1, 'Admin Development ', '', '1', 1000, '', 0, 0, 0, 0),
(2, 'H20 App Development ', 'Instant Job placements Application', 'Apps', 500000, '', 0, 0, 0, 0),
(3, 'Website Development ', 'Static Website', 'Project', 8500, '', 0, 0, 0, 0),
(4, '11', '11', '1', 1, '', 0, 0, 0, 0),
(5, 'Website Hosting', 'Website Hosting service', 'Year', 0, '', 0, 0, 0, 0),
(6, 'Email ID', 'Emai ID Service ', 'Email', 0, '', 0, 0, 0, 0),
(7, 'SEO Friendly Compatible', 'The website will be compatible for SEO changes in the future.', 'Project', 0, '', 0, 0, 0, 0),
(8, 'Domain Registration', 'TheStardust.life', 'Domain', 800, '', 0, 0, 0, 0),
(9, 'Coming Soon Live Page ', '', 'Project', 3000, '', 0, 0, 0, 0),
(10, 'Mobile App Development', 'Student E- Learning Mobile App', 'App', 1100000, '', 0, 0, 0, 0),
(11, 'Extra Functionalities', '\r\nAdmin Panel\r\n\r\nInstructor Panel\r\n\r\nAPI Development \r\n\r\n\r\nStudent E- Learning Mobile App ', 'Extras', 550000, '', 0, 0, 0, 0),
(12, 'Extra Payment', 'Considering AI Payment transferred. (T.B.D.)', 'Software', 200000, '', 0, 0, 0, 0),
(13, 'Artificial Intelligence (A.I) Based Futuristic Line', 'Demo Stage with 3 factor segmentation. ', '', 210000, '', 0, 0, 0, 0),
(14, 'Puzzle Parking Software Development', 'Advance payment', '1', 11000, '', 0, 0, 0, 0),
(15, 'Digital Marketing', 'Save Merit Save Nation Project', '', 40000, '', 0, 0, 0, 0),
(16, 'Software Development ', '', '', 35000, '', 0, 0, 0, 0),
(17, 'Service As a Product', '', '', 5000, '', 0, 0, 0, 0),
(18, 'Backend Development ', 'Backend Development Resource ', 'weeks', 35000, '', 0, 0, 0, 0),
(19, 'Data Annotation Services ', '', '.Tiff Project Files', 10000, '', 0, 0, 0, 0),
(20, 'AI based Camaflouge louge Development ', 'Camouflage Patterns', '', 2500, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_item_categories`
--

CREATE TABLE `rise_item_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_item_categories`
--

INSERT INTO `rise_item_categories` (`id`, `title`, `deleted`) VALUES
(1, 'General item', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_labels`
--

CREATE TABLE `rise_labels` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `context` enum('event','invoice','note','project','task','ticket','to_do') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_labels`
--

INSERT INTO `rise_labels` (`id`, `title`, `color`, `context`, `user_id`, `deleted`) VALUES
(1, 'Done', '#83c340', 'project', 0, 0),
(2, 'In progress', '#e18a00', 'project', 0, 0),
(3, 'To do', '#e74c3c', 'project', 0, 0),
(4, 'edewd', '#f1c40f', 'note', 12, 0),
(5, 'Urgent', '#e74c3c', 'note', 1, 0),
(6, 'Free', '#83c340', 'note', 1, 0),
(7, 'Done', '#83c340', 'task', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_leads`
--

CREATE TABLE `rise_leads` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_lead_source`
--

CREATE TABLE `rise_lead_source` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_lead_source`
--

INSERT INTO `rise_lead_source` (`id`, `title`, `sort`, `deleted`) VALUES
(1, 'Google', 1, 0),
(2, 'Facebook', 2, 0),
(3, 'Twitter', 3, 0),
(4, 'Youtube', 4, 0),
(5, 'Elsewhere', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_lead_status`
--

CREATE TABLE `rise_lead_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_lead_status`
--

INSERT INTO `rise_lead_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Qualified', '#2d9cdb', 1, 0),
(3, 'Discussion', '#29c2c2', 2, 0),
(4, 'Negotiation', '#2d9cdb', 3, 0),
(5, 'Won', '#83c340', 4, 0),
(6, 'Lost', '#e74c3c', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_leave_applications`
--

CREATE TABLE `rise_leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_leave_applications`
--

INSERT INTO `rise_leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `files`, `deleted`) VALUES
(1, 1, '2022-05-05', '2022-05-05', 8.00, 1.00, 2, 'Hiii.', 'approved', '2022-05-02 13:07:01', 0, '2022-05-02 13:31:36', 1, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_leave_types`
--

CREATE TABLE `rise_leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_leave_types`
--

INSERT INTO `rise_leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#83c340', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_likes`
--

CREATE TABLE `rise_likes` (
  `id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_messages`
--

CREATE TABLE `rise_messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_messages`
--

INSERT INTO `rise_messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, 'hiii', 'hiii', '2022-04-22 12:54:54', 2, 1, 'read', 0, 0, 'a:0:{}', ''),
(2, '', 'hii', '2022-04-22 12:55:24', 1, 2, 'read', 1, 0, 'a:0:{}', ''),
(3, '', 'hii', '2022-04-22 12:55:51', 1, 2, 'read', 1, 0, 'a:0:{}', ''),
(4, 'Hii', 'Do your tasks asap', '2022-04-26 10:24:42', 1, 3, 'unread', 0, 0, 'a:0:{}', ''),
(5, 'Hii', 'Hello Rohit\r\nGood Morning,\r\n\r\nHope you are doing well', '2022-04-30 04:57:59', 2, 4, 'unread', 0, 0, 'a:0:{}', ''),
(6, '', 'hello', '2022-05-02 12:56:25', 1, 2, 'read', 1, 0, 'a:0:{}', ''),
(7, '', 'hows the work??', '2022-05-02 12:56:33', 1, 2, 'read', 1, 0, 'a:0:{}', ''),
(8, '', 'hiiii', '2022-05-02 12:57:12', 2, 1, 'read', 1, 0, 'a:0:{}', ''),
(9, '', 'Good', '2022-05-02 12:57:23', 2, 1, 'read', 1, 0, 'a:0:{}', ''),
(10, '', 'l', '2022-05-02 12:58:11', 1, 2, 'read', 1, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:38:\"message_file626fd563e9061-download.png\";s:9:\"file_size\";s:4:\"5669\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:32:\"message_file626fd563e95b2-11.PNG\";s:9:\"file_size\";s:5:\"61794\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(11, '', 'Logo', '2022-05-02 12:58:34', 2, 1, 'read', 1, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:62:\"message_file626fd57abf42c-_file625ab2dcc2693-site-logo--1-.png\";s:9:\"file_size\";s:4:\"5669\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(12, '', 'ok', '2022-05-02 12:58:37', 1, 2, 'read', 1, 0, 'a:0:{}', ''),
(13, 'Django', 'ai project send', '2022-05-07 07:22:22', 12, 14, 'read', 0, 0, 'a:0:{}', ''),
(14, 'django', 'hi\r\n', '2022-05-07 07:27:48', 20, 12, 'read', 0, 0, 'a:0:{}', ''),
(15, '', 'hyyy', '2022-05-07 11:56:29', 1, 2, 'read', 1, 0, 'a:0:{}', ''),
(16, 'link ', 'Hi bhakti pls update link in PMS', '2022-05-12 06:21:59', 1, 14, 'unread', 0, 0, 'a:0:{}', ''),
(17, 'Hii', 'hiiiiiiiiiiiii', '2022-05-30 13:18:41', 1, 4, 'unread', 0, 0, 'a:0:{}', ''),
(18, 'Test', 'hi', '2022-07-27 07:42:26', 1, 24, 'read', 0, 0, 'a:0:{}', ''),
(19, '', 'hello', '2022-07-27 08:51:38', 24, 1, 'unread', 18, 0, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `rise_milestones`
--

CREATE TABLE `rise_milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_milestones`
--

INSERT INTO `rise_milestones` (`id`, `title`, `project_id`, `due_date`, `description`, `deleted`) VALUES
(1, 'First Demo - Atul Done ', 3, '2022-05-28', 'The demo was for AI Tools made for Candi ', 1),
(2, 'weasd', 3, '2022-05-28', 'sdas', 1),
(3, 'avad', 3, '2022-05-27', 'dsad', 1),
(4, 'h20', 3, '2022-05-27', 'app testing by avdh', 1),
(5, 'Candi Source - Approval', 3, '2022-05-20', 'Atul Approved Website On 2022-05-20 18:36', 0),
(6, 'Candi AI - Final Logo', 3, '2022-05-16', 'Approved By Atul Jain On 16th May.', 0),
(7, 'Candi Source - Logo Approval', 3, '2022-04-07', 'Approved By Atul Jain on 7th April 2021', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_notes`
--

CREATE TABLE `rise_notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_notes`
--

INSERT INTO `rise_notes` (`id`, `created_by`, `created_at`, `title`, `description`, `project_id`, `client_id`, `user_id`, `labels`, `files`, `is_public`, `deleted`) VALUES
(1, 1, '2022-04-30 11:44:03', 'Meeting Reminder', 'Meeting ReminderMeeting ReminderMeeting ReminderMeeting Reminder', 0, 0, 0, '', 'a:0:{}', 0, 0),
(2, 12, '2022-05-07 07:08:46', 'django', 'django', 0, 0, 0, '', 'a:0:{}', 0, 1),
(3, 1, '2022-05-24 08:58:59', 'ffffff', 'ffffff', 0, 0, 0, '', 'a:0:{}', 0, 0),
(4, 1, '2022-05-24 17:26:58', 'sdfghk', 'cvbnm,.', 0, 0, 0, '', 'a:0:{}', 0, 0),
(5, 1, '2022-05-24 17:27:53', 'Atul meeting', 'Regarding candisource', 0, 0, 0, '5', 'a:0:{}', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_notifications`
--

CREATE TABLE `rise_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `estimate_comment_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_notifications`
--

INSERT INTO `rise_notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `lead_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `contract_id`, `order_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `proposal_id`, `estimate_comment_id`, `deleted`) VALUES
(1, 1, '', '2022-04-22 12:37:10', '', '', 'project_task_created', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 1, '', '2022-04-26 10:10:24', '3', '', 'project_member_added', 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 1, '', '2022-04-26 10:49:34', '4', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, '', '2022-04-26 10:49:41', '2,4', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, '', '2022-04-30 04:47:08', '2,4', '', 'project_task_created', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, '', '2022-04-30 04:51:54', '2', '', 'project_task_updated', 2, 2, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, '', '2022-05-01 16:23:49', '2,4', '', 'project_task_created', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 1, '', '2022-05-01 16:26:16', '2', ',2', 'project_task_assigned', 2, 3, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 1, '', '2022-05-02 13:29:42', '', '', 'project_task_created', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10, 1, '', '2022-05-02 13:31:36', '2', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 2, '', '2022-05-07 11:43:33', '5', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 2, '', '2022-05-07 11:44:40', '5', '', 'project_task_created', 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 2, '', '2022-05-07 11:45:22', '5', ',1', 'project_task_commented', 3, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 1, '', '2022-05-07 11:45:45', '', '', 'project_task_created', 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 1, '', '2022-05-07 11:50:58', '', '', 'project_task_created', 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 1, '', '2022-05-07 11:51:46', '11', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 1, '', '2022-05-07 11:51:46', '11,14', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 1, '', '2022-05-07 11:51:47', '11,14,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 1, '', '2022-05-07 11:51:47', '11,14,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 1, '', '2022-05-07 11:51:47', '11,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 1, '', '2022-05-07 11:51:48', '2,11,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, '', '2022-05-07 11:51:48', '2,13,11,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 1, '', '2022-05-07 11:51:48', '2,13,6,11,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 1, '', '2022-05-07 11:51:48', '2,13,6,7,11,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 1, '', '2022-05-07 11:51:49', '2,13,5,6,7,11,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 1, '', '2022-05-07 11:51:49', '2,13,5,6,7,11,12,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 1, '', '2022-05-07 11:51:49', '2,13,4,5,6,7,11,12,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 1, '', '2022-05-07 11:51:49', '2,13,4,5,6,7,9,11,12,14,16,17,18', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 1, '', '2022-05-07 11:51:49', '2,13,4,5,6,7,9,11,12,14,16,17,18,20', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 1, '', '2022-05-07 11:51:50', '2,13,4,5,6,7,9,11,12,14,16,17,18,19,20', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 1, '', '2022-05-07 11:51:50', '2,13,4,5,6,7,8,9,11,12,14,16,17,18,19,20', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, '', '2022-05-07 11:51:50', '2,13,4,5,6,7,8,9,11,12,14,15,16,17,18,19,20', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 1, '', '2022-05-07 11:51:50', '2,13,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20', '', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 1, '', '2022-05-07 12:56:07', '2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', '', 'project_customer_feedback_added', 4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 1, '', '2022-05-09 04:45:10', '2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', '', 'project_task_created', 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 1, '', '2022-05-09 04:46:28', '2,5', '', 'project_task_created', 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 1, '', '2022-05-09 05:07:40', '2,5,8', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 1, '', '2022-05-09 05:07:41', '2,5,8,11', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 1, '', '2022-05-09 05:07:41', '2,5,8,11,17', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 1, '', '2022-05-09 05:07:41', '2,5,8,11,17,19', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 1, '', '2022-05-09 05:07:41', '2,5,8,10,11,17,19', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 1, '', '2022-05-09 06:36:30', '2,4', '', 'project_task_created', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 1, '', '2022-05-09 06:37:50', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 1, '', '2022-05-09 06:38:10', '2,4', '', 'project_task_created', 2, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 1, '', '2022-05-09 06:41:32', '2', '', 'project_task_updated', 3, 11, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 1, '', '2022-05-09 06:59:54', '2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', '', 'project_task_created', 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 1, '', '2022-05-09 09:17:25', '2,4', '', 'project_task_created', 2, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 1, '', '2022-05-09 09:22:09', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 1, '', '2022-05-09 09:23:16', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 1, '', '2022-05-09 09:45:21', '2,4,11', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 1, '', '2022-05-09 09:45:21', '2,4,6,11', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 1, '', '2022-05-09 09:45:22', '2,4,6,11,16', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 1, '', '2022-05-09 09:45:22', '2,4,6,9,11,16', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 1, '', '2022-05-09 09:46:09', '2,4,6,9,11,16', '', 'project_task_created', 2, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 1, '', '2022-05-27 05:26:04', '2', '', 'project_task_updated', 2, 2, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 1, '', '2022-05-27 05:26:05', '2', '', 'project_task_updated', 2, 17, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 1, '', '2022-05-27 05:26:05', '2', '', 'project_task_updated', 2, 2, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 1, '', '2022-05-27 05:28:08', '2', '', 'project_task_updated', 2, 2, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 1, '', '2022-05-27 05:30:54', '2', '', 'project_task_updated', 2, 2, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 1, '', '2022-05-27 05:31:39', '2', '', 'project_task_updated', 3, 11, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 1, '', '2022-05-27 05:33:14', '2', '', 'project_task_updated', 3, 11, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 1, '', '2022-05-27 05:36:11', '2', '', 'project_task_updated', 3, 16, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 1, '', '2022-05-27 05:37:55', '2', '', 'project_task_updated', 3, 16, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 1, '', '2022-05-27 05:38:31', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 1, '', '2022-05-27 05:39:18', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 1, '', '2022-05-27 05:39:38', '5', '', 'project_task_updated', 3, 5, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 1, '', '2022-05-27 05:39:46', '5', '', 'project_task_updated', 3, 5, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 1, '', '2022-05-27 05:42:36', '2', '', 'project_task_updated', 3, 19, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 1, '', '2022-05-27 05:42:45', '2', '', 'project_task_updated', 3, 19, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 1, '', '2022-05-27 05:44:46', '2', '', 'project_task_updated', 3, 19, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 1, '', '2022-05-27 05:49:39', '2', '', 'project_task_updated', 3, 19, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 1, '', '2022-05-27 05:56:26', '2', '', 'project_task_updated', 3, 16, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 1, '', '2022-05-27 05:57:24', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 1, '', '2022-05-27 06:00:07', '', '', 'project_task_deleted', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 1, '', '2022-05-27 06:00:39', '2', '', 'project_task_deleted', 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 1, '', '2022-05-27 06:02:25', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 1, '', '2022-05-27 06:02:37', '', '', 'project_task_deleted', 3, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 1, '', '2022-05-27 06:11:16', '2', '', 'project_task_updated', 3, 15, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 1, '', '2022-05-27 07:17:23', '5', '', 'project_task_updated', 3, 5, 0, 0, 0, 0, 0, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 1, '', '2022-05-27 07:18:16', '5', '', 'project_task_updated', 3, 5, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 1, '', '2022-05-27 07:27:52', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 1, '', '2022-05-27 07:57:25', '', '', 'project_task_deleted', 3, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 1, '', '2022-05-27 08:02:26', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 1, '', '2022-05-27 11:18:44', '2,5,8,10,11,17,19', '', 'project_task_created', 3, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 1, '', '2022-05-27 11:24:09', '', '', 'project_task_updated', 3, 24, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 1, '', '2022-05-27 11:25:16', '', '', 'project_task_updated', 3, 23, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 1, '', '2022-06-10 09:31:04', '2,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20', '', 'project_task_created', 4, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 1, '', '2022-06-10 09:51:19', '2,23', '', 'project_task_created', 6, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 1, '', '2022-07-28 15:17:08', '2,4,9', '', 'project_task_created', 2, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 1, '', '2022-07-28 15:17:17', '2,4,9', '', 'project_task_created', 2, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 1, '', '2022-07-28 15:17:21', '2,4,9', '', 'project_task_created', 2, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_notification_settings`
--

CREATE TABLE `rise_notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `enable_slack` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rise_notification_settings`
--

INSERT INTO `rise_notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `enable_slack`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 0, 0, 0, '', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, 0, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, 0, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 0, 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, 0, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, 0, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, 0, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, 0, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, 0, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, 0, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, 0, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, 0, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, 0, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 0, 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, 0, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, 0, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, 0, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, 0, '', '', '', 32, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 0, 0, '', '', '', 36, 0),
(37, 'message_reply_sent', 'message', 0, 0, 0, '', '', '', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(39, 'new_event_added_in_calendar', 'event', 0, 0, 0, '', '', '', 39, 0),
(40, 'recurring_invoice_created_vai_cron_job', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(41, 'new_announcement_created', 'announcement', 0, 0, 0, '', '', 'recipient', 41, 0),
(42, 'invoice_due_reminder_before_due_date', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(43, 'invoice_overdue_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(44, 'recurring_invoice_creation_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(45, 'project_completed', 'project', 0, 0, 0, '', '', '', 2, 0),
(46, 'lead_created', 'lead', 0, 0, 0, '', '', '', 21, 0),
(47, 'client_created_from_lead', 'lead', 0, 0, 0, '', '', '', 21, 0),
(48, 'project_task_deadline_pre_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(49, 'project_task_reminder_on_the_day_of_deadline', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(50, 'project_task_deadline_overdue_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(51, 'recurring_task_created_via_cron_job', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 20, 0),
(52, 'calendar_event_modified', 'event', 0, 0, 0, '', '', '', 39, 0),
(53, 'client_contact_requested_account_removal', 'client', 0, 0, 0, '', '', '', 21, 0),
(54, 'bitbucket_push_received', 'project', 0, 1, 0, '', '', '', 45, 0),
(55, 'github_push_received', 'project', 0, 1, 0, '', '', '', 45, 0),
(56, 'invited_client_contact_signed_up', 'client', 0, 0, 0, '', '', '', 21, 0),
(57, 'created_a_new_post', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(58, 'timeline_post_commented', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(59, 'ticket_assigned', 'ticket', 0, 0, 0, '', '', 'ticket_assignee', 31, 0),
(60, 'new_order_received', 'order', 0, 0, 0, '', '', '', 1, 0),
(61, 'order_status_updated', 'order', 0, 0, 0, '', '', '', 2, 0),
(62, 'proposal_accepted', 'proposal', 0, 0, 0, '', '', '', 34, 0),
(63, 'proposal_rejected', 'proposal', 0, 0, 0, '', '', '', 35, 0),
(64, 'estimate_commented', 'estimate', 0, 0, 0, '', '', '', 35, 0),
(65, 'invoice_manual_payment_added', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(66, 'contract_accepted', 'contract', 0, 0, 0, '', '', '', 66, 0),
(67, 'contract_rejected', 'contract', 0, 0, 0, '', '', '', 67, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_orders`
--

CREATE TABLE `rise_orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `status_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_orders`
--

INSERT INTO `rise_orders` (`id`, `client_id`, `order_date`, `note`, `status_id`, `tax_id`, `tax_id2`, `discount_amount`, `discount_amount_type`, `discount_type`, `created_by`, `project_id`, `files`, `company_id`, `deleted`) VALUES
(1, 5, '2022-05-07', 'zxcvbnm,', 1, 0, 0, 0, 'percentage', 'before_tax', 1, 0, 'a:0:{}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_order_items`
--

CREATE TABLE `rise_order_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_order_items`
--

INSERT INTO `rise_order_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `order_id`, `created_by`, `item_id`, `sort`, `deleted`) VALUES
(1, 'Admin Development ', NULL, 1, '1', 1000, 1000, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_order_status`
--

CREATE TABLE `rise_order_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_order_status`
--

INSERT INTO `rise_order_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Processing', '#29c2c2', 1, 0),
(3, 'Confirmed', '#83c340', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_pages`
--

CREATE TABLE `rise_pages` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `slug` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `internal_use_only` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_team_members_only` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_clients_only` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_payment_methods`
--

CREATE TABLE `rise_payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_payment_methods`
--

INSERT INTO `rise_payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `sort`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0, 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0, 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0, 0),
(4, 'Paytm', 'paytm', 'Paytm online payments', 1, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_paypal_ipn`
--

CREATE TABLE `rise_paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_pin_comments`
--

CREATE TABLE `rise_pin_comments` (
  `id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `pinned_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_posts`
--

CREATE TABLE `rise_posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_posts`
--

INSERT INTO `rise_posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 2, '2022-05-02 12:59:51', 'Kavita Timeline', 0, '', 'a:0:{}', 0),
(2, 1, '2022-05-02 13:03:15', 'okkkkkkkkkkkkkkk', 1, '', 'a:0:{}', 0),
(3, 2, '2022-05-02 13:03:24', 'Hi', 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:64:\"timeline_post_file626fd69ce139d-_file625ab2dcc2693-site-logo.png\";s:9:\"file_size\";s:4:\"5669\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(4, 1, '2022-05-02 13:14:04', 'Manager', 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:76:\"timeline_post_file626fd91c7becf-WhatsApp-Image-2022-05-02-at-6.36.06-PM.jpeg\";s:9:\"file_size\";s:5:\"80505\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1),
(5, 2, '2022-05-02 13:16:22', 'Nice\r\n', 4, '', 'a:0:{}', 0),
(6, 1, '2022-05-02 13:17:20', 'wah!', 4, '', 'a:0:{}', 0),
(7, 8, '2022-05-07 07:16:19', 'wah!', 4, '', 'a:0:{}', 0),
(8, 12, '2022-05-07 07:18:44', 'Raj', 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:42:\"timeline_post_file62761d544ccc8-django.png\";s:9:\"file_size\";s:6:\"104843\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_projects`
--

CREATE TABLE `rise_projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `status` enum('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_projects`
--

INSERT INTO `rise_projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `labels`, `price`, `starred_by`, `estimate_id`, `order_id`, `deleted`) VALUES
(1, 'PMS', 'PMS Checking.', '2022-04-23', '2022-04-24', 1, '2022-04-22', 1, 'open', '', 5000, '', 0, 0, 1),
(2, 'MED ED - Elearning', 'MED ED - Elearning', NULL, '2022-05-02', 3, '2022-04-26', 1, 'open', '', 0, '', 0, 0, 0),
(3, 'Candi', 'Candi Source Website', '2021-09-10', '2022-05-07', 4, '2022-05-07', 2, 'completed', '2', 0, ',:1:', 0, 0, 0),
(4, 'Solicitous Main ', 'All company tasks related to Solicitous entity..', '2022-05-07', '2022-06-07', 1, '2022-05-07', 1, 'open', '', 0, '', 0, 0, 0),
(5, 'Stardust Website', 'Static page', '2022-05-18', '2022-05-20', 7, '2022-05-18', 1, 'open', '', 0, '', 0, 0, 0),
(6, 'H2O - Hiring Equals Opportunity', 'H2O - Hiring Equals Opportunity\r\nFlutter Apps + Admin Panel', '2022-05-01', '2022-06-05', 3, '2022-05-30', 1, 'open', '2', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_project_comments`
--

CREATE TABLE `rise_project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_project_comments`
--

INSERT INTO `rise_project_comments` (`id`, `created_by`, `created_at`, `description`, `project_id`, `comment_id`, `task_id`, `file_id`, `customer_feedback_id`, `files`, `deleted`) VALUES
(1, 2, '2022-05-07 11:45:22', 'Any Update', 3, 0, 5, 0, 0, 'a:0:{}', 0),
(2, 1, '2022-05-07 12:56:07', 'sdfghjkl;\'', 4, 0, 0, 0, 4, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_project_files`
--

CREATE TABLE `rise_project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_project_members`
--

CREATE TABLE `rise_project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_project_members`
--

INSERT INTO `rise_project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 1, 1, 1, 0),
(2, 3, 1, 0, 0),
(3, 1, 2, 1, 0),
(4, 4, 2, 0, 0),
(5, 2, 2, 0, 0),
(6, 2, 3, 1, 0),
(7, 5, 3, 0, 0),
(8, 1, 4, 1, 0),
(9, 11, 4, 0, 0),
(10, 14, 4, 0, 0),
(11, 18, 4, 0, 0),
(12, 17, 4, 0, 0),
(13, 16, 4, 0, 0),
(14, 2, 4, 0, 0),
(15, 13, 4, 0, 0),
(16, 6, 4, 0, 0),
(17, 7, 4, 0, 0),
(18, 5, 4, 0, 0),
(19, 12, 4, 0, 0),
(20, 4, 4, 0, 0),
(21, 9, 4, 0, 0),
(22, 20, 4, 0, 0),
(23, 19, 4, 0, 0),
(24, 8, 4, 0, 0),
(25, 15, 4, 0, 0),
(26, 10, 4, 0, 0),
(27, 8, 3, 0, 0),
(28, 11, 3, 0, 0),
(29, 17, 3, 0, 0),
(30, 19, 3, 0, 0),
(31, 10, 3, 0, 0),
(32, 11, 2, 0, 0),
(33, 6, 2, 0, 0),
(34, 16, 2, 0, 0),
(35, 9, 2, 0, 0),
(36, 1, 5, 1, 0),
(37, 1, 6, 1, 0),
(38, 23, 6, 0, 0),
(39, 2, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_project_settings`
--

CREATE TABLE `rise_project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_project_settings`
--

INSERT INTO `rise_project_settings` (`project_id`, `setting_name`, `setting_value`, `deleted`) VALUES
(3, 'client_can_view_timesheet', '', 0),
(3, 'project_enable_slack', '', 0),
(3, 'project_slack_webhook_url', '', 0),
(3, 'remove_task_statuses', '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_project_time`
--

CREATE TABLE `rise_project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` float NOT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_project_time`
--

INSERT INTO `rise_project_time` (`id`, `project_id`, `user_id`, `start_time`, `end_time`, `hours`, `status`, `note`, `task_id`, `deleted`) VALUES
(1, 1, 1, '2022-04-22 12:37:24', '2022-04-22 12:37:31', 0, 'logged', '', 1, 0),
(2, 2, 1, '2022-05-01 16:26:25', '2022-05-01 16:26:38', 0, 'logged', 'Okay 1st phase', 3, 0),
(3, 3, 1, '2022-05-27 05:04:19', NULL, 0, 'open', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_proposals`
--

CREATE TABLE `rise_proposals` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `proposal_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `public_key` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `accepted_by` int(11) NOT NULL DEFAULT '0',
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_proposals`
--

INSERT INTO `rise_proposals` (`id`, `client_id`, `proposal_date`, `valid_until`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `discount_type`, `discount_amount`, `discount_amount_type`, `content`, `public_key`, `accepted_by`, `meta_data`, `company_id`, `deleted`) VALUES
(1, 6, '2022-05-18', '2022-05-25', '', NULL, 'draft', 0, 0, 'before_tax', 0, 'percentage', '<div style=\"display: flex; flex-direction: column;\"><br>We are excited to get to work on your new website, and we want to make sure you are satisfied with our proposal and have a full understanding of what to expect in this lengthy process. Creating a website is exciting and our expert team is fully capable of giving you something unique that will help grow your business.<table style=\"margin-top: 0; margin-bottom: 40px\"><tbody>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"text-align: center\">\n         <div style=\"font-size: 30px\">{PROPOSAL_ID}</div>\n         <div style=\"height: 3px;\n  width: 80px;\n  background-color: #2AA384;\n  margin: 25px auto 20px;\"></div>\n         <div style=\"margin-bottom: 20px;\"><div style=\"text-align: center;\">Proposal Date:&nbsp;<span style=\"text-align: start;\">{PROPOSAL_DATE}&nbsp;</span></div><div style=\"text-align: center;\"><span style=\"text-align: start;\">Expiry Date:&nbsp;&nbsp;{PROPOSAL_EXPIRY_DATE}</span></div><div style=\"text-align: left;\"><br></div></div>\n     </div>\n     <div style=\"clear: both;\">\n         <div style=\"width: 50%; float: left;  padding-right: 10px\">\n \n <p><i>Proposal For</i></p>\n <br>\n {PROPOSAL_TO_INFO}\n         </div>\n\n         <div style=\"width: 50%; float: left; padding-left: 10px\">\n \n <p><i>Proposal From</i></p>\n <br>\n {COMPANY_INFO}\n         </div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"margin-top: 20px\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Our Best Offer</div>\n <div style=\"height: 3px; width: 80px; background-color: #2AA384; margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\">We would like to develop a mobile app for your business. <br>Please feel free to contact us if you have any questions.</div>\n         </div>\n\n         <p>\n {PROPOSAL_ITEMS}\n         </p>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <br>{PROPOSAL_NOTE}\n\n</div>', 'jdrxqrYnUq', 0, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_proposal_items`
--

CREATE TABLE `rise_proposal_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `proposal_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_proposal_items`
--

INSERT INTO `rise_proposal_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `sort`, `proposal_id`, `deleted`) VALUES
(1, 'Website Development ', 'Static Website', 1, 'Project', 8500, 8500, 0, 1, 0),
(2, '11', '11', 1, '1', 1, 1, 0, 1, 1),
(3, 'Website Hosting', 'Website Hosting service', 1, 'Year', 0, 0, 0, 1, 0),
(4, 'Email ID', 'Emai ID Service ', 1, 'Email', 0, 0, 0, 1, 0),
(5, 'SEO Friendly Compatible', 'The website will be compatible for SEO changes in the future.', 1, 'Project', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_proposal_templates`
--

CREATE TABLE `rise_proposal_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `template` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_proposal_templates`
--

INSERT INTO `rise_proposal_templates` (`id`, `title`, `template`, `deleted`) VALUES
(1, 'Proposal template 1', '<div style=\"display: flex; flex-direction: column;\">\n\n <table style=\"margin-top: 0; margin-bottom: 40px\">\n <tbody>\n <tr>\n <td style=\"padding: 0;\">\n <div style=\"background-size: cover; background-position: center top; background-image: url(\'https://fairsketch.com/media/proposal/bg-2.png\'); padding: 140px 10px 100px;\">\n <div style=\"color:#FFFFFF;font-size:50px;line-height:62px !important;font-weight:600;letter-spacing:0px; text-align: center;\">App Development<br>Proposal</div>\n <div style=\"color: #FFFFFF;\n font-size: 15px;\n text-align: center;\n  padding-top: 30px;\">We develop amazing apps for your business. <br>Here is our best offer for you.</div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>We are excited to get to work on your new mobile app, and we want to make sure you are satisfied with our proposal and have a full understanding of what to expect in this lengthy process. Creating a mobile app is exciting and our expert team is fully capable of giving you something unique that will help grow your business.<table style=\"margin-top: 0; margin-bottom: 40px\"><tbody>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"text-align: center\">\n         <div style=\"font-size: 30px\">{PROPOSAL_ID}</div>\n         <div style=\"height: 3px;\n  width: 80px;\n  background-color: #2AA384;\n  margin: 25px auto 20px;\"></div>\n         <div style=\"margin-bottom: 20px;\"><div style=\"text-align: center;\">Proposal Date:&nbsp;<span style=\"text-align: start;\">{PROPOSAL_DATE}&nbsp;</span></div><div style=\"text-align: center;\"><span style=\"text-align: start;\">Expiry Date:&nbsp;&nbsp;{PROPOSAL_EXPIRY_DATE}</span></div><div style=\"text-align: left;\"><br></div></div>\n     </div>\n     <div style=\"clear: both;\">\n         <div style=\"width: 50%; float: left;  padding-right: 10px\">\n <img src=\"https://fairsketch.com/media/proposal/proposal-to.png\" style=\"width: 100%; margin-bottom: 15px\">\n <p><i>Proposal For</i></p>\n <br>\n {PROPOSAL_TO_INFO}\n         </div>\n\n         <div style=\"width: 50%; float: left; padding-left: 10px\">\n <img src=\"https://fairsketch.com/media/proposal/proposal-from.png\" style=\"width: 100%; margin-bottom: 15px\">\n <p><i>Proposal From</i></p>\n <br>\n {COMPANY_INFO}\n         </div>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n     <div style=\"margin-top: 20px\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Our Best Offer</div>\n <div style=\"height: 3px; width: 80px; background-color: #2AA384; margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\">We would like to develop a mobile app for your business. <br>Please feel free to contact us if you have any questions.</div>\n         </div>\n\n         <p>\n {PROPOSAL_ITEMS}\n         </p>\n     </div>\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 60px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Our Objective</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\">We build professional apps for business. Customer satisfaction is our main goal.&nbsp;</div><div style=\"margin-bottom: 20px;\"><br></div>\n         </div>\n\n         <div style=\"clear: both;\">\n <div style=\"width: 50%; float: left;  padding-right: 10px\">\n  <img src=\"https://fairsketch.com/media/proposal/phone-picture.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n\n <div style=\"width: 50%; float: left; padding-left: 10px\">\n  <div style=\"font-size:18px;line-height:28px;font-weight:600;letter-spacing:0px;padding:0;padding-bottom:20px; padding-top: 80px;\">\n      We Provide High Quality and Cost Effective Services.\n  </div>\n  <div style=\"font-size:15px;line-height:28px;letter-spacing:0px;padding:0;padding-bottom:30px;\">Our app development process contains different levels of testing. We can confirm you the largest amount of device support guaranty.</div>\n  <div>Work with us.</div>\n  <div style=\"font-size: 15px; color:  #2AA384; padding-top: 5px;\">Be a part of our happy customers.</div><div style=\"font-size: 15px; color:  #2AA384; padding-top: 5px;\"><br></div><div style=\"font-size: 15px; color:  #2AA384; padding-top: 5px;\"><br></div><br></div>\n         </div>\n     </div>\n\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Our Portfolio</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\">Some of our previous work here</div>\n         </div>\n\n         <div style=\"clear: both; margin: 0 -10px;\">\n <div style=\"width: 33.33%; float: left;  padding: 0 10px; margin-bottom: 20px\">\n  <img src=\"https://fairsketch.com/media/proposal/portfolio-1.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n <div style=\"width: 33.33%; float: left; padding: 0 10px; margin-bottom: 20px\">\n  <img src=\"https://fairsketch.com/media/proposal/portfolio-2.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n <div style=\"width: 33.33%; float: left;  padding: 0 10px; margin-bottom: 20px\">\n  <img src=\"https://fairsketch.com/media/proposal/portfolio-3.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n         </div>\n         <div style=\"clear: both; margin: 0 -10px;\">\n <div style=\"width: 33.33%; float: left;  padding: 0 10px; margin-bottom: 20px\">\n  <img src=\"https://fairsketch.com/media/proposal/portfolio-4.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n <div style=\"width: 33.33%; float: left; padding: 0 10px; margin-bottom: 20px\">\n  <img src=\"https://fairsketch.com/media/proposal/portfolio-5.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n <div style=\"width: 33.33%; float: left;  padding: 0 10px; margin-bottom: 20px\">\n  <img src=\"https://fairsketch.com/media/proposal/portfolio-6.png\" style=\"    display: block; border: 0;\n       width: 100%;\n       max-width: 290px;\">\n </div>\n         </div>\n\n     </div>\n\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    <table style=\"margin-top: 0; margin-bottom: 40px\">\n        <tbody>\n  <tr>\n <td style=\"padding: 0;\">\n\n     <div style=\"\">\n         <div style=\"text-align: center\">\n <div style=\"font-size: 30px\">Contact Us</div>\n <div style=\"height: 3px;\n   width: 80px;\n   background-color: #2AA384;\n   margin: 25px auto 20px;\"></div>\n <div style=\"margin-bottom: 20px;\"></div>\n         </div>\n\n         <p style=\"text-align: center; margin-bottom: 20px;\">We are looking forward working with you. Please feel free to contact us.&nbsp;</p><p style=\"text-align: center; margin-bottom: 20px;\"><br></p>\n         <div style=\"text-align: center;\"><img src=\"https://fairsketch.com/media/proposal/bg-1.png\" style=\"width: 100%;\"></div></div>\n\n </td>\n  </tr>\n        </tbody>\n    </table>\n\n    {PROPOSAL_NOTE}\n\n</div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_roles`
--

CREATE TABLE `rise_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_roles`
--

INSERT INTO `rise_roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Manager', 'a:50:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:8:\"contract\";s:0:\"\";s:8:\"proposal\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:0:\"\";s:15:\"client_specific\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:20:\"do_not_show_projects\";N;s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";s:1:\"1\";s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";s:26:\"job_info_manage_permission\";s:0:\"\";s:32:\"can_manage_all_kinds_of_settings\";N;s:36:\"can_manage_user_role_and_permissions\";s:0:\"\";s:34:\"can_add_or_invite_new_team_members\";s:1:\"1\";s:19:\"timeline_permission\";s:8:\"specific\";s:28:\"timeline_permission_specific\";s:172:\"member:20,member:8,member:9,member:10,member:11,member:7,member:13,member:12,member:14,member:16,member:15,member:18,member:6,member:19,member:17,member:5,member:4,member:2\";}', 0),
(2, 'User', NULL, 0),
(3, 'Human Resource', 'a:50:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:8:\"contract\";s:0:\"\";s:8:\"proposal\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:0:\"\";s:15:\"client_specific\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:20:\"do_not_show_projects\";N;s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:2:\"no\";s:27:\"message_permission_specific\";s:0:\"\";s:26:\"job_info_manage_permission\";s:0:\"\";s:32:\"can_manage_all_kinds_of_settings\";N;s:36:\"can_manage_user_role_and_permissions\";s:0:\"\";s:34:\"can_add_or_invite_new_team_members\";s:1:\"1\";s:19:\"timeline_permission\";s:0:\"\";s:28:\"timeline_permission_specific\";s:0:\"\";}', 0),
(4, 'Client ', 'a:50:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:8:\"contract\";s:0:\"\";s:8:\"proposal\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:0:\"\";s:15:\"client_specific\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:0:\"\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:20:\"do_not_show_projects\";s:1:\"1\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";s:1:\"1\";s:22:\"hide_team_members_list\";s:1:\"1\";s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:2:\"no\";s:27:\"message_permission_specific\";s:0:\"\";s:26:\"job_info_manage_permission\";s:0:\"\";s:32:\"can_manage_all_kinds_of_settings\";N;s:36:\"can_manage_user_role_and_permissions\";s:0:\"\";s:34:\"can_add_or_invite_new_team_members\";N;s:19:\"timeline_permission\";s:2:\"no\";s:28:\"timeline_permission_specific\";s:0:\"\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_settings`
--

CREATE TABLE `rise_settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_settings`
--

INSERT INTO `rise_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('accepted_file_formats', 'jpg,jpeg,png,doc,xlsx,txt,pdf,zip', 'app', 0),
('allow_partial_invoice_payment_from_clients', '1', 'app', 0),
('allowed_ip_addresses', '', 'app', 0),
('app_title', 'Solicitous - Solimatix Project Manager and CRM', 'app', 0),
('client_can_pay_invoice_without_login', '1', 'app', 0),
('conversion_rate', 'a:0:{}', 'app', 0),
('create_recurring_tasks_before', '', 'app', 0),
('currency_position', 'left', 'app', 0),
('currency_symbol', '₹', 'app', 0),
('date_format', 'd/m/Y', 'app', 0),
('decimal_separator', '.', 'app', 0),
('default_contract_template', '1', 'app', 0),
('default_currency', 'INR', 'app', 0),
('default_due_date_after_billing_date', '', 'app', 0),
('default_proposal_template', '1', 'app', 0),
('default_theme_color', '2471a3', 'app', 0),
('email_protocol', '', 'app', 0),
('email_sent_from_address', 's', 'app', 0),
('email_sent_from_name', 'Solicitous Business Solutions', 'app', 0),
('email_smtp_host', '', 'app', 0),
('email_smtp_pass', '2ce9f5645f876781e8e88cea138f1a5c866b544bff4a24c10d4c872dd1d1b58e334828a7945bb667e0b528d0cf043cc06ff2b1493577ad9fddd92ddda76c80590d72d09ce64d78171f11db47f7d66666f34adfb53b5e56d4ea895738d4de22', 'app', 0),
('email_smtp_port', '', 'app', 0),
('email_smtp_security_type', 'none', 'app', 0),
('email_smtp_user', '', 'app', 0),
('enable_recurring_option_for_tasks', '1', 'app', 0),
('enable_rich_text_editor', '0', 'app', 0),
('favicon', 'a:1:{s:9:\"file_name\";s:30:\"_file625ab28ea1378-favicon.png\";}', 'app', 0),
('first_day_of_week', '1', 'app', 0),
('initial_number_of_the_invoice', '48', 'app', 0),
('invoice_color', '#00178a', 'app', 0),
('invoice_footer', '<p><a href=\"https://main.solicitous.cloud/pms/files/timeline_files/pasted_image_file63d90f51171ce-image_UVzlD.png\" class=\"mfp-image\" data-title=\"image_UVzlD.png\" style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><img src=\"https://main.solicitous.cloud/pms/files/timeline_files/pasted_image_file63d90f51171ce-image_UVzlD.png\" alt=\"pasted_image_file63d90f51171ce-image_UVzlD.png\" style=\"width: 159.598px; height: 148.847px;\"></a><br></p><p><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Solicitous Business Solutions Pvt. Ltd.</span></p>', 'app', 0),
('invoice_logo', 'a:1:{s:9:\"file_name\";s:35:\"_file651a6ffd01f0c-invoice-logo.png\";}', 'app', 0),
('invoice_prefix', '', 'app', 0),
('invoice_style', 'style_1', 'app', 0),
('item_purchase_code', '123456', 'app', 0),
('language', 'english', 'app', 0),
('module_announcement', '1', 'app', 0),
('module_attendance', '1', 'app', 0),
('module_chat', '1', 'app', 0),
('module_contract', '1', 'app', 0),
('module_estimate', '1', 'app', 0),
('module_estimate_request', '1', 'app', 0),
('module_event', '1', 'app', 0),
('module_expense', '1', 'app', 0),
('module_gantt', '1', 'app', 0),
('module_help', '1', 'app', 0),
('module_invoice', '1', 'app', 0),
('module_knowledge_base', '1', 'app', 0),
('module_lead', '1', 'app', 0),
('module_leave', '1', 'app', 0),
('module_message', '1', 'app', 0),
('module_note', '1', 'app', 0),
('module_order', '1', 'app', 0),
('module_project_timesheet', '1', 'app', 0),
('module_proposal', '1', 'app', 0),
('module_ticket', '1', 'app', 0),
('module_timeline', '1', 'app', 0),
('module_todo', '1', 'app', 0),
('no_of_decimals', '2', 'app', 0),
('project_task_deadline_overdue_reminder', '1', 'app', 0),
('project_task_deadline_pre_reminder', '1', 'app', 0),
('project_task_reminder_on_the_day_of_deadline', '1', 'app', 0),
('rows_per_page', '10', 'app', 0),
('rtl', '0', 'app', 0),
('scrollbar', 'jquery', 'app', 0),
('send_bcc_to', 'info.solicitousbusiness@gmail.com', 'app', 0),
('send_invoice_due_after_reminder', '', 'app', 0),
('send_invoice_due_pre_reminder', '', 'app', 0),
('send_recurring_invoice_reminder_before_creation', '', 'app', 0),
('show_background_image_in_signin_page', 'no', 'app', 0),
('show_in_kanban', 'id,project_name,client_name', 'app', 0),
('show_logo_in_signin_page', 'yes', 'app', 0),
('show_theme_color_changer', 'yes', 'app', 0),
('signin_page_background', 'a:4:{s:9:\"file_name\";s:36:\"system_file63d90a30ef5df-Logo-01.png\";s:9:\"file_size\";s:6:\"544077\";s:7:\"file_id\";N;s:12:\"service_type\";N;}', 'app', 0),
('site_logo', 'a:1:{s:9:\"file_name\";s:32:\"_file63d90a30e8857-site-logo.png\";}', 'app', 0),
('task_point_range', '5', 'app', 0),
('time_format', 'small', 'app', 0),
('timezone', 'Asia/Kolkata', 'app', 0),
('user_1_dashboard', '', 'user', 0),
('user_1_personal_language', 'english', 'user', 0),
('user_11_dashboard', '', 'user', 0),
('user_12_dashboard', '', 'user', 0),
('user_14_dashboard', '', 'user', 0),
('user_14_personal_language', 'english', 'user', 0),
('user_15_dashboard', '', 'user', 0),
('user_16_dashboard', '', 'user', 0),
('user_17_dashboard', '', 'user', 0),
('user_19_dashboard', '', 'user', 0),
('user_2_dashboard', '', 'user', 0),
('user_2_personal_language', 'english', 'user', 0),
('user_20_dashboard', '', 'user', 0),
('user_21_dashboard', '', 'user', 0),
('user_24_dashboard', '', 'user', 0),
('user_4_dashboard', '', 'user', 0),
('user_5_dashboard', '', 'user', 0),
('user_7_dashboard', '', 'user', 0),
('user_8_dashboard', '', 'user', 0),
('user_9_dashboard', '', 'user', 0),
('weekends', '', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_social_links`
--

CREATE TABLE `rise_social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `whatsapp` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_stripe_ipn`
--

CREATE TABLE `rise_stripe_ipn` (
  `id` int(11) NOT NULL,
  `payment_intent` text COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_tasks`
--

CREATE TABLE `rise_tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `recurring_task_id` int(11) NOT NULL DEFAULT '0',
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `blocking` text COLLATE utf8_unicode_ci NOT NULL,
  `blocked_by` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_task_id` int(11) NOT NULL,
  `next_recurring_date` date DEFAULT NULL,
  `reminder_date` date NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `status_changed_at` datetime DEFAULT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_tasks`
--

INSERT INTO `rise_tasks` (`id`, `title`, `description`, `project_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `points`, `status`, `status_id`, `priority_id`, `start_date`, `collaborators`, `sort`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `recurring_task_id`, `no_of_cycles_completed`, `created_date`, `blocking`, `blocked_by`, `parent_task_id`, `next_recurring_date`, `reminder_date`, `ticket_id`, `status_changed_at`, `deleted`) VALUES
(1, 'Namrata', 'Namrata', 1, 0, 1, NULL, '', 4, 'to_do', 3, 0, NULL, '1', 0, 0, 0, '', 0, 0, 0, '2022-04-22', '', '', 0, NULL, '0000-00-00', 0, '2022-04-30 04:48:29', 1),
(2, 'Instructor Panel Checking', 'All features need to be checked', 2, 0, 2, '2022-04-28', '', 1, 'to_do', 1, 3, '2022-04-01', '1', 10100000, 0, 0, '', 0, 0, 0, '2022-04-30', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 05:30:54', 0),
(3, 'Hello', 'Test', 2, 0, 2, NULL, '', 1, 'to_do', 1, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(4, 'Brain Tumor Detection ', 'Complete Brain Tumor Detection in flask technology. Images with their names and mathematical factors respectively.', 1, 0, 0, NULL, '', 1, 'to_do', 1, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-02', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(5, 'CandiSource Website - Approval', 'CandiSource Website changes needs to be done', 3, 5, 5, '2022-05-20', '7', 1, 'to_do', 3, 2, '2022-05-13', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-07', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 07:35:30', 0),
(6, 'PMS System ', 'Register all employees on the PMS system so all daily tasks will be done on the system itself.', 4, 0, 0, '2022-05-20', '', 1, 'to_do', 1, 0, '2022-05-12', '', 0, 0, 0, '', 0, 0, 0, '2022-05-07', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(7, 'PMS System', 'Register all employees to the PMS System.', 4, 0, 0, '2022-05-10', '', 1, 'to_do', 1, 0, '2022-05-07', '', 0, 0, 0, '', 0, 0, 0, '2022-05-07', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(8, 'Update Schema in AI website', 'Needs to be done Update Schema in AI website', 4, 0, 12, '2022-05-09', '', 1, 'to_do', 1, 2, '2022-05-05', '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(9, 'Candi Source Website', 'Needs to be done Candi Source Website ', 3, 0, 5, NULL, '', 1, 'to_do', 3, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 08:03:43', 0),
(10, 'Med Ed - Testing', 'Needs to be done Med Ed - Testing', 2, 0, 4, '2022-05-09', '', 1, 'to_do', 1, 3, '2022-05-05', '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-07-28 04:30:26', 0),
(11, 'Med Ed - Testing', 'Needs to be done Med Ed - Testing', 3, 0, 2, '2022-05-14', '', 1, 'to_do', 3, 0, '2022-04-30', '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 07:35:24', 0),
(12, 'Needs to be done Med Ed - Testing', 'Needs to be done Med Ed - Testing', 2, 0, 0, NULL, '', 1, 'to_do', 1, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(13, 'Ebusiness website convert into Django', 'Needs to Ebusiness website convert into Django', 4, 0, 14, '2022-05-09', '', 1, 'to_do', 3, 2, '2022-05-08', '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-11 09:42:55', 0),
(14, 'dfvd', 'dfdvdf', 2, 0, 2, NULL, '', 1, 'to_do', 3, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 06:14:19', 0),
(15, 'xy', 'xy', 3, 1, 2, '2022-05-11', '', 1, 'to_do', 3, 3, '2022-05-02', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 06:14:13', 0),
(16, 'xyz', 'xyz', 3, 1, 2, '2022-05-09', '', 1, 'to_do', 2, 0, '2022-05-02', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-09 09:25:59', 1),
(17, 'Instructor Panel Checking', 'All features need to be checked', 2, 0, 2, '2022-04-28', '', 1, 'to_do', 3, 3, '2022-04-01', '1,6,9,16', 10000000, 0, 0, '', 0, 0, 0, '2022-05-09', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 06:14:17', 0),
(18, 'test avd', 'avd', 3, 1, 2, NULL, '', 1, 'to_do', 3, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 05:54:34', 0),
(19, 'test avd', 'avd', 3, 0, 2, '2022-05-26', '', 4, 'to_do', 3, 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 05:54:29', 0),
(20, 'testing', 'ava', 3, 1, 1, NULL, '', 1, 'to_do', 2, 0, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 05:58:55', 1),
(21, 'asxsa', 'xs', 3, 4, 1, NULL, '', 1, 'to_do', 1, 0, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(22, 'deepti h2o', '', 3, 4, 1, NULL, '', 1, 'to_do', 1, 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(23, 'Candi Ai Logo - Finalization', 'Approved By Atul Jain on 16th May 2022', 3, 6, 1, '2022-05-16', '7', 1, 'to_do', 1, 0, '2022-05-10', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 11:27:53', 0),
(24, 'Candisource Logo - finalization', 'Logo Approved By Atul Jain', 3, 7, 1, '2022-04-07', '7', 1, 'to_do', 3, 0, '2022-03-30', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-27', '', '', 0, NULL, '0000-00-00', 0, '2022-05-27 11:24:35', 0),
(25, 'App Changes - Home Service & Service Provider', 'Changes sent on WhatsApp needs to be done', 6, 0, 1, '2022-05-31', '', 1, 'to_do', 1, 3, '2022-05-26', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-30', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(26, 'nbhjb ', 'bhbhbhb', 4, 0, 18, '2022-05-22', '', 1, 'to_do', 1, 0, '2022-05-19', '', 0, 0, 1, 'months', 0, 0, 0, '2022-05-30', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(27, 'kkkk', 'swndwniuehdu', 4, 0, 17, '2022-07-01', '', 1, 'to_do', 1, 3, '2022-06-16', '18', 0, 0, 1, 'months', 0, 0, 0, '2022-06-10', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(28, 'testing 06 task', 'task description', 6, 0, 0, '2022-06-10', '7', 2, 'to_do', 4, 3, '2022-06-10', '2', 0, 1, 1, 'months', 0, 0, 0, '2022-06-10', '', '', 0, '2022-07-10', '0000-00-00', 0, NULL, 0),
(29, 'Hhh', NULL, 2, 0, 1, NULL, NULL, 1, 'to_do', 1, 0, NULL, '', 0, 0, 0, NULL, 0, 0, 0, '2022-07-28', '', '', 2, NULL, '0000-00-00', 0, '2022-07-28 15:17:56', 0),
(30, 'Jsjsjm', NULL, 2, 0, 1, NULL, NULL, 1, 'to_do', 1, 0, NULL, '', 0, 0, 0, NULL, 0, 0, 0, '2022-07-28', '', '', 2, NULL, '0000-00-00', 0, NULL, 0),
(31, 'Bsjsmsnm', NULL, 2, 0, 1, NULL, NULL, 1, 'to_do', 1, 0, NULL, '', 0, 0, 0, NULL, 0, 0, 0, '2022-07-28', '', '', 2, NULL, '0000-00-00', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_task_priority`
--

CREATE TABLE `rise_task_priority` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_task_priority`
--

INSERT INTO `rise_task_priority` (`id`, `title`, `icon`, `color`, `deleted`) VALUES
(1, 'Minor', 'arrow-down', '#aab7b7', 0),
(2, 'Major', 'arrow-up', '#e18a00', 0),
(3, 'Critical ', 'alert-circle', '#ad159e', 0),
(4, 'Blocker ', 'alert-octagon', '#e74c3c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_task_status`
--

CREATE TABLE `rise_task_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `hide_from_kanban` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_task_status`
--

INSERT INTO `rise_task_status` (`id`, `title`, `key_name`, `color`, `sort`, `hide_from_kanban`, `deleted`) VALUES
(1, 'To Do', 'to_do', '#F9A52D', 0, 0, 0),
(2, 'In progress', 'in_progress', '#1672B9', 1, 0, 0),
(3, 'Done', 'done', '#00b393', 3, 0, 0),
(4, 'Testing', '', '#f1c40f', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_taxes`
--

CREATE TABLE `rise_taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rise_taxes`
--

INSERT INTO `rise_taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'Tax (10%)', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_team`
--

CREATE TABLE `rise_team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_team_member_job_info`
--

CREATE TABLE `rise_team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_team_member_job_info`
--

INSERT INTO `rise_team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `salary_term`) VALUES
(1, 2, '2019-01-07', 0, 0, ''),
(2, 3, '2022-04-07', 0, 0, 'xyz'),
(3, 4, '2022-03-27', 0, 0, '-'),
(4, 5, '2021-11-15', 0, 0, ''),
(5, 6, '0000-00-00', 0, 0, ''),
(6, 7, '0000-00-00', 0, 0, ''),
(7, 8, '0000-00-00', 0, 0, ''),
(8, 9, '0000-00-00', 0, 0, ''),
(9, 10, '0000-00-00', 0, 0, ''),
(10, 11, '2022-03-03', 0, 6000, '-'),
(11, 12, '0000-00-00', 0, 0, ''),
(12, 13, '0000-00-00', 0, 0, ''),
(13, 14, '0000-00-00', 0, 0, ''),
(14, 15, '0000-00-00', 0, 0, ''),
(15, 16, '0000-00-00', 0, 0, ''),
(16, 17, '0000-00-00', 0, 0, ''),
(17, 18, '0000-00-00', 0, 0, ''),
(18, 19, '0000-00-00', 0, 0, ''),
(19, 20, '0000-00-00', 0, 0, ''),
(20, 21, '0000-00-00', 0, 0, ''),
(21, 23, '2019-01-08', 0, 0, ''),
(22, 24, '2022-08-01', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `rise_tickets`
--

CREATE TABLE `rise_tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `creator_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creator_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL,
  `closed_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_ticket_comments`
--

CREATE TABLE `rise_ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `is_note` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_ticket_templates`
--

CREATE TABLE `rise_ticket_templates` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `private` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_ticket_types`
--

CREATE TABLE `rise_ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_ticket_types`
--

INSERT INTO `rise_ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_to_do`
--

CREATE TABLE `rise_to_do` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `labels` text COLLATE utf8_unicode_ci,
  `status` enum('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rise_users`
--

CREATE TABLE `rise_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client','lead') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `requested_account_removal` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_users`
--

INSERT INTO `rise_users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `created_at`, `last_online`, `requested_account_removal`, `deleted`) VALUES
(1, 'Solicitous', 'Admin', 'staff', 1, 0, 'info.solicitousbusiness@gmail.com', '$2y$10$zynXV7s6wwfSjeMttaf80eAmXN6o.0ivxTbjzzwTCJtx8ZJWwFrju', 'a:1:{s:9:\"file_name\";s:29:\"_file626cd7a8b0b11-avatar.png\";}', 'active', '2022-08-23 06:51:21', 0, '2022-05-30 13:20:45', 0, 'Admin', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', '', '', 1, 1, '2022-04-12 09:14:52', '2023-10-02 07:29:50', 0, 0),
(2, 'Kavita', 'Jagtap', 'staff', 0, 1, 'kavita@solicitousbusiness.com', '$2y$10$XwX2cZG8Senrg8NO2tJx/.YCum/0I99vTxd1ThN951cd2vbzw881.', 'a:1:{s:9:\"file_name\";s:29:\"_file626fd911c05ca-avatar.png\";}', 'active', '2022-05-24 11:53:45', 0, '2022-05-12 09:45:44', 0, 'Operations manager | Graphic Designer', 0, NULL, 'kavita@solicitousbusiness.com', '', '+91 8380948134', '', '2000-05-06', '', 'female', 'Hiii', '', 1, 1, '2022-04-16 12:09:06', '2022-05-25 10:35:43', 0, 0),
(3, 'Kavita', 'Jagtap', 'staff', 0, 0, 'kavita2@solicitousbusiness.com', '$2y$10$T1BY9Y8R5PSS16dpeb0eie/McikzI8dNTjQLyRVHv9it7B7azLUyS', NULL, 'active', NULL, 0, NULL, 0, 'Graphic Designer | Manager', 0, NULL, 'kavita@solicitousbusiness.com', NULL, '8380948134', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-04-22 12:47:20', NULL, 0, 1),
(4, 'Rohi', 'Zadane', 'staff', 0, 0, 'rohit@solicitousbusiness.com', '$2y$10$iiX.5pSpHhHjLxWbqilLqOnGfP8cEwUPEeUZTEUl9GmIsF9WzvtBu', NULL, 'active', NULL, 0, NULL, 0, 'PHP Developer', 0, NULL, 'rohit@solicitousbusiness.com', NULL, '7888286744', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-04-26 10:28:12', '2022-05-07 07:41:03', 0, 0),
(5, 'Radhika ', 'Chalekar', 'staff', 0, 0, 'radhika@solicitousbusiness.com', '$2y$10$Jn8XDcdImKcEVo5ZzqFwBOilGsCCy1wwrAaSr2K1BNNCfA.7jC1X2', NULL, 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '8999226133', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-05-02 05:45:33', '2022-05-07 12:04:18', 0, 0),
(6, 'Prathamesh', 'Kodilkar ', 'staff', 0, 0, 'prathamesh@solicitousbusiness.com', '$2y$10$7LwtEMscRfyjQpIcaYJXbO.QMQylcZyq5Hy82YKnmC9kY9M8BbgBG', NULL, 'inactive', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '8668754248', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 06:32:10', NULL, 0, 0),
(7, 'Prathmesh ', 'Kulkarni', 'staff', 0, 0, 'prathamesh.k@solicitousbusiness.com', '$2y$10$yrg2JwnTVx0JZx8UhWQOKOYrpKNmvrLU5ee9fKB36rvwRgPdFbRAi', NULL, 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9168277054', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 06:37:44', '2022-05-07 12:38:37', 0, 0),
(8, 'Shubham', ' Nivangune', 'staff', 0, 0, 'shubham@solicitousbusiness.com', '$2y$10$DCNc55pt50yCP0H2gg6KG.hJLDf/h2Ew0QsCuldXZZlM76A5qSZM2', NULL, 'inactive', '2022-05-07 07:10:29', 0, '2022-05-07 07:14:53', 0, 'Developer ', 0, NULL, '', NULL, '7083420331', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 06:45:22', '2022-05-07 13:47:36', 0, 0),
(9, 'Roopendra', 'Salvi', 'staff', 0, 0, 'roopendra@solicitousbusiness.com', '$2y$10$kJNjGewX2SAMv7GyVNX31.IJGTwKfcU9pkhn3pCVBWP0d7.mPZ9CC', 'a:1:{s:9:\"file_name\";s:29:\"_file62766182bff04-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9673295208', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 06:46:59', '2022-05-07 13:53:27', 0, 0),
(10, 'Trupti ', ' Mhaskar', 'staff', 0, 0, 'trupti@solicitousbusiness.com', '$2y$10$yN64GraTbG.VAhEnFb2KRusnziPQ1pxjSuIyILBTMt1sp7XVjrIn6', NULL, 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9075283122', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-05-02 07:12:10', NULL, 0, 0),
(11, 'Ankita ', 'Chavhan', 'staff', 0, 0, 'ankita@solicitousbusiness.com', '$2y$10$aPQ/im4CDfKtRlc55vSOcu0j0ILWglalXrtTD5wwblHqtcDVjp9vW', 'a:1:{s:9:\"file_name\";s:29:\"_file6276613e87b88-avatar.png\";}', 'inactive', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9881016948', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-05-02 07:14:22', '2022-05-07 12:15:32', 0, 0),
(12, 'Raj ', 'Raut', 'staff', 0, 0, 'raj@solicitousbusiness.com', '$2y$10$V8NDim060xjA4W2FAJc.iengURNBPd96rRxQ5HFOy0NZho9O0sRPG', 'a:1:{s:9:\"file_name\";s:29:\"_file62761f0cf19f4-avatar.png\";}', 'active', '2022-05-07 07:31:29', 0, '2022-05-07 07:12:09', 0, 'Developer ', 0, NULL, '', NULL, '7719032875', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 07:22:14', '2022-05-24 10:34:51', 0, 0),
(13, 'Namrata ', 'Kale', 'staff', 0, 3, 'namrata@solicitousbusiness.com', '$2y$10$u2ERHxC2O./CQNJCS6JvQelyHBzPXvN7v03aMhxgGE3ec9NWpslfO', NULL, 'inactive', NULL, 0, NULL, 0, 'HR', 1, NULL, '', NULL, '8329596928', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-05-02 07:23:53', NULL, 0, 0),
(14, 'Bhakti ', 'Markad', 'staff', 0, 0, 'Bhakti@solicitousbusiness.com', '$2y$10$Vhlo8vaerpogF8iu2.8auOxakXzyKoOYk08KJczR4h.Eo57CKuvKC', NULL, 'active', '2022-05-07 07:29:13', 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9011927993', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-05-02 07:29:32', '2022-05-11 10:29:54', 0, 0),
(15, 'Supriya ', 'Chougule', 'staff', 0, 0, 'supriya@solicitousbusiness.com', '$2y$10$eyRL7WilHicxDzpo.f51Ce5gNBXIyHEayPcvHCnof6MvtEiggJHkK', NULL, 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9699558437', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-05-02 07:31:38', '2022-05-07 13:01:35', 0, 0),
(16, 'Kaushik ', 'Puntambekar', 'staff', 0, 0, 'kaushik@solicitousbusiness.com', '$2y$10$vdWFcXbTensOggEuWwsbyeN7FuGSVm.5B03HcW2D79MGA.j2cTyFm', 'a:1:{s:9:\"file_name\";s:29:\"_file627661f5d8fb2-avatar.png\";}', 'inactive', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '7276088220', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 07:54:19', '2022-05-07 12:21:47', 0, 0),
(17, 'Gaurav', 'Dhanawade', 'staff', 0, 0, 'gaurav@solicitousbusiness.com', '$2y$10$XDu7OtBSf88pz.zxZ5madO0LCWJO8FcBkxsu7qr6WK0828mgnILZ6', 'a:1:{s:9:\"file_name\";s:29:\"_file6276612596a43-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '7083872952', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 07:56:14', '2022-05-07 14:23:20', 0, 0),
(18, 'Chaitanya  ', 'Holkar', 'staff', 0, 0, 'chaitanya@solicitousbusiness.com', '$2y$10$JorCEgAecue/qe7f9Gc8EuVEbbldvWGeZRiQlfpBg2smzNvGHPiLW', NULL, 'inactive', NULL, 0, NULL, 0, ' Designer', 0, NULL, '', NULL, '8208487905', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 07:59:05', NULL, 0, 0),
(19, 'Saurabh ', 'kanawade', 'staff', 0, 0, 'saurabh@solicitousbusiness.com', '$2y$10$ayzxOmbs988s92J3zwiaUOVx/2rLJFZgD88YQCymvDGq/tedZ2MVW', NULL, 'active', NULL, 0, NULL, 0, 'Developer ', 0, NULL, '', '', '9588431214', '', '1999-02-20', '', 'male', NULL, '', 1, 1, '2022-05-02 08:02:15', '2022-05-07 12:05:12', 0, 0),
(20, 'Sachin', 'Nathbuva', 'staff', 0, 0, 'sachin.n@solicitousbusiness.com', '$2y$10$cF/YXGkVhK45Q/VLyLqCc.ZigkJmWrZdjtwadUXLWGoUcu6fbuqPS', NULL, 'active', '2022-05-07 07:28:29', 0, NULL, 0, 'Developer ', 0, NULL, '', NULL, '9970666441', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-02 08:05:52', '2022-05-07 13:52:28', 0, 0),
(21, 'Vishal ', 'Shinde', 'staff', 0, 4, 'naturium.oil@gmail.com', '$2y$10$jsf/kbKwcK4i0WITIdqIlOmjNoUMiRz7wycekFQD/qbPjcnPnjKVe', NULL, 'active', NULL, 0, '2022-05-07 12:25:10', 0, 'Client', 0, NULL, 'naturium.oil@gmail.com', NULL, '+919423246026', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-07 12:18:32', '2022-05-07 12:26:44', 0, 0),
(22, 'a', 'j', 'client', 0, 0, 'himanshu777000@gmail.com', '$2y$10$7oaGtQINK8yJr55gs4eoxeDMQTlvExH7aIfVriLgvj7CxCa/gsqq2', NULL, 'active', NULL, 5, NULL, 1, '', 0, '', NULL, NULL, '+917798925200', NULL, NULL, NULL, 'male', NULL, '', 1, 1, '2022-05-07 12:37:11', NULL, 0, 0),
(23, 'Avadh', 'Joshi', 'staff', 0, 0, 'avd@gmail.com', '$2y$10$Xt84GkqH.kXodYmLrqaBJe.AVxJTPYz/Lj0DCw0AxJC0qxJyIYb62', 'a:1:{s:9:\"file_name\";s:29:\"_file6294adfcec17e-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'PHP Developer', 0, NULL, 'avdjoshi@gmail.com', NULL, '+91 98987 90987', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-30 11:41:57', NULL, 0, 0),
(24, 'Abhijeet ', 'Patil', 'staff', 0, 1, 'abhijeet@solicitousbusiness.com', '$2y$10$ws3DIsrGoJ/JZBmWMsh8keq7QSG6KasTcGWeNjk2Z6XDW7qkmmDLa', NULL, 'active', NULL, 0, NULL, 0, 'Operation Manager', 0, NULL, 'abhijeet@solicitousbusiness.com', NULL, '8177995856', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-07-26 13:12:27', '2022-08-13 07:01:13', 0, 0),
(25, 'Suresh ', 'Khorate', 'client', 0, 0, 'support@landmarksol.com', '$2y$10$nnKKWYu.si2ZJVz.X3w6JOhX6v8BBBXBTAAUx.mcqmg/ifMFgp4Ki', NULL, 'active', NULL, 10, NULL, 1, '', 0, '', NULL, NULL, '', NULL, NULL, NULL, 'male', NULL, '', 1, 1, '2022-10-16 09:03:16', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rise_verification`
--

CREATE TABLE `rise_verification` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('invoice_payment','reset_password','verify_email','invitation') COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rise_verification`
--

INSERT INTO `rise_verification` (`id`, `created_at`, `type`, `code`, `params`, `deleted`) VALUES
(1, '2022-05-07 07:14:26', 'reset_password', 'HSvKsujwYH', 'a:2:{s:5:\"email\";s:32:\"roopendra@solicitousbusiness.com\";s:11:\"expire_time\";i:1651994066;}', 0),
(2, '2022-07-26 12:56:55', 'reset_password', 'iMNxcgNWeQ', 'a:2:{s:5:\"email\";s:33:\"info.solicitousbusiness@gmail.com\";s:11:\"expire_time\";i:1658926615;}', 0),
(3, '2023-04-22 05:01:44', 'reset_password', 'DfMQdPloNP', 'a:2:{s:5:\"email\";s:33:\"info.solicitousbusiness@gmail.com\";s:11:\"expire_time\";i:1682226104;}', 0),
(4, '2023-10-02 06:29:57', 'reset_password', 'fXTCuyhRlD', 'a:2:{s:5:\"email\";s:33:\"info.solicitousbusiness@gmail.com\";s:11:\"expire_time\";i:1696314597;}', 0),
(5, '2023-10-02 06:51:23', 'reset_password', 'ctudBXtHAP', 'a:2:{s:5:\"email\";s:33:\"info.solicitousbusiness@gmail.com\";s:11:\"expire_time\";i:1696315883;}', 0),
(6, '2023-10-02 07:07:21', 'reset_password', 'yeKMNVzQmg', 'a:2:{s:5:\"email\";s:33:\"info.solicitousbusiness@gmail.com\";s:11:\"expire_time\";i:1696316841;}', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rise_activity_logs`
--
ALTER TABLE `rise_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_announcements`
--
ALTER TABLE `rise_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `rise_article_helpful_status`
--
ALTER TABLE `rise_article_helpful_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_attendance`
--
ALTER TABLE `rise_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `rise_checklist_groups`
--
ALTER TABLE `rise_checklist_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_checklist_items`
--
ALTER TABLE `rise_checklist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_checklist_template`
--
ALTER TABLE `rise_checklist_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_ci_sessions`
--
ALTER TABLE `rise_ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `rise_clients`
--
ALTER TABLE `rise_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_client_groups`
--
ALTER TABLE `rise_client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_company`
--
ALTER TABLE `rise_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_contracts`
--
ALTER TABLE `rise_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_contract_items`
--
ALTER TABLE `rise_contract_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_contract_templates`
--
ALTER TABLE `rise_contract_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_custom_fields`
--
ALTER TABLE `rise_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_custom_field_values`
--
ALTER TABLE `rise_custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_to_type` (`related_to_type`),
  ADD KEY `related_to_id` (`related_to_id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `rise_custom_widgets`
--
ALTER TABLE `rise_custom_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_dashboards`
--
ALTER TABLE `rise_dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_email_templates`
--
ALTER TABLE `rise_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_estimates`
--
ALTER TABLE `rise_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_estimate_comments`
--
ALTER TABLE `rise_estimate_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_estimate_forms`
--
ALTER TABLE `rise_estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_estimate_items`
--
ALTER TABLE `rise_estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_estimate_requests`
--
ALTER TABLE `rise_estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_events`
--
ALTER TABLE `rise_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `rise_expenses`
--
ALTER TABLE `rise_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_expense_categories`
--
ALTER TABLE `rise_expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_file_category`
--
ALTER TABLE `rise_file_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_general_files`
--
ALTER TABLE `rise_general_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_help_articles`
--
ALTER TABLE `rise_help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_help_categories`
--
ALTER TABLE `rise_help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_invoices`
--
ALTER TABLE `rise_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_invoice_items`
--
ALTER TABLE `rise_invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_invoice_payments`
--
ALTER TABLE `rise_invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `rise_items`
--
ALTER TABLE `rise_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_item_categories`
--
ALTER TABLE `rise_item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_labels`
--
ALTER TABLE `rise_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_leads`
--
ALTER TABLE `rise_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_lead_source`
--
ALTER TABLE `rise_lead_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_lead_status`
--
ALTER TABLE `rise_lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_leave_applications`
--
ALTER TABLE `rise_leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `rise_leave_types`
--
ALTER TABLE `rise_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_likes`
--
ALTER TABLE `rise_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_messages`
--
ALTER TABLE `rise_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indexes for table `rise_milestones`
--
ALTER TABLE `rise_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_notes`
--
ALTER TABLE `rise_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_notifications`
--
ALTER TABLE `rise_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rise_notification_settings`
--
ALTER TABLE `rise_notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `rise_orders`
--
ALTER TABLE `rise_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_order_items`
--
ALTER TABLE `rise_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_order_status`
--
ALTER TABLE `rise_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_pages`
--
ALTER TABLE `rise_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_payment_methods`
--
ALTER TABLE `rise_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_paypal_ipn`
--
ALTER TABLE `rise_paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_pin_comments`
--
ALTER TABLE `rise_pin_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_posts`
--
ALTER TABLE `rise_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_projects`
--
ALTER TABLE `rise_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_project_comments`
--
ALTER TABLE `rise_project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_project_files`
--
ALTER TABLE `rise_project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_project_members`
--
ALTER TABLE `rise_project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_project_settings`
--
ALTER TABLE `rise_project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Indexes for table `rise_project_time`
--
ALTER TABLE `rise_project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_proposals`
--
ALTER TABLE `rise_proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_proposal_items`
--
ALTER TABLE `rise_proposal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_proposal_templates`
--
ALTER TABLE `rise_proposal_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_roles`
--
ALTER TABLE `rise_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_settings`
--
ALTER TABLE `rise_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `rise_social_links`
--
ALTER TABLE `rise_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_stripe_ipn`
--
ALTER TABLE `rise_stripe_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_tasks`
--
ALTER TABLE `rise_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_task_priority`
--
ALTER TABLE `rise_task_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_task_status`
--
ALTER TABLE `rise_task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_taxes`
--
ALTER TABLE `rise_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_team`
--
ALTER TABLE `rise_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_team_member_job_info`
--
ALTER TABLE `rise_team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rise_tickets`
--
ALTER TABLE `rise_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_ticket_comments`
--
ALTER TABLE `rise_ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_ticket_templates`
--
ALTER TABLE `rise_ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_ticket_types`
--
ALTER TABLE `rise_ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_to_do`
--
ALTER TABLE `rise_to_do`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rise_users`
--
ALTER TABLE `rise_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- Indexes for table `rise_verification`
--
ALTER TABLE `rise_verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rise_activity_logs`
--
ALTER TABLE `rise_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `rise_announcements`
--
ALTER TABLE `rise_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rise_article_helpful_status`
--
ALTER TABLE `rise_article_helpful_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_attendance`
--
ALTER TABLE `rise_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rise_checklist_groups`
--
ALTER TABLE `rise_checklist_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_checklist_items`
--
ALTER TABLE `rise_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_checklist_template`
--
ALTER TABLE `rise_checklist_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_clients`
--
ALTER TABLE `rise_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rise_client_groups`
--
ALTER TABLE `rise_client_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rise_company`
--
ALTER TABLE `rise_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rise_contracts`
--
ALTER TABLE `rise_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_contract_items`
--
ALTER TABLE `rise_contract_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_contract_templates`
--
ALTER TABLE `rise_contract_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_custom_fields`
--
ALTER TABLE `rise_custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_custom_field_values`
--
ALTER TABLE `rise_custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_custom_widgets`
--
ALTER TABLE `rise_custom_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_dashboards`
--
ALTER TABLE `rise_dashboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rise_email_templates`
--
ALTER TABLE `rise_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rise_estimates`
--
ALTER TABLE `rise_estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_estimate_comments`
--
ALTER TABLE `rise_estimate_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_estimate_forms`
--
ALTER TABLE `rise_estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_estimate_items`
--
ALTER TABLE `rise_estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_estimate_requests`
--
ALTER TABLE `rise_estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_events`
--
ALTER TABLE `rise_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rise_expenses`
--
ALTER TABLE `rise_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_expense_categories`
--
ALTER TABLE `rise_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_file_category`
--
ALTER TABLE `rise_file_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_general_files`
--
ALTER TABLE `rise_general_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_help_articles`
--
ALTER TABLE `rise_help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_help_categories`
--
ALTER TABLE `rise_help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_invoices`
--
ALTER TABLE `rise_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `rise_invoice_items`
--
ALTER TABLE `rise_invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `rise_invoice_payments`
--
ALTER TABLE `rise_invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rise_items`
--
ALTER TABLE `rise_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rise_item_categories`
--
ALTER TABLE `rise_item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_labels`
--
ALTER TABLE `rise_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rise_leads`
--
ALTER TABLE `rise_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_lead_source`
--
ALTER TABLE `rise_lead_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rise_lead_status`
--
ALTER TABLE `rise_lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rise_leave_applications`
--
ALTER TABLE `rise_leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_leave_types`
--
ALTER TABLE `rise_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_likes`
--
ALTER TABLE `rise_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_messages`
--
ALTER TABLE `rise_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rise_milestones`
--
ALTER TABLE `rise_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rise_notes`
--
ALTER TABLE `rise_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rise_notifications`
--
ALTER TABLE `rise_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `rise_notification_settings`
--
ALTER TABLE `rise_notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `rise_orders`
--
ALTER TABLE `rise_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_order_items`
--
ALTER TABLE `rise_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_order_status`
--
ALTER TABLE `rise_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rise_pages`
--
ALTER TABLE `rise_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_payment_methods`
--
ALTER TABLE `rise_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rise_paypal_ipn`
--
ALTER TABLE `rise_paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_pin_comments`
--
ALTER TABLE `rise_pin_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_posts`
--
ALTER TABLE `rise_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rise_projects`
--
ALTER TABLE `rise_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rise_project_comments`
--
ALTER TABLE `rise_project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rise_project_files`
--
ALTER TABLE `rise_project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_project_members`
--
ALTER TABLE `rise_project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rise_project_time`
--
ALTER TABLE `rise_project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rise_proposals`
--
ALTER TABLE `rise_proposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_proposal_items`
--
ALTER TABLE `rise_proposal_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rise_proposal_templates`
--
ALTER TABLE `rise_proposal_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_roles`
--
ALTER TABLE `rise_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rise_stripe_ipn`
--
ALTER TABLE `rise_stripe_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_tasks`
--
ALTER TABLE `rise_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rise_task_priority`
--
ALTER TABLE `rise_task_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rise_task_status`
--
ALTER TABLE `rise_task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rise_taxes`
--
ALTER TABLE `rise_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_team`
--
ALTER TABLE `rise_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_team_member_job_info`
--
ALTER TABLE `rise_team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rise_tickets`
--
ALTER TABLE `rise_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_ticket_comments`
--
ALTER TABLE `rise_ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_ticket_templates`
--
ALTER TABLE `rise_ticket_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_ticket_types`
--
ALTER TABLE `rise_ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rise_to_do`
--
ALTER TABLE `rise_to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rise_users`
--
ALTER TABLE `rise_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rise_verification`
--
ALTER TABLE `rise_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
