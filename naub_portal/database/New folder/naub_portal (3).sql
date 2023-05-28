-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 11:24 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naub_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'jkev', '2013-11-18 15:25:33', 'Add Subject RIZAL'),
(2, 'jkev', '2013-11-18 15:27:08', 'Edit Subject RIZAL'),
(3, '', '2013-11-18 15:30:46', 'Edit Subject IS 221'),
(4, '', '2013-11-18 15:31:12', 'Edit Subject IS 222'),
(5, '', '2013-11-18 15:31:24', 'Edit Subject IS 223'),
(6, '', '2013-11-18 15:31:34', 'Edit Subject IS 224'),
(7, '', '2013-11-18 15:31:54', 'Edit Subject IS 227'),
(8, '', '2013-11-18 15:32:37', 'Add Subject IS 411B'),
(9, '', '2013-11-18 15:34:54', 'Edit User jkev'),
(10, 'jkev', '2014-01-17 13:26:18', 'Add User admin'),
(11, 'admin', '2020-12-21 08:37:51', 'Add Subject 1234'),
(12, 'admin', '2022-10-07 11:10:06', 'Add School Year 2022-2023'),
(13, '', '2022-10-07 11:36:34', 'Add Subject CSC411'),
(14, 'admin', '2022-10-07 11:55:43', 'Add Subject CSC412'),
(15, 'admin', '2022-10-07 11:56:24', 'Add Subject CSC413'),
(16, 'admin', '2022-10-07 11:57:00', 'Add Subject CSC414'),
(17, 'admin', '2022-10-07 11:58:22', 'Add Subject IFS412'),
(18, 'admin', '2022-10-07 12:00:03', 'Add Subject SWE414'),
(19, 'admin', '2022-10-07 12:00:16', 'Edit Subject IFS412'),
(20, 'admin', '2022-10-07 12:05:08', 'Add Subject IFT411'),
(21, 'admin', '2022-10-07 12:07:20', 'Add Subject CSC393'),
(22, 'admin', '2022-10-07 12:17:51', 'Add Subject CSC499'),
(23, 'admin', '2022-10-07 12:18:29', 'Add Subject CSC425'),
(24, 'admin', '2022-10-07 12:19:15', 'Add Subject CSC421'),
(25, 'admin', '2022-10-07 12:19:45', 'Add Subject CSC422'),
(26, 'admin', '2022-10-07 12:20:22', 'Add Subject CSC423'),
(27, 'admin', '2022-10-07 12:21:00', 'Add Subject CSC424'),
(28, 'admin', '2022-10-07 12:23:07', 'Add Subject CSC311'),
(29, 'admin', '2022-10-07 12:23:44', 'Add Subject CSC312'),
(30, 'admin', '2022-10-07 12:24:18', 'Add Subject CSC313'),
(31, 'admin', '2022-10-07 12:25:05', 'Add Subject GST311'),
(32, 'admin', '2022-10-07 12:25:32', 'Add Subject SWE317'),
(33, 'admin', '2022-10-07 12:26:19', 'Add Subject CBS311'),
(34, 'admin', '2022-10-07 12:26:50', 'Add Subject IFS312');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D'),
(93, 39, 'combine', 'A'),
(94, 39, 'connected', 'B'),
(95, 39, 'joined', 'C'),
(96, 39, 'none', 'D'),
(97, 40, 'work done', 'A'),
(98, 40, 'done work', 'B'),
(99, 40, 'achieved goal', 'C'),
(100, 40, 'none', 'D'),
(101, 41, 'work done', 'A'),
(102, 41, 'done work', 'B'),
(103, 41, 'achieved goal', 'C'),
(104, 41, 'none', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2013-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1'),
(3, 'uploads/3617_File_login.mdb', '2013-10-28 19:35:28', 'q', 9, 80, 'q'),
(4, 'admin/uploads/7146_File_normalization.ppt', '2013-10-30 18:48:15', 'fsaf', 9, 95, 'fsaf'),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2013-10-30 18:48:33', 'fsaf', 9, 95, 'dsaf'),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2013-10-30 18:53:32', 'file', 9, 95, 'abstract'),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2013-11-01 13:13:18', 'fsafasf', 9, 95, 'Assignment#2'),
(11, 'admin/uploads/1511_File_bootstrap.css', '2013-11-01 13:18:25', 'sdsa', 9, 95, 'css'),
(12, 'admin/uploads/4309_File_new  2.txt', '2013-11-17 23:21:46', 'test', 12, 145, 'test'),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2013-11-18 16:59:35', 'q', 12, 145, 'q'),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:38:45', 'afs', 18, 159, 'dasf'),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:19', 'test', 18, 160, 'assign1'),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2013-11-25 15:53:20', 'q', 12, 161, 'q'),
(19, '', '2013-12-07 20:11:39', 'kevin test', 12, 162, ''),
(20, '', '2013-12-07 20:26:43', 'dasddsd', 12, 145, ''),
(21, '', '2013-12-07 20:26:43', 'dasddsd', 12, 162, ''),
(22, '', '2013-12-07 20:27:18', 'dasffsafsaf', 12, 162, ''),
(23, '', '2013-12-07 20:33:11', 'test', 12, 162, ''),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:39:05', 'kevin', 12, 0, 'kevin'),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:41:10', 'kevin', 12, 0, 'kevin'),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:43:25', 'kevin', 12, 0, 'kevin'),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:47:48', 'fasfafaf', 12, 0, 'fasf'),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:48:59', 'dasdasd', 12, 0, 'dasd'),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:50:47', 'dasdasd', 12, 0, 'dsad'),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 12, 167, 'q'),
(31, 'admin/uploads/8289_File_sample.pdf', '2020-12-21 09:56:48', 'asdasd', 9, 186, 'asdasd'),
(33, 'admin/uploads/2495_File_main.css', '2023-01-08 11:20:01', 'do and submit today\r\n', 25, 193, 'Lets Learn JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(25, '100 Level'),
(26, '200 Level'),
(27, '300 Level'),
(28, '400 Level');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6),
(18, 189, 600, 7),
(19, 189, 600, 7),
(20, 193, 120, 10);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n'),
(2, 190, '<p>Welcome Student.</p>\r\n\r\n<p>this is Big Data Technology, get ready to anaylse data. see you in class</p>\r\n\r\n<p>Thank you.</p>\r\n'),
(3, 189, '<p>this is a new course</p>\r\n'),
(4, 193, '<p>Welcome to Net Centric Course. Prepare your mind for this Networking</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A leading institution in higher and continuing education commited to engage in quality instruction, development-oriented research sustinable lucrative economic enterprise, and responsive extension and training services through relevant academic programs to empower a human resource that responds effectively to challenges in life and acts as catalyst in the holistoic development of a humane society.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; Driven by its passion for continous improvement, the State College has to vigorously pursue distinction and proficieny in delivering its statutory functions to the Filipino people in the fields of education, business, agro-fishery, industrial, science and technology, through committed and competent human resource, guided by the beacon of innovation and productivity towards the heights of elevated status. </span><br /><br /></p>'),
(3, 'History', '<pre>\r\n<span style=\"font-size:large\">HISTORY &nbsp;</span> </pre>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>'),
(4, 'Footer', '<p style=\"text-align:center\">NAUB COMSCI Department Portal</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2022</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">Computer Sscience Portal NAUB</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2>&nbsp;</h2>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>&nbsp;</p>\r\n'),
(10, 'Calendar', '<p style=\"text-align:center\"><span style=\"font-size:14px\"><strong>Calender of Events</strong></span></p>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>OFFICE LOCATIONS &amp; DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Physics Lab -&nbsp;&nbsp;</li>\r\n	<li>Chemistry Lab</li>\r\n	<li>Computing Faculty</li>\r\n	<li>Exams and Record Office&nbsp;</li>\r\n	<li>Registrar Office -&nbsp;</li>\r\n	<li>Bursary &amp; Cashier -&nbsp;&nbsp;</li>\r\n	<li>ICT 1 -&nbsp;&nbsp;</li>\r\n	<li>ICT 2 -</li>\r\n	<li>Security Department&nbsp;-&nbsp;</li>\r\n	<li>E Library&nbsp;-&nbsp;</li>\r\n	<li>COAS&nbsp;-&nbsp;</li>\r\n	<li>Canteen -&nbsp;</li>\r\n	<li>Research -&nbsp;</li>\r\n	<li>Library -</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'VICE CHANCELLOR', '<p>It is my great pleasure and privilege to welcome you to Computer Science Departmental Portal NAUB. Accept my deep appreciation for continuously taking interest in NAUB and its programs and activities.<br />\r\nRecently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img alt=\"\" src=\"images/president.jpg\" style=\"float:left\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br />\r\n<br />\r\nHonored and humbled to be given the opportunity for stewardship of this good Institution, I am fully aware that the goal is to make NAUB&nbsp;the center of excellence or development in various fields. The vision, COMPSCI: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of Nigerian Army University&nbsp;Community. A NAUBite&nbsp;must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the University&nbsp;is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br />\r\n<br />\r\nThe tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to<br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Provide wider access to NAUB programs;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students through&nbsp;effective teaching and learning methodologies and techniques;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable NAUB Environment for All through secure green campus;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nTogether, WE can make NAUB</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<br />\r\nDear readers and guests, these are the challenges for every NAUBites to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br />\r\n<br />\r\nWarmest welcome and I wish you well!</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">...........................................<br />\r\nVICE CHANCELLOR</p>\r\n'),
(13, 'motto', '<p>KNOWLEDGE AND CREATIVITY</p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>FAMSS.</li>\r\n	<li>FNAS.</li>\r\n	<li>TEMPORARY SITE.</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(11, 'Computer Science', 'Dr Z A Pindar');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020'),
(20, 'School Marathon', 0, '10/21/2022', '10/22/2022'),
(21, 'Test', 193, '10/26/2022', '10/27/2022');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(138, 'admin/uploads/3952_File_sample.pdf', '2020-12-21 09:24:50', 'Sample', 9, 186, 'Sample', 'JomarPabuaya'),
(139, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 09:38:22', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(140, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 09:39:32', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(141, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 09:40:28', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(142, 'admin/uploads/1441_File_CSC 411 Distributed  Computing.pdf', '2022-10-07 19:05:49', 'Distributed Computing', 22, 189, 'Distributed Computing', 'MalgwiYM'),
(144, 'admin/uploads/6735_File_425-Lecture-1.pdf', '2022-10-19 12:14:24', 'Read and do some research on the Lecture', 25, 193, 'Net Centric First Class', 'GimbaAM'),
(145, 'admin/uploads/1987_File_425-Lecture-2.pdf', '2022-10-19 12:14:47', 'Read and do some research on the Lecture', 25, 193, 'Nte Centric Second Class', 'GimbaAM'),
(146, 'admin/uploads/4199_File_425-Lecture-3.pdf', '2022-10-19 12:15:22', 'Read and do some research on the Lecture', 25, 193, 'Net Centric 3rd Class', 'GimbaAM'),
(147, 'admin/uploads/8285_File_main.css', '2023-01-08 10:58:09', 'Read and do some research on the Lecture', 0, 189, 'Project Assignment', 'ADEYELE AYODEJI ');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', ''),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', ''),
(29, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya', ''),
(30, 231, 'Welcome home', '2022-10-12 11:47:09', 22, 'ADEYELE  AYODEJI ', 'Malgwi YM', 'read'),
(31, 22, 'okay sir', '2022-10-12 11:48:24', 231, 'Malgwi YM', 'ADEYELE  AYODEJI ', ''),
(32, 22, 'hi man', '2022-10-19 12:17:01', 25, 'Malgwi YM', 'Gimba AM', ''),
(33, 224, 'come to class now\r\n', '2022-10-20 12:25:03', 231, 'ABBAS USMAN', 'ADEYELE  AYODEJI ', ''),
(34, 25, 'good morning sir\r\nare we having class today?', '2022-10-20 13:21:32', 231, 'Gimba AM', 'ADEYELE  AYODEJI ', ''),
(35, 231, 'yes see me before the class', '2022-10-20 13:22:10', 25, 'ADEYELE  AYODEJI ', 'Gimba AM', ''),
(36, 233, 'zola what up', '2022-11-15 13:21:26', 231, 'ABDULRAHMAN DANLADI', 'ADEYELE  AYODEJI ', 'read'),
(37, 231, 'i dey man', '2022-11-15 13:23:14', 233, 'ADEYELE  AYODEJI ', 'ABDULRAHMAN DANLADI', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya'),
(15, 231, 'Welcome home', '2022-10-12 11:47:09', 22, 'ADEYELE  AYODEJI ', 'Malgwi YM'),
(16, 22, 'okay sir', '2022-10-12 11:48:24', 231, 'Malgwi YM', 'ADEYELE  AYODEJI '),
(17, 22, 'hi man', '2022-10-19 12:17:01', 25, 'Malgwi YM', 'Gimba AM'),
(18, 224, 'come to class now\r\n', '2022-10-20 12:25:03', 231, 'ABBAS USMAN', 'ADEYELE  AYODEJI '),
(19, 25, 'good morning sir\r\nare we having class today?', '2022-10-20 13:21:32', 231, 'Gimba AM', 'ADEYELE  AYODEJI '),
(20, 231, 'yes see me before the class', '2022-10-20 13:22:10', 25, 'ADEYELE  AYODEJI ', 'Gimba AM'),
(21, 233, 'zola what up', '2022-11-15 13:21:26', 231, 'ABDULRAHMAN DANLADI', 'ADEYELE  AYODEJI '),
(22, 231, 'i dey man', '2022-11-15 13:23:14', 233, 'ADEYELE  AYODEJI ', 'ABDULRAHMAN DANLADI');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2020-12-21 09:24:50', 'downloadable_student.php'),
(16, 0, 'Add Downloadable Materials file name <b>123</b>', '2020-12-21 09:31:40', 'downloadable_student.php'),
(17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:36:27', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:38:22', 'downloadable_student.php'),
(19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:39:32', 'downloadable_student.php'),
(20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:40:28', 'downloadable_student.php'),
(21, 186, 'Add Assignment file name <b>asdasd</b>', '2020-12-21 09:56:48', 'assignment_student.php'),
(22, 186, 'Add Annoucements', '2020-12-21 09:59:00', 'announcements_student.php'),
(23, 186, 'Add Practice Quiz file', '2020-12-21 10:10:11', 'student_quiz_list.php'),
(24, 189, 'Add Annoucements', '2022-10-07 13:36:40', 'announcements_student.php'),
(25, 189, 'Add Annoucements', '2022-10-07 13:36:56', 'announcements_student.php'),
(26, 189, 'Add Downloadable Materials file name <b>Distributed Computing</b>', '2022-10-07 19:05:49', 'downloadable_student.php'),
(27, 189, 'Add Practice Quiz file', '2022-10-08 10:54:31', 'student_quiz_list.php'),
(28, 189, 'Add Practice Quiz file', '2022-10-13 11:46:10', 'student_quiz_list.php'),
(29, 193, 'Add Annoucements', '2022-10-19 12:05:56', 'announcements_student.php'),
(30, 193, 'Add Assignment file name <b>Skyline Communication Ventures</b>', '2022-10-19 12:07:54', 'assignment_student.php'),
(31, 193, 'Add Downloadable Materials file name <b>Project Assignment</b>', '2022-10-19 12:08:10', 'downloadable_student.php'),
(32, 193, 'Add Downloadable Materials file name <b>Net Centric First Class</b>', '2022-10-19 12:14:24', 'downloadable_student.php'),
(33, 193, 'Add Downloadable Materials file name <b>Nte Centric Second Class</b>', '2022-10-19 12:14:47', 'downloadable_student.php'),
(34, 193, 'Add Downloadable Materials file name <b>Net Centric 3rd Class</b>', '2022-10-19 12:15:21', 'downloadable_student.php'),
(35, 193, 'Add Practice Quiz file', '2022-10-20 12:00:37', 'student_quiz_list.php'),
(36, 189, 'Add Annoucements', '2022-11-17 12:34:58', 'announcements_student.php'),
(37, 193, 'Add Assignment file name <b>Lets Learn JavaScript</b>', '2023-01-08 11:20:01', 'assignment_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 220, 'yes', 25),
(7, 220, 'yes', 24),
(8, 220, 'yes', 26),
(9, 231, 'yes', 28),
(10, 231, 'yes', 27),
(11, 231, 'yes', 26),
(12, 231, 'yes', 25),
(13, 231, 'yes', 24),
(14, 231, 'yes', 34),
(15, 231, 'yes', 33),
(16, 231, 'yes', 32),
(17, 231, 'yes', 31),
(18, 231, 'yes', 30),
(19, 231, 'yes', 29),
(20, 231, 'yes', 35);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 25, 'yes', 19);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'Sample Quiz', 'Sample 101', '2020-12-21 10:04:11', 9),
(7, 'CSC411 Test', 'Answer All Questions', '2022-10-08 10:51:37', 22),
(8, 'CSC411 Test', 'Answer All Questions', '2022-10-13 11:45:45', 22),
(9, 'CSC411 Test', 'Answer All Questions', '2022-10-20 11:38:07', 15),
(10, 'CSC425 Test', 'Answer All Questions', '2022-10-20 11:57:44', 25),
(11, 'CSC411 Test', 'Answer All Questions', '2022-11-25 14:39:13', 22);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
(37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
(38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False'),
(39, 7, '<p>Distributed Computing COntains of different computer............. to achieve a goal</p>\r\n', 1, 0, '2022-10-08 10:53:32', 'B'),
(41, 10, '<p>what is net centric</p>\r\n', 1, 0, '2022-10-20 11:59:34', 'C'),
(42, 10, '<p>what is death</p>\r\n', 2, 0, '2022-10-20 12:00:08', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(229, 'MUHAMMAD  ', 'BELLO', 28, 'cos/18u/0439', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(232, 'MUHAMMAD ', 'UMAR', 28, 'COS/18U/0443', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(223, 'HARUNA ', 'SAKASI', 28, 'cos/18u/0433', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(224, 'ABBAS', 'USMAN', 28, 'COS/18U/0415', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(226, 'MUHAMMAD ', 'GAMBO', 28, 'cos/18u/0420', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(227, 'AROWOLO  ', 'FARUK', 28, 'cos/18u/0431', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(228, 'JESSEINI ', 'MAMZA', 28, 'cos/18u/0425', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(230, 'SAKARWA  ', 'JOSEPH', 28, 'cos/18u/0424', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(231, 'ADEYELE ', 'AYODEJI ', 28, 'cos/18u/0442', 'admin', 'uploads/images1663286159427.jpg', 'Registered'),
(233, 'ABDULRAHMAN', 'DANLADI', 28, 'COS/18U/0445', 'admin', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(234, 'ABUBAKAR ', 'AMINU', 28, 'COS/18U/0414', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(235, 'JEKWEY  ', 'SAMUEL', 28, 'COS/18U/0436', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(236, 'EPHRAIM ', 'MAMZA', 28, 'COS/18U/0418', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(237, 'KABIR ', 'ADAM', 28, 'COS/18U/0418', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(238, 'ADO', ' MUSA ', 28, 'COS/18U/0409', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(239, 'AHMAD', ' LAWAN', 28, 'COS/18U/0423', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(240, 'SIMON ', 'ABEDNAGO', 28, 'COS/18U/0434', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(241, 'SHITTU ', 'DANJUMA ', 28, 'COS/18U/0438', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(242, 'ABBAS ', 'HASSAN', 28, 'COS/18U/0411', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(243, 'BUKAR  ', 'MAINA', 28, 'COS/19D/1662', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(244, 'SUKUMTA ', 'ELISHA', 28, 'COS/18U/0421', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(246, 'Adeyele', 'Ayodeji', 27, 'cos/19u/0442', 'admin', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, ''),
(2, 32, 'admin/uploads/2798_File_200 level result.pdf', '2022-10-19 12:09:04', 'Read and do some research on the Lecture', 'Project Assignment', 231, '50');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(5, 'admin/uploads/1441_File_CSC 411 Distributed  Computing.pdf', '2022-10-07 19:07:19', 'Distributed Computing', 220, 'Distributed Computing'),
(6, 'admin/uploads/1441_File_CSC 411 Distributed  Computing.pdf', '2022-10-19 11:46:28', 'Distributed Computing', 231, 'Distributed Computing');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3'),
(4, 18, 231, '3449', '1 out of 1'),
(5, 19, 231, '3449', '0 out of 1'),
(6, 20, 231, '3600', '2 out of 2');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(45, 'CSC413', 'Algorithms and Complexity Analysis ', '', '<p>Algorithms and Complexity Analysis&nbsp;</p>\r\n', 3, '', '1st'),
(46, 'CSC414', 'Project Management', '', '<p>Project Management</p>\r\n', 3, '', '1st'),
(47, 'IFS412', 'Database Programming', '', '<p>Database Programming</p>\r\n', 3, '', '1st'),
(48, 'SWE414', 'Human Computer Interaction ', '', '<p>Human Computer Interaction&nbsp;</p>\r\n', 2, '', '1st'),
(49, 'IFT411', 'Business Application Programming', '', '<p>Business Application Programming</p>\r\n', 2, '', '1st'),
(50, 'CSC393', 'SIWES ', '', '<p>SIWES&nbsp;</p>\r\n', 6, '', '2nd'),
(51, 'CSC499', 'Research Project', '', '<p>Research Project</p>\r\n', 6, '', '2nd'),
(52, 'CSC425', 'Net-Centric Computing', '', '<p>Net-Centric Computing</p>\r\n', 3, '', '2nd'),
(53, 'CSC421', 'Computer Architecture and Organization ', '', '<p>Computer Architecture and Organization&nbsp;</p>\r\n', 3, '', '2nd'),
(54, 'CSC422', 'Artificial Intelligence', '', '<p>Artificial Intelligence</p>\r\n', 3, '', '2nd'),
(55, 'CSC423', 'Formal Methods and Software Development', '', '<p>Formal Methods and Software Development</p>\r\n', 3, '', '2nd'),
(56, 'CSC424', 'Big Data Technology', '', '<p>Big Data Technology</p>\r\n', 3, '', '2nd'),
(57, 'CSC311', 'Data Structure and Algorithms', '', '<p>Data Structure and Algorithms</p>\r\n', 3, '', '1st'),
(58, 'CSC312', 'Survey of Programming Languages', '', '<p>Survey of Programming Languages</p>\r\n', 3, '', '1st'),
(59, 'CSC313', 'Computational Science and Numerical Methods ', '', '<p>Computational Science and Numerical Methods&nbsp;</p>\r\n', 3, '', '1st'),
(60, 'GST311', 'Practical Entrepreneurship', '', '<p>Practical Entrepreneurship</p>\r\n', 2, '', '1st'),
(61, 'SWE317', 'Overview of Software Engineering', '', '<p>Overview of Software Engineering</p>\r\n', 3, '', '1st'),
(62, 'CBS311', 'Introduction to Cryptography and Techniques', '', '<p>Introduction to Cryptography and Techniques</p>\r\n', 3, '', '1st'),
(63, 'IFS312', 'Database Management System', '', '<p>Database Management System</p>\r\n', 2, '', '1st'),
(44, 'CSC412', 'Compiler Construction', '', '<p>Compiler Construction</p>\r\n', 3, '', '1st'),
(43, 'CSC411', 'Distributed Computing', '', '<p><span style=\"font-size:13px\">Distributed Computing</span></p>\r\n', 3, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `lecturer_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `lecturer_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(22, 'com12', 'Malgwi', 'admin', 'Malgwi', 'YM', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(25, 'com/13', 'Gimba', 'admin', 'Gimba', 'AM', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_backpack`
--

INSERT INTO `teacher_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `fname`) VALUES
(1, 'admin/uploads/4199_File_425-Lecture-3.pdf', '2022-10-19 12:16:42', 'Read and do some research on the Lecture', 25, 'Net Centric 3rd Class'),
(2, 'admin/uploads/1441_File_CSC 411 Distributed  Computing.pdf', '2022-11-15 10:24:01', 'Distributed Computing', 22, 'Distributed Computing');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(189, 22, 28, 43, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(190, 22, 28, 56, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(193, 25, 28, 52, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(194, 25, 27, 62, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(214, 231, 28, 44, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(216, 231, 28, 51, 'admin/uploads/thumbnails.jpg', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00'),
(40, '<p>join class now with this link ..............................</p>\r\n', '22', 189, '2022-10-07 13:36:40'),
(41, '<p>this</p>\r\n', '22', 189, '2022-10-07 13:36:56'),
(42, '<p>class management</p>\r\n', '25', 193, '2022-10-19 12:05:56'),
(43, '<p>join the class with this link&nbsp;<strong>google.meet/bb-tdfgd</strong></p>\r\n', '22', 189, '2022-11-17 12:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(390, 189, 223, 22),
(391, 189, 224, 22),
(392, 189, 226, 22),
(393, 189, 227, 22),
(394, 189, 228, 22),
(388, 189, 229, 22),
(395, 189, 230, 22),
(396, 189, 231, 22),
(389, 189, 232, 22),
(397, 189, 233, 22),
(398, 189, 234, 22),
(399, 189, 235, 22),
(400, 189, 236, 22),
(401, 189, 237, 22),
(402, 189, 238, 22),
(403, 189, 239, 22),
(404, 189, 240, 22),
(405, 189, 241, 22),
(406, 189, 242, 22),
(407, 189, 243, 22),
(387, 189, 244, 22),
(410, 190, 223, 22),
(411, 190, 224, 22),
(412, 190, 226, 22),
(413, 190, 227, 22),
(414, 190, 228, 22),
(408, 190, 229, 22),
(415, 190, 230, 22),
(416, 190, 231, 22),
(409, 190, 232, 22),
(417, 190, 233, 22),
(418, 190, 234, 22),
(419, 190, 235, 22),
(420, 190, 236, 22),
(421, 190, 237, 22),
(422, 190, 238, 22),
(423, 190, 239, 22),
(424, 190, 240, 22),
(425, 190, 241, 22),
(426, 190, 242, 22),
(427, 190, 243, 22),
(428, 190, 244, 22),
(431, 191, 223, 24),
(432, 191, 224, 24),
(433, 191, 226, 24),
(434, 191, 227, 24),
(435, 191, 228, 24),
(429, 191, 229, 24),
(436, 191, 230, 24),
(437, 191, 231, 24),
(430, 191, 232, 24),
(438, 191, 233, 24),
(439, 191, 234, 24),
(440, 191, 235, 24),
(441, 191, 236, 24),
(442, 191, 237, 24),
(443, 191, 238, 24),
(444, 191, 239, 24),
(445, 191, 240, 24),
(446, 191, 241, 24),
(447, 191, 242, 24),
(448, 191, 243, 24),
(449, 191, 244, 24),
(473, 193, 223, 25),
(474, 193, 224, 25),
(475, 193, 226, 25),
(476, 193, 227, 25),
(477, 193, 228, 25),
(471, 193, 229, 25),
(478, 193, 230, 25),
(479, 193, 231, 25),
(472, 193, 232, 25),
(480, 193, 233, 25),
(481, 193, 234, 25),
(482, 193, 235, 25),
(483, 193, 236, 25),
(484, 193, 237, 25),
(485, 193, 238, 25),
(486, 193, 239, 25),
(487, 193, 240, 25),
(488, 193, 241, 25),
(489, 193, 242, 25),
(490, 193, 243, 25),
(491, 193, 244, 25),
(492, 194, 246, 25),
(558, 212, 223, 231),
(559, 212, 224, 231),
(560, 212, 226, 231),
(561, 212, 227, 231),
(562, 212, 228, 231),
(556, 212, 229, 231),
(563, 212, 230, 231),
(564, 212, 231, 231),
(557, 212, 232, 231),
(565, 212, 233, 231),
(566, 212, 234, 231),
(567, 212, 235, 231),
(568, 212, 236, 231),
(569, 212, 237, 231),
(570, 212, 238, 231),
(571, 212, 239, 231),
(572, 212, 240, 231),
(573, 212, 241, 231),
(574, 212, 242, 231),
(575, 212, 243, 231),
(576, 212, 244, 231),
(580, 214, 223, 231),
(581, 214, 224, 231),
(582, 214, 226, 231),
(583, 214, 227, 231),
(584, 214, 228, 231),
(578, 214, 229, 231),
(585, 214, 230, 231),
(586, 214, 231, 231),
(579, 214, 232, 231),
(587, 214, 233, 231),
(588, 214, 234, 231),
(589, 214, 235, 231),
(590, 214, 236, 231),
(591, 214, 237, 231),
(592, 214, 238, 231),
(593, 214, 239, 231),
(594, 214, 240, 231),
(595, 214, 241, 231),
(596, 214, 242, 231),
(597, 214, 243, 231),
(598, 214, 244, 231),
(622, 216, 223, 231),
(623, 216, 224, 231),
(624, 216, 226, 231),
(625, 216, 227, 231),
(626, 216, 228, 231),
(620, 216, 229, 231),
(627, 216, 230, 231),
(628, 216, 231, 231),
(621, 216, 232, 231),
(629, 216, 233, 231),
(630, 216, 234, 231),
(631, 216, 235, 231),
(632, 216, 236, 231),
(633, 216, 237, 231),
(634, 216, 238, 231),
(635, 216, 239, 231),
(636, 216, 240, 231),
(637, 216, 241, 231),
(638, 216, 242, 231),
(639, 216, 243, 231),
(640, 216, 244, 231);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(18, 186, 'Submit Assignment file name <b>asdasd</b>', '2020-12-21 10:12:04', 'view_submit_assignment.php', 219, 31),
(19, 193, 'Submit Assignment file name <b>Project Assignment</b>', '2022-10-19 12:09:04', 'view_submit_assignment.php', 231, 32),
(20, 189, 'Add Downloadable Materials file name <b>Project Assignment</b>', '2023-01-08 10:58:09', 'downloadable.php', 231, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss'),
(2, 25, 25, 'admin/uploads/4199_File_425-Lecture-3.pdf', '2022-10-19 12:15:49', 'Read and do some research on the Lecture', 'Net Centric 3rd Class'),
(3, 22, 25, 'admin/uploads/1441_File_CSC 411 Distributed  Computing.pdf', '2022-11-15 10:23:04', 'Distributed Computing', 'Distributed Computing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2013-11-01 11:57:33', '2013-11-18 10:33:54', 10),
(2, 'admin', '2013-11-05 09:52:09', '2013-11-18 10:33:54', 10),
(3, 'admin', '2013-11-08 10:41:09', '2013-11-18 10:33:54', 10),
(4, 'admin', '2013-11-12 22:53:05', '2013-11-18 10:33:54', 10),
(5, 'admin', '2013-11-13 07:07:04', '2013-11-18 10:33:54', 10),
(6, 'admin', '2013-11-13 13:07:58', '2013-11-18 10:33:54', 10),
(7, 'admin', '2013-11-13 13:30:45', '2013-11-18 10:33:54', 10),
(8, 'admin', '2013-11-13 15:25:20', '2013-11-18 10:33:54', 10),
(9, 'admin', '2013-11-13 15:46:28', '2013-11-18 10:33:54', 10),
(10, 'admin', '2013-11-13 16:04:10', '2013-11-18 10:33:54', 10),
(11, 'admin', '2013-11-13 17:31:37', '2013-11-18 10:33:54', 10),
(12, 'admin', '2013-11-13 22:47:45', '2013-11-18 10:33:54', 10),
(13, 'admin', '2013-11-14 10:27:06', '2013-11-18 10:33:54', 10),
(14, 'admin', '2013-11-14 10:27:55', '2013-11-18 10:33:54', 10),
(15, 'admin', '2013-11-14 10:38:08', '2013-11-18 10:33:54', 10),
(16, 'admin', '2013-11-14 10:38:09', '2013-11-18 10:33:54', 10),
(17, 'admin', '2013-11-14 10:41:06', '2013-11-18 10:33:54', 10),
(18, 'admin', '2013-11-14 11:44:08', '2013-11-18 10:33:54', 10),
(19, 'admin', '2013-11-14 21:53:56', '2013-11-18 10:33:54', 10),
(20, 'admin', '2013-11-14 22:03:53', '2013-11-18 10:33:54', 10),
(21, 'admin', '2013-11-16 13:40:56', '2013-11-18 10:33:54', 10),
(22, 'admin', '2013-11-18 10:22:07', '2013-11-18 10:33:54', 10),
(23, 'jkev', '2013-11-18 10:33:59', '2014-02-13 11:19:36', 14),
(24, 'jkev', '2013-11-18 15:20:45', '2014-02-13 11:19:36', 14),
(25, 'jkev', '2013-11-18 15:42:04', '2014-02-13 11:19:36', 14),
(26, 'jkev', '2013-11-18 16:30:14', '2014-02-13 11:19:36', 14),
(27, 'jkev', '2013-11-18 16:36:44', '2014-02-13 11:19:36', 14),
(28, 'jkev', '2013-11-18 17:39:55', '2014-02-13 11:19:36', 14),
(29, 'jkev', '2013-11-18 20:06:49', '2014-02-13 11:19:36', 14),
(30, 'jkev', '2013-11-23 08:04:27', '2014-02-13 11:19:36', 14),
(31, 'teph', '2013-11-23 12:02:27', '2013-11-30 21:33:02', 13),
(32, 'teph', '2013-11-24 08:55:55', '2013-11-30 21:33:02', 13),
(33, 'jkev', '2013-11-25 10:32:16', '2014-02-13 11:19:36', 14),
(34, 'jkev', '2013-11-25 14:33:05', '2014-02-13 11:19:36', 14),
(35, 'jkev', '2013-11-25 15:02:47', '2014-02-13 11:19:36', 14),
(36, 'jkev', '2013-11-25 21:08:19', '2014-02-13 11:19:36', 14),
(37, 'jkev', '2013-11-25 23:49:58', '2014-02-13 11:19:36', 14),
(38, 'jkev', '2013-11-26 00:32:22', '2014-02-13 11:19:36', 14),
(39, 'jkev', '2013-11-26 10:39:52', '2014-02-13 11:19:36', 14),
(40, 'jkev', '2013-11-26 21:48:05', '2014-02-13 11:19:36', 14),
(41, 'jkev', '2013-11-28 23:00:00', '2014-02-13 11:19:36', 14),
(42, 'jkev', '2013-11-28 23:00:06', '2014-02-13 11:19:36', 14),
(43, 'jkev', '2013-11-30 21:28:54', '2014-02-13 11:19:36', 14),
(44, 'teph', '2013-11-30 21:32:54', '2013-11-30 21:33:02', 13),
(45, 'jkev', '2013-12-04 12:45:09', '2014-02-13 11:19:36', 14),
(46, 'teph', '2013-12-04 14:02:19', '', 13),
(47, 'jkev', '2013-12-11 11:56:15', '2014-02-13 11:19:36', 14),
(48, 'jkev', '2013-12-11 12:04:44', '2014-02-13 11:19:36', 14),
(49, 'jkev', '2013-12-12 09:44:34', '2014-02-13 11:19:36', 14),
(50, 'jkev', '2013-12-13 01:48:23', '2014-02-13 11:19:36', 14),
(51, 'jkev', '2013-12-27 09:13:20', '2014-02-13 11:19:36', 14),
(52, 'jkev', '2013-12-27 10:18:38', '2014-02-13 11:19:36', 14),
(53, 'jkev', '2013-12-27 10:35:43', '2014-02-13 11:19:36', 14),
(54, 'jkev', '2013-12-27 11:08:54', '2014-02-13 11:19:36', 14),
(55, 'jkev', '2013-12-27 11:20:25', '2014-02-13 11:19:36', 14),
(56, 'jkev', '2013-12-27 11:41:58', '2014-02-13 11:19:36', 14),
(57, 'jkev', '2013-12-27 11:43:10', '2014-02-13 11:19:36', 14),
(58, 'jkev', '2013-12-27 14:54:57', '2014-02-13 11:19:36', 14),
(59, 'jkev', '2014-01-12 20:08:26', '2014-02-13 11:19:36', 14),
(60, 'jkev', '2014-01-13 15:24:07', '2014-02-13 11:19:36', 14),
(61, 'jkev', '2014-01-13 18:46:08', '2014-02-13 11:19:36', 14),
(62, 'jkev', '2014-01-15 20:40:15', '2014-02-13 11:19:36', 14),
(63, 'jkev', '2014-01-16 14:42:02', '2014-02-13 11:19:36', 14),
(64, 'jkev', '2014-01-17 09:16:17', '2014-02-13 11:19:36', 14),
(65, 'jkev', '2014-01-17 13:25:51', '2014-02-13 11:19:36', 14),
(66, 'admin', '2014-01-17 14:41:30', '2023-01-12 19:53:20', 15),
(67, 'admin', '2014-01-17 15:56:32', '2023-01-12 19:53:20', 15),
(68, 'admin', '2014-01-26 17:45:31', '2023-01-12 19:53:20', 15),
(69, 'admin', '2014-02-13 10:45:17', '2023-01-12 19:53:20', 15),
(70, 'admin', '2014-02-13 11:05:27', '2023-01-12 19:53:20', 15),
(71, 'jkev', '2014-02-13 11:16:48', '2014-02-13 11:19:36', 14),
(72, 'admin', '2014-02-13 11:55:36', '2023-01-12 19:53:20', 15),
(73, 'admin', '2014-02-13 12:32:38', '2023-01-12 19:53:20', 15),
(74, 'admin', '2014-02-13 12:52:05', '2023-01-12 19:53:20', 15),
(75, 'admin', '2014-02-13 13:04:35', '2023-01-12 19:53:20', 15),
(76, 'jkev', '2014-02-13 14:35:27', '', 14),
(77, 'admin', '2014-02-20 09:40:39', '2023-01-12 19:53:20', 15),
(78, 'admin', '2014-02-20 09:42:21', '2023-01-12 19:53:20', 15),
(79, 'admin', '2014-02-27 22:40:15', '2023-01-12 19:53:20', 15),
(80, 'admin', '2014-02-28 13:12:52', '2023-01-12 19:53:20', 15),
(81, 'admin', '2014-04-02 17:27:47', '2023-01-12 19:53:20', 15),
(82, 'admin', '2014-04-03 15:29:38', '2023-01-12 19:53:20', 15),
(83, 'admin', '2014-06-15 12:31:51', '2023-01-12 19:53:20', 15),
(84, 'Admin', '2020-12-21 08:32:51', '2023-01-12 19:53:20', 15),
(85, 'admin', '2020-12-21 08:48:23', '2023-01-12 19:53:20', 15),
(86, 'admin', '2022-10-07 11:09:35', '2023-01-12 19:53:20', 15),
(87, 'admin', '2022-10-07 11:54:51', '2023-01-12 19:53:20', 15),
(88, 'admin', '2022-10-07 13:17:43', '2023-01-12 19:53:20', 15),
(89, 'admin', '2022-10-07 13:59:31', '2023-01-12 19:53:20', 15),
(90, 'admin', '2022-10-07 19:01:53', '2023-01-12 19:53:20', 15),
(91, 'admin', '2022-10-07 19:32:40', '2023-01-12 19:53:20', 15),
(92, 'admin', '2022-10-08 10:08:47', '2023-01-12 19:53:20', 15),
(93, 'admin', '2022-10-10 15:05:13', '2023-01-12 19:53:20', 15),
(94, 'admin', '2022-10-12 13:54:08', '2023-01-12 19:53:20', 15),
(95, 'admin', '2022-10-13 10:31:38', '2023-01-12 19:53:20', 15),
(96, 'admin', '2022-10-13 12:05:10', '2023-01-12 19:53:20', 15),
(97, 'admin', '2022-10-18 14:06:32', '2023-01-12 19:53:20', 15),
(98, 'admin', '2022-10-19 12:18:05', '2023-01-12 19:53:20', 15),
(99, 'admin', '2022-10-19 12:30:28', '2023-01-12 19:53:20', 15),
(100, 'admin', '2022-10-20 11:37:21', '2023-01-12 19:53:20', 15),
(101, 'admin', '2022-10-24 14:04:45', '2023-01-12 19:53:20', 15),
(102, 'admin', '2022-11-14 12:05:45', '2023-01-12 19:53:20', 15),
(103, 'admin', '2022-11-15 09:59:27', '2023-01-12 19:53:20', 15),
(104, 'admin', '2022-11-15 13:22:16', '2023-01-12 19:53:20', 15),
(105, 'admin', '2022-11-15 17:19:17', '2023-01-12 19:53:20', 15),
(106, 'admin', '2022-11-25 14:41:48', '2023-01-12 19:53:20', 15),
(107, 'admin', '2022-12-22 09:29:50', '2023-01-12 19:53:20', 15),
(108, 'admin', '2023-01-12 19:24:22', '2023-01-12 19:53:20', 15),
(109, 'admin', '2023-01-12 19:52:49', '2023-01-12 19:53:20', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `quiz_question_id` (`quiz_question_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `teacher_id_2` (`teacher_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`),
  ADD KEY `quiz_time` (`quiz_time`),
  ADD KEY `teacher_class_id` (`teacher_class_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`),
  ADD KEY `teacher_class_id` (`teacher_class_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `teacher_class_id` (`teacher_class_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `teacher_id` (`teacher_id`,`class_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `reciever_id` (`reciever_id`,`sender_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`),
  ADD KEY `reciever_id` (`reciever_id`,`sender_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `teacher_class_id` (`teacher_class_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`),
  ADD KEY `student_id` (`student_id`,`notification_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`),
  ADD KEY `teacher_id` (`teacher_id`,`notification_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`),
  ADD KEY `quiz_id` (`quiz_id`,`question_type_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `assignment_id` (`assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`),
  ADD KEY `class_quiz_id` (`class_quiz_id`,`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `department_id_2` (`department_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`),
  ADD KEY `teacher_id` (`teacher_id`,`class_id`,`subject_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `teacher_class_id` (`teacher_class_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`),
  ADD KEY `teacher_class_id` (`teacher_class_id`,`student_id`,`teacher_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`),
  ADD KEY `teacher_class_id` (`teacher_class_id`,`student_id`,`assignment_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`),
  ADD KEY `teacher_id` (`teacher_id`,`shared_teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD CONSTRAINT `teacher_class_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_log` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
