-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql308.infinityfree.com
-- Generation Time: Jan 26, 2024 at 10:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_35510120_employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(5, 'admin', '2138cb5b0302e84382dd9b3677576b24', 'patel vivek', 'admin@gmail.com', '2008-12-31 19:46:49'),
(7, 'swaminarayan', 'f851256dff2a8825ad4af615111b6a4f', 'SWAMINARAYAN', 'SWAMINARAYAN@GMAIL.COM', '2024-01-08 16:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `permanentaddress` varchar(255) DEFAULT NULL,
  `jobaddress` varchar(255) DEFAULT NULL,
  `jobtiming` varchar(255) DEFAULT NULL,
  `mobilenumber` varchar(255) DEFAULT NULL,
  `StudentImages` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'M.sc(IT)', 'HR', 'HR160', '2020-11-01 07:16:25'),
(13, 'Mechanical ', 'Mech', '00000', '2023-12-18 16:01:03'),
(14, 'Computer engineering ', 'Cp', '1741', '2023-12-18 16:01:11'),
(15, 'B.B.A(G)', 'B.B.A(G)', '00', '2023-12-18 16:13:44'),
(16, 'BHMS', 'BHMS ', '00', '2023-12-18 16:32:38'),
(17, 'Bachelor of science', 'Bsc', '00', '2023-12-18 16:35:50'),
(18, 'Diploma In medical Laboratory Technology ', 'DMLT', '105', '2023-12-18 16:35:54'),
(19, 'B.A', 'B.A', '00', '2023-12-18 16:36:07'),
(20, 'Computer Engineering ', 'CE', '00', '2023-12-18 16:36:14'),
(21, 'B.com', 'B.com', '00', '2023-12-18 16:36:14'),
(22, 'MBA', 'MBA', '000', '2023-12-18 16:36:16'),
(23, 'Computer engineering', 'CE', '00', '2023-12-18 16:36:23'),
(24, 'Bachelors of Business Administration ', 'B.B.A.', '00', '2023-12-18 16:37:22'),
(25, 'Bca', 'Bca', '000', '2023-12-18 16:37:22'),
(26, 'Master in  pharmacy ', 'M pharm ', '000', '2023-12-18 16:38:29'),
(27, 'Bachelor of arts', 'B.A', '000', '2023-12-18 16:50:41'),
(28, 'Bechler of science ', 'B.sc', '00', '2023-12-18 16:54:33'),
(29, 'BHMS', 'BHMS ', '00', '2023-12-19 15:37:28'),
(30, 'CHEMICAL ENGINEERING ', 'CHEMICAL ENGINEERING ', '00', '2023-12-19 15:37:45'),
(31, 'B.PARMA ', 'B.PARMA', '00', '2023-12-19 15:37:47'),
(32, 'Chemical engineering ', 'Chemical engineering ', '00', '2023-12-19 15:37:49'),
(33, 'B.sc(CA & IT)', 'B.sc(CA & IT)', '00', '2023-12-19 15:37:49'),
(34, 'Mechatronics ', 'Mechatronics ', '00', '2023-12-19 15:38:08'),
(35, 'Bachelor of physiotherapy', 'BPT', '000', '2023-12-19 15:40:27'),
(36, 'B.com', 'B.com', '00', '2023-12-19 15:59:29'),
(37, 'B.com', 'B.com', '00', '2023-12-19 15:59:32'),
(38, 'BCA ', 'BCA ', '00', '2023-12-19 15:59:33'),
(39, 'B.com', 'B.com', '00', '2023-12-19 15:59:33'),
(40, 'B.com', 'B.com', '00', '2023-12-19 15:59:35'),
(41, 'B.B.A', 'B.b.a', '00', '2023-12-19 15:59:35'),
(42, 'BCA', 'BCA', '00', '2023-12-19 15:59:47'),
(43, 'BBA(HM)', 'BBA(HM)', '00', '2023-12-19 15:59:47'),
(44, 'electronic communication', 'EC', '00', '2023-12-19 16:17:48'),
(45, 'electrical ', 'electrical', '00', '2023-12-19 16:22:25'),
(46, 'B.Tech(IT)', 'b.tech(it)', '000', '2023-12-19 16:39:52'),
(47, 'mechatronics', 'mechatronics', '00', '2023-12-19 16:40:41'),
(48, 'B.E(IT)', 'B.E(IT)', '00', '2023-12-19 16:47:27'),
(49, 'computer science design', 'computer science design', '00', '2023-12-19 17:03:13'),
(50, 'B.voc', 'B.voc', '00', '2023-12-19 17:04:00'),
(51, 'B.SC(IT)', 'B.SC(IT)', '00', '2023-12-20 15:19:21'),
(52, 'Artificial Intelligence & Data Science', 'Artificial Intelligence & Data Science', '00', '2023-12-20 15:49:13'),
(53, 'deploma (IT)', 'deploma (IT)', '00', '2023-12-20 16:12:27'),
(54, 'Ielts', 'Ielts', '00', '2023-12-20 16:29:10'),
(55, 'sscgd', 'sscgd', '00', '2023-12-20 16:31:42'),
(56, 'civil engineering', 'civil engineering', '00', '2023-12-20 16:32:25'),
(57, 'diploma computer ', 'diploma computer ', '00', '2023-12-20 16:39:21'),
(58, 'LLB', 'LLB', '00', '2024-01-08 15:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `RoomNo` varchar(255) DEFAULT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `ParentName` varchar(255) DEFAULT NULL,
  `Occupation` varchar(255) DEFAULT NULL,
  `ParentMobileno` varchar(255) DEFAULT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `District` varchar(255) DEFAULT NULL,
  `Taluko` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Pincode` varchar(255) DEFAULT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `photo`, `EmpId`, `FirstName`, `LastName`, `RoomNo`, `EmailId`, `Password`, `Gender`, `Dob`, `ParentName`, `Occupation`, `ParentMobileno`, `Department`, `Address`, `City`, `Country`, `District`, `Taluko`, `State`, `Pincode`, `Phonenumber`, `Status`, `RegDate`) VALUES
(44, '8.PNG', 'VN0008', 'Badreshiya ', 'Darshit ', '207', 'darshitpatel71103@gmail.com', 'd1fadf7ee87ec5de472a68afca48c2e8', 'Male', '2003-11-07', 'Rakeshbhai ', 'Farmer', '9824618147', 'Computer engineering ', 'Hifli,ambali valu padu,botad', 'Botad', 'india', 'Botad', 'Botad', 'gujarat', '364710', '7048182482', 1, '2023-12-18 16:04:04'),
(45, '165.PNG', 'VN0165', 'Vishvas', 'Kakdiya', '226', 'vishvaskakdiya92@gmail.com', 'dfa4d0eb41df1dc028c302838b398de9', 'Male', '2005-12-17', 'Rajubhai kakdiya', 'Engineer', '9265965235', 'Mechanical ', 'D-2/404/Sai Milan residency/mota varachha/surat', 'Surat', 'india', 'Bhavnagar ', 'Umrala', 'gujarat', '394101', '9265965235', 1, '2023-12-18 16:05:14'),
(47, '55.PNG', 'VN0055', 'radadiya', 'kirtanbhai', '320/1', 'kirtanradadiya92@gmail.com', 'a6d91ad83c54e7c59a60f55bf7611fad', 'Male', '2006-07-23', 'dharmeshbhai', 'Bussiness man', '7874228689', 'B.B.A(G)', '68, gokul nagar near rachna kapodra surat', 'surat', 'india', 'surat', 'surat', 'gujarat', '395006', '9265894538', 1, '2023-12-18 16:23:36'),
(48, '9.PNG', 'VN0009', 'Chauhan ', 'Jatin ', '219/1', 'chauhanjatin176@gmail.com', '34c3dddd20d3285d7dd5f6038f473f6b', 'Male', '2003-06-17', 'chauhan bharatbhai', 'Farmer', '9898719776', 'BHMS', 'om shantinagar, behind radhe marble, bhavnagar road botad 364710', 'botad', 'india', 'botad', 'botad', 'gujarat', '364710', '9664514305', 1, '2023-12-18 16:35:56'),
(49, '93.PNG', 'VN0093', 'Joshi ', 'Vihar ', '223', 'vihar7336@gmail.com', '617540be50d75b5c5040587abc7e82dc', 'Male', '2004-12-16', 'Joshi Balubhai N.', 'Farmer', '8905289053', 'Bca', 'Jogvad patiya,Jamnagar dwarka highway,gujrat.', 'Jogvad ', 'india', 'Jamnagar ', 'Lalpur ', 'gujarat', '361280', '9687830169', 1, '2023-12-18 16:40:12'),
(50, '124.PNG', 'VN0124', 'MITKUMAR', 'GOLAVIYA', '222', 'golaviyameet@gmail.com', '29837714fce6e12ad7c8ded39827d24f', 'Male', '2006-01-17', 'HIMMATBHAI', 'Farmer', '9727550128', 'B.com', 'Velavdar ta.gariyadhar', 'VELAVADAR', 'india', 'Bhavnagar', 'Gariyadhar', 'gujarat', '364505', '8154977812', 1, '2023-12-18 16:40:31'),
(52, '207.PNG', 'VN207', 'Laxman', 'Vagh', '222', 'laxmanvagh07@gmail.com', '6ba671bbe3c3b1828217a703dcf19e59', 'Male', '2003-07-03', 'Ghanshyambhai Vagh', 'Farmer', '9824557590', 'Bachelors of Business Administration ', 'F-144, G.C.W. Township, UTCL, KOVAYA ', 'Kovaya', 'india', 'Amreli', 'Rajula', 'gujarat', '365541', '8320535246', 1, '2023-12-18 16:41:34'),
(53, '121.PNG', 'VN0121', 'HARSH', 'PORIYA', '314', 'harshporiya20@gmail.com', 'ead133ac6f4cef40c2c11cdb13554749', 'Male', '2003-01-20', 'Poriya vasantbhai ', 'other', '9624213770', 'MBA', 'Ram ranuja society street no.2 kothariya main road RAJKOT', 'Rajkot ', 'india', 'Rajkot ', 'Rajkot', 'gujarat', '360002', '9265970294', 1, '2023-12-18 16:41:54'),
(54, '253.PNG', 'VN0253', 'Pandit ', 'Nikhil ', '315', 'nandanpandit2001@gmail.com', '56caffbf5ec62af10eff8082462a6041', 'Male', '2001-11-15', '9879186142', 'other', '9879186142', 'Master in  pharm ', 'Near Ram mandir ', 'Jamkandorna ', 'india', 'Rajkot ', 'Jamkandorna ', 'gujarat', '360405', '7623879742', 1, '2023-12-18 16:42:46'),
(55, '88.PNG', 'VN0088', 'Sarang', 'Patel', '217', 'patelsarang270@gmail.com', '31f68ae3a705a5e728c634fd96255363', 'Male', '2004-07-06', 'Mahendrabhai', 'Farmer', '9427367097', 'Bachelor of science', 'Takhatgadh ', 'Takhatgadh ', 'india', 'Sabarakantha', 'Prantij', 'gujarat', '383210', '9723460311', 1, '2023-12-18 16:43:42'),
(58, '192.PNG', 'VN0192', 'Bambhaniya ', 'Gautam ', '316', 'ahirgautam095@gmail.com', 'f2d9e293888ebf19672d961db76f987d', 'Male', '2006-06-30', 'Khimjibhai ', 'Farmer', '6352557196', 'B.A', 'Karla , Jesar , Bhavnagar ', 'Karla', 'india', 'Bhavnagar ', 'Jesar', 'gujarat', '364280', '9313785538', 1, '2023-12-18 16:46:13'),
(59, '225.PNG', 'VN0225', 'Satola ', 'Vanraj ', '317', 'vsatola019@rku.ac.in', '4f4d381aa2977eb3b910c94d7d5c4483', 'Male', '2001-06-03', 'Manjibhai ', 'Bussiness man', '7984975728', 'Diploma In medical Laboratory Technology ', '37,nr Hanumanji temp. , vagadiya road,khakharala ', 'Khakharala ', 'india', 'Surendranagar ', 'Muli', 'gujarat', '363510', '7984975728', 1, '2023-12-18 16:46:42'),
(60, '243.PNG', 'VN0243', 'Dabhi', 'Anmol ', '323', 'anmoldabhi22@gmail.com', 'baee8c841465ad370c09db2e27b271ae', 'Male', '2005-10-25', 'Dabhi Dipakbhai K.', 'Farmer', '7878818139', 'Bachelor of arts', 'Jain mandir pachhad adapar ,palitana, bhavanagar ', 'Adapar', 'india', 'Bhavanagar ', 'Palitana ', 'gujarat', '364265', '8320362990', 1, '2023-12-18 16:56:03'),
(61, '140.PNG', 'VN0140', 'jainish', 'dasadiya', '314/2', 'jainishdasadiya2120@gmail.com', '7cbbc409ec990f19c78c75bd1e06f215', 'Male', '2007-10-20', 'arvindbhai', 'Engineer', '9898286577', 'Computer Engineering ', 'PLOT NO 96, G-2, NILGAGAN APARMENT, WARD 9BD, GANDHIDHAM,KUTCH', 'gandhidham', 'india', 'kutch', 'kutch', 'gujarat', '370201', '7041311029', 1, '2023-12-18 16:57:54'),
(62, '266.PNG', 'VN0266', 'Joshi', 'Kavy', '316', 'jkavy447@gmail.com', '9208bcb32bf851e0a12a3db43819048a', 'Male', '2006-05-28', 'Dilip Bhai bhayshankarbhai joshi', 'other', '8160681020', 'Bechler of science ', 'Srijinagar society plot no 26', 'Shihor ', 'india ', 'BHAVNAGAR ', 'Shihor ', 'gujarat', '364240', '7096531233', 1, '2023-12-18 16:58:54'),
(63, '233.PNG', 'VN0233', 'MAYANK', 'CHHAYANI', '314/4', 'mayankchhayani2004@gmail.com', '360bbffae8b27e850fced655f6f8fdac', 'Male', '2004-05-27', 'PRAVINBHAI', 'Bussiness man', '9510353310', 'Computer Engineering ', 'SWAMINARAYAN TEMPLE STREET', 'JASDAN', 'india', 'RAJKOT', 'JASDAN', 'gujarat', '360050', '9510353310', 1, '2023-12-18 17:02:19'),
(64, '108.PNG', 'VN0108', 'MAYUR', 'KHIMANI', '216', 'mayurkhimani570@gmail.com', 'f92d0f11006d1ef9c54b396d79250f77', 'Male', '2004-06-01', 'KISHORBHAI KHIMANI', 'Farmer', '9875030557', 'B.sc(CA & IT)', 'Behind bus stop navaniya', 'Navaniya', 'india', 'Amreli', 'Babra', 'gujarat', '365421', '7984041256', 1, '2023-12-19 15:41:18'),
(65, '117.PNG', 'VN00117', 'Preet', 'Kakdiya', '308/6', 'preetkakdiya293@gmail.com', '097e9608e591c380a625a70a0f81660d', 'Male', '2006-03-15', 'Bipinbhai', 'other', '9913087100', 'Computer Engineering ', '184,gautam park,l.h road, SURAT ', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395010', '9909129918', 1, '2023-12-19 15:41:29'),
(66, '271.PNG', 'VN0271', 'Mayur ', 'Bharadiya ', '220', 'mayurbharadiyamayurv@gmail.com', 'cf9fec423b90fb66f7cb9ed854dc0dd4', 'Male', '2004-04-17', 'Vanrajbhai', 'other', '+91798405815', 'BHMS', 'Pakashetnivadi dhankaniya road botad', 'Botad ', 'India', 'Botad ', 'Botad ', 'Gujarat', '364710', '7984058158', 1, '2023-12-19 15:41:37'),
(67, '41.PNG', 'VN0041', 'Sangani', 'Meet', '214', 'sanganimeet320@gmail.com', '133067545e6d701e61248d33b5e76274', 'Male', '2007-12-02', 'Sangani Haribhai', 'Bussiness man', '9512195151', 'Chemical engineering ', '127 mamata park v-3 near kapodra police station varacha road surat ', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395006', '8799582004', 1, '2023-12-19 15:42:54'),
(68, '31.PNG', 'VN0031', 'Vairag ', 'Sangani ', '215', 'sanganivairag56@gmail.com', 'ebcb14fe6abadf4294d914c7c1f8c241', 'Male', '2004-10-31', 'Sangani Suresh Bhai ', 'Bussiness man', '9909483212', 'B.PARMA ', '67, parmukha Park society Puna gama surat', 'Surat ', 'india', 'Surat ', 'Surat ', 'gujarat', '395010', '9327085173', 1, '2023-12-19 15:43:08'),
(69, '61.PNG', 'VN0061', 'KIRTAN', 'PARADAVA ', '215', 'kirtanparadava26@gmail.com', 'fe5f6ab471acbb52054eb40cd97b8c05', 'Male', '2002-10-26', 'PARADAVA KANUBHAI', 'Farmer', '9727289822', 'CHEMICAL ENGINEERING ', '1895,Navi vasahat ,dhari,DHARI,Amreli, Gujarat,365640', 'DHARI', 'india', 'AMRELI', 'DHARI', 'gujarat', '365640', '7069136693', 1, '2023-12-19 15:44:01'),
(70, '213.PNG', 'VN0213', 'Manan ', 'Thacker ', '219', 'mananthacker757@gmail.com', '7faeecc6e61f1a2f2b7be1fb33e07f24', 'Male', '2006-04-10', 'Videsh bhai', 'Bussiness man', '9879763860', 'Bachelor of physiotherapy', 'Bharat nager', 'Gandhidham', 'India', 'Kutch', 'Gandhidham', 'Gujarat', '370201', '8799219281', 1, '2023-12-19 15:44:46'),
(71, '230.PNG', 'VN230', 'Ankit', 'Bhudia', '209', 'ankitbhudia0@gmail.com', 'a896af4a8e9ae13130918b4d99b5afa9', 'Male', '2004-01-28', 'Parbat Bhudia ', 'other', '738908040', 'Mechatronics ', 'Near SBI surajpar', 'Surajpar, Bhuj-Kutch ', 'India', 'Kutch', 'Bhuj', 'Gujarat', '370427', '7984470262', 1, '2023-12-19 15:45:18'),
(72, '178.PNG', 'VN178', 'sneh', 'gabani', '308/4', 'gabanisneh3@gmail.com', '52d080a3e172c33fd6886a37e7288491', 'Male', '2005-09-17', 'vinodbhai', 'Bussiness man', '9898212282', 'Computer engineering', 'c-613 suman shresth', 'surat', 'india', 'bhavanagar', 'gadhda', 'gujarat', '395004', '8928200486', 0, '2023-12-19 15:57:15'),
(73, '161.PNG', 'VN0161', 'Raj', 'Kargathiyah ', '320', 'rajkargathiya5480@gmail.cim', 'c572bd9db70d3edb75415f68cedc861b', 'Male', '2005-07-17', 'Virambhai ', 'Farmer', '9725962728', 'B.com', 'Gam vistar , Kotha seri  chandvana ', 'Chandvana', 'India', 'Junagadh ', 'Mangrol ', 'Gujarat', '362225', '6355242920', 1, '2023-12-19 16:04:57'),
(74, '160.PNG', 'VN160', 'Bamrotiya ravi rambhai ', 'Bamrotiya ravi rambhai ', '320', 'ravirbamrotiya@gmail.com', '1561045ef8fb9763c3b6456275c892c5', 'Male', '', 'Rambhai ', 'Farmer', '9427385087', 'B.com', 'Charvad vistar swaminarayan mandir pase lohej mangrol junagadha ', 'Lohej ', 'india', 'Junagadha ', 'Mangrol ', 'gujarat', '362225', '9106825379', 1, '2023-12-19 16:05:11'),
(75, '91.PNG', 'VN0091', 'PRINCE ', 'Dodiya', '322', 'Princedodiya96@gmail.com', '164d37c12252dafc3bc5f7d7366d3608', 'Male', '2005-10-03', 'KHIMJIBHAI ', 'Farmer', '9662600058', 'Bca', 'NAGNESH,BOTAD', 'NAGNESH', 'india', 'Botad', 'Ranpur ', 'gujarat', '363415', '7778810802', 1, '2023-12-19 16:05:12'),
(76, '219.PNG', 'VN0219', 'Kaushal ', 'Makwana', '321', 'kaushalmakwana141@gmail.com', 'ac41e6698a9202b7d55989fb0ed584f2', 'Male', '2006-08-20', 'Jagdish Bhai ', 'Farmer', '9925668391', 'Bca', 'Ramji mandir sheri , juna Ratanpur ', 'Juna Ratanpur ', 'india', 'Bhavnagar ', 'Vallbhipur ', 'gujarat', '364310', '7202004515', 1, '2023-12-19 16:05:12'),
(77, '215.PNG', 'VN0215', 'Semil', 'Nasit', '322', 'nasitsemil@gmail.com', '6d9557e79c6b40b105d1b8674a9e903d', 'Male', '2005-09-07', 'Chandubhai ', 'Bussiness man', '9510739252', 'B.B.A(G)', 'A-8 tapi darshan soc ', 'Surat ', 'india', 'Surat', 'Surat ', 'gujarat', '395006', '9510739252', 1, '2023-12-19 16:05:12'),
(78, '129.PNG', 'VN0129', 'Tejas', 'Patel', '320', 'tejash2141@gmail.com', '64b55f25e14e8384acce833a34f2f945', 'Male', '2004-01-16', 'Rakeshbhai', 'Farmer', '9723060125', 'B.com', 'Ramji mandir faliya panetha , umalla', 'Panetha', 'india', 'Bharuch', 'Zaghdiya', 'gujarat', '393120', '9723060125', 1, '2023-12-19 16:05:36'),
(79, '109.PNG', 'VN 109', 'Sujal', 'Radadiya ', '320', 'radadiyasujal15117@gmail.com', 'e54242aaea3776c584e90de1552b141a', 'Male', '2005-08-19', 'Pareshbhai', 'Bussiness man', '9979526465', 'B.com', '68,Gokulnagar ', 'Surat ', 'india', 'Surat ', 'Surat ', 'gujarat', '395006', '9106842336', 1, '2023-12-19 16:06:10'),
(80, '59.PNG', 'VN0059', 'harsh', 'suhagiya', '323', 'harshsuhagiya1@gmail.com', 'f5c62c801c77ffcac760f562a1355e03', 'Male', '2005-01-09', 'mukeshbhai', 'other', '9723752506', 'BBA(HM)', '121,panchbhumi banglow, velanja, surat', 'surat', 'india', 'surat', 'kamrej', 'gujarat', '394150', '9624156302', 1, '2023-12-19 16:13:24'),
(81, '270.PNG', 'VN0270', 'Arpit ', 'Pansuriya ', '311', 'arpitpansuriya3@gmail.com', '6d16be3a2624dde8f392142f5050c5ef', 'Male', '2006-06-21', 'Sanjay Bhai ', 'Farmer', '9913536389', 'electronic communication', 'Babra road, Chavand ', 'Chavand', 'India', 'Amreli ', 'Lathi', 'Gujarat', '365435', '7984088527', 1, '2023-12-19 16:22:29'),
(82, '200.PNG', 'VN0200', 'Deep', 'Trapasiya ', '311', 'dtrapasiya502@gmail.com', '3478030eac12f3e400979fef08c27dd6', 'Male', '2006-08-12', 'Manishbhai ', 'Bussiness man', '9979160981', 'Mechanical ', 'A-1/604, shivdhara palace,mota varachha,surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '394101', '9327383071', 1, '2023-12-19 16:24:39'),
(83, '205.PNG', 'VN0205', 'Darshil ', 'Virparia ', '212', 'djvirparia26@gmail.com', '8dc5983b8c4ef1d8fcd5f325f9a65511', 'Male', '2004-10-26', 'Jasmin ', 'Bussiness man', '9426338249', 'Mechanical ', 'B -202 Saurabh Park B/H Samta Flats,  Subhanpura ', 'City', 'india', 'Vadodara ', 'Vadodara ', 'gujarat', '390023', '7575857472', 1, '2023-12-19 16:24:39'),
(85, '264.PNG', 'VN0264', 'Rathod', 'Abhay', '319', 'abhayrathod7147@gmail.com', '3c6bd0c8b801da30a3906285bf18b722', 'Male', '2004-09-06', 'Sureshbhai Rathod', 'Teacher', '9427777116', 'BHMS', 'Shreeji nivas', 'Khari', 'india', 'Bhavnagar', 'Sihor', 'gujarat', '364240', '8160606140', 1, '2023-12-19 16:24:40'),
(86, '223.PNG', 'VN0223', 'Tirth', 'Gadhiya', '310', 'tmgadhiya@gmail.com', 'e44e381f7340300ae09c52d9e994ddbd', 'Male', '2006-04-16', 'Manishbhai Gadhiya', 'Bussiness man', '9879474611', 'electronic communication', '63, Manish Nagar Society, Dabholi Road, Katargam, Surat.', 'Surat', 'india', 'Surat', 'Choryasi', 'gujarat', '395004', '9879474606', 1, '2023-12-19 16:24:41'),
(87, '122.PNG', 'VN0122', 'Ronak', 'Makwana ', '319', 'ronakmakwana9606@gmail.com', 'cabfc8c8d4dfd38b819eb705a57734f2', 'Male', '2004-06-01', 'Rameshbhai ', 'Farmer', '8160504182', 'BHMS', 'Suthar vas', 'Kesardi', 'india', 'Ahmedabad ', 'Bavla', 'gujarat', '382240', '9924265574', 1, '2023-12-19 16:24:41'),
(88, '191.PNG', 'VN0191', 'Jay', 'Solanki ', '209', 'rajanisolanki1712@gmail.com', 'e6c2dc3dee4a51dcec3a876aa2339a78', 'Male', '2006-04-23', 'Rajnibhai Solanki ', 'Engineer', '+91973715090', 'Mechanical ', 'Shreeji nagar same ,gadhada(swa),Botad', 'Gadhada (swa)', 'india', 'Botad', 'Gadhada (swa)', 'gujarat', '364750', '+9197371509', 1, '2023-12-19 16:24:45'),
(89, '154.PNG', 'VN0154', 'Div', 'Anaghaan', '209', 'divanaghan@gmail.com', '898113d417b4dafb0da0f8f431fc1543', 'Male', '2005-07-06', 'Vipulbhai Anaghan', 'other', '9879371279', 'Mechanical ', 'B-147 Tulsi darshan society ,Yogi chowk ', 'Puna-simada road', 'india', 'Surat', 'Surat ', 'gujarat', '395006', '9427443125', 1, '2023-12-19 16:24:49'),
(90, '212.PNG', 'VN0212', 'Rohan', 'Varsani', '311', 'rohanvarsani06@gmail.com', '4c27c2254f74b8794798b8bc531ff0f5', 'Male', '2006-05-12', 'Mukeshbhai', 'Bussiness man', '9427250870', 'electrical ', 'Bharasar', 'Bharasar', 'india', 'Kutch', 'Bhuj', 'gujarat', '370030', '9909074024', 1, '2023-12-19 16:25:16'),
(91, '127.PNG', 'VN0127', 'Longhan ', 'Tarun', '318', 'tp25482548@gmail.com', 'd4c1541e11ab74bedfd52a8b063b9a1e', 'Male', '2006-07-05', 'Dinesh bhai Longhan ', 'Bussiness man', '9726025333', 'B.B.A', '48 santoshi Krupa society puna gam surat', 'Abharampara ', 'india', 'Amareli', 'Savarkundala', 'gujarat', '395010', '9316330038', 1, '2023-12-19 16:27:08'),
(92, '198.PNG', 'VN0198', 'Shyam', 'Pareshbhai', '318', 'shyamgajera32@gmail.com', 'ad82cf9a164fd4409f877eaf864c9174', 'Male', '2005-12-08', 'Pareshbhai Gajera', 'other', '9328558177', 'Bca', 'Kothariya Main Rd', 'Rajkot, Kotharia', 'India', 'Rajkot', 'Rajkot', 'Gujarat', '360022', '9327472306', 1, '2023-12-19 16:44:52'),
(93, '128.PNG', 'VN00128', 'RAVIYA', 'VATSAL', '207', 'vatsalraviya22@gmail.com', '6912028419f32c4118edb5924adc368e', 'Male', '2007-06-14', 'PRAFULBHAI', 'Engineer', '9825517624', 'Computer engineering', 'NEW PLOT NAVALI BAJAR ', 'LILIYA MOTA ', 'india', 'AMRELI ', 'LILIYA MOTA ', 'gujarat', '365535', '8758417624', 1, '2023-12-19 16:47:18'),
(94, '37.PNG', 'VN0037', 'Vaghela', 'Darsh', '312', 'vagheladarsh69@gmail.com', 'b2c5ddac2860434e8f8056996d4054fd', 'Male', '2006-07-17', 'Vaghela Maheshbhai', 'other', '9904603631', 'b.tech(it)', 'Bherai road, bhaktinagar, rajula', 'Rajula', 'india', 'Amreli', 'Rajula', 'gujarat', '365560', '8401103631', 1, '2023-12-19 16:47:19'),
(95, '208.PNG', 'VN0208', 'Bhumbhani ', 'Arvind Kumar ', '316', 'aarvindbhumbhani@gmail.com', '3ddb79d991b3e2cd0a96c37fba9798df', 'Male', '2004-03-24', 'ATULBHAI bhumbhani ', 'other', '9824893901', 'Bechler of science ', 'Sandhavi park  ,New 80 feet road , surendranagar ', 'Khandiya ', 'india', 'Surendranagar ', 'Wadhwan ', 'gujarat', '363002', '7777972692', 1, '2023-12-19 16:47:19'),
(96, '', 'VN', 'Ravi', 'Vataliya ', '210', 'vataliyag174@gmail.com', 'ebfa611d171434ee79ee7abd0493e545', 'Male', '2005-12-27', 'Ghanshyambhai Vataliya ', 'other', '9558990419', 'b.tech(it)', '174, Dangigev soc, v-1, punagam, Surat ', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395010', '8849770674', 1, '2023-12-19 16:47:19'),
(97, '248.PNG', 'VN0248', 'Rajdeep', 'Raval', '313', 'rajdeepraval19@gmail.com', '1b07b22e9dcdc1590fa106bf2226999c', 'Male', '2005-06-19', 'Chhaganbhai raval', 'other', '+91840145634', 'b.tech(it)', '97, Magan Nagar Rd', 'Surat', 'India', 'Surat', 'Surat', 'Gujarat', '395004', '+9184014563', 1, '2023-12-19 16:47:20'),
(98, '16.PNG', 'VN0016', 'Harshil', 'Panchal', '211', 'harshilpanchal752@gmail.com', 'ca4b4a1025e34269d42f20e16c17d68a', 'Male', '2004-03-31', 'Rajesh Kumar ', 'Bussiness man', '7990584271', 'mechatronics', '5, keshav kunj tenament, mahalaxmi corner', 'ahmedabad ', 'india', 'vatva', 'vatva', 'gujarat', '382440', '7698215422', 1, '2023-12-19 16:47:20'),
(99, '30.PNG', 'VN0030', 'Neel', 'Diyora', '208', 'neeldiyora5@gmail.com', '3094c3d1abd32dff9baa746cdbaca5f4', 'Male', '2003-09-04', 'Diyora Jagdishbhai', 'other', '9727017257', 'Computer Engineering ', 'C-1/504 krishna arcade, ved road surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395004', '8799650589', 1, '2023-12-19 16:47:34'),
(100, '22.PNG', 'VN0022', 'Kapopara', 'Mitesh', '219', 'mitukapopara2007@gmail.com', 'a5adfa38dd8636196ad78087f91234ab', 'Male', '2004-07-20', 'Nathabhai', 'other', '9879144360', 'BHMS', 'H-202 silver crest near D-mart yogichowk surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395006', '9724325742', 1, '2023-12-19 16:47:51'),
(101, '115.PNG', 'VN0115', 'HARSH', 'DHAKECHA', '210', 'harshdhakecha118@gmail.com', '7ba9583a56f20b14dee7eb17459d1f85', 'Male', '2004-03-04', 'SHAILESHBHAI', 'Bussiness man', '9825743934', 'B.E(IT)', '118, bhaktinandan sec-1, near shree residency, Ram chowk, mota varachha, surat ', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '394101', '9016275511', 1, '2023-12-19 16:47:59'),
(102, '116.PNG', 'VN0116', 'DHAMELIYA ', 'MEET', '210', 'meetdhameliya36@gmail.com', 'ff2e6f8539ec67f615165f860253f842', 'Male', '2004-02-07', 'JAGDISHBHAI', 'other', '9723645897', 'B.E(IT)', 'B-202 , Apple Heights , Mota varachhha, surat , Gujarat 394101', 'Mota varachhha ', 'india', 'Surat', 'Chorasi', 'gujarat', '394101', '9723121394', 1, '2023-12-19 16:49:20'),
(103, '27.PNG', 'VN0027', 'Khush', 'Savaliya ', '208/5', 'savaliyakhush82012@gmail.com', 'db16e508c7a585d55f8cce9b74bc9866', 'Male', '2004-07-03', 'Rajeshbhai Savaliya ', 'Bussiness man', '+91812818845', 'Computer Engineering ', 'Aalap Colony, Keshod ', 'Keshod ', 'india', 'Junagadh ', 'Keshod ', 'gujarat', '362220', '+9181281884', 1, '2023-12-19 17:04:53'),
(104, '217.PNG', 'VN0217', 'Swet', 'Kalathiya', '308/2', 'sgkalathiya3047@gmail.com', 'a63aacfd09711f0907184a03424026c6', 'Male', '2005-09-16', 'Kalathiya ghanshyambhai', '', '8200867325', 'Computer engineering ', 'E-401 sidhdhi vinayak recidency,nr. Bhagya laxmi recidency, Singapore char rasta,surat.', 'Surat', 'india', 'Botad', 'Botad', 'gujarat', '3', '8200867325', 1, '2023-12-19 17:04:54'),
(105, '78.PNG', 'VN0078', 'Bhayani ', 'Dax', '215', 'daxbhayani@gmail.com', 'fb1b943f337e527d76420dbea3a50d38', 'Male', '2006-02-03', 'Bhayani Pravinbhai ', 'other', '9924564019', 'B.PARMA ', '15,rajeshwari soc varachha road surat ', 'Surat', 'india', 'Surat', 'Chorashi', 'gujarat', '395010', '9924595796', 1, '2023-12-19 17:04:54'),
(106, '28.PNG', 'VN0028', 'Prit', 'Sakhvala ', '208-4', 'pritpatel1373@gmail.com', '2ea583136776999497e235760240cac7', 'Male', '2003-11-21', 'Hasmukhbhai Sakhvala ', 'Teacher', '9979998737', 'Computer engineering ', '17,Yogi banglows chtitaliya road, bhadwadi society -jasdan', 'Jasdan ', 'india', 'Rajkot ', 'Jasdan ', 'gujarat', '360050', '9875162607', 1, '2023-12-19 17:04:54'),
(107, '35.PNG', 'VN0035', 'Sakariya', 'Harsh', '208', 'harshsakariya2004@gmail.com', '3f417a72322871178ec2b0a1b7892ea1', 'Male', '2004-11-05', 'Sakariya Ashokbhai', 'other', '+91982447619', 'Computer engineering', 'Timbavadi ', 'Junagadh ', 'india', 'Junagadh ', 'Junagadh ', 'gujarat', '362015', '9106306601', 1, '2023-12-19 17:04:55'),
(108, '167.PNG', 'VN0167', 'HET', 'CHAPDIYA ', '307', 'yogeshchapdiya9466@gmail.com', '4ab1eeed0a002578c8877a67667a63d0', 'Male', '2005-08-05', 'Yogeshbhai chapdiya ', 'Bussiness man', '9898558770', 'Computer engineering', '301,Dwarika -2 app,near swaminarayan temple, zanzarda road, Junagadh ', 'Junagadh ', 'india', 'Junagadh ', 'Junagadh ', 'gujarat', '362001', '635533420', 1, '2023-12-19 17:04:55'),
(109, '14.PNG', 'VN0014', 'Manshyam', 'Malaviya ', '215/1', 'manshyammalaviya997@gmail.com', '7cb2eaeb51464c46e54536ba103c2bca', 'Male', '2001-01-12', 'Sureshbhai Malaviya ', 'Farmer', '9978584626', 'Master in  pharmacy ', 'Near,Swaminarayan Temple Nana Machiyala ', 'Nana Machiyala ', 'india', 'Amreli ', 'Amreli ', 'gujarat', '365601', '7069841401', 1, '2023-12-19 17:04:56'),
(110, '156.PNG', 'VN0156', 'Harsh', 'Mangukia', '309/6', 'harshmangukia44@gmail.com', 'd65018fd608211678bd4c3d2ebba76dd', 'Male', '2004-04-28', 'Shaileshbhai Mangukia', 'Bussiness man', '7990805510', 'B.Tech(IT)', '301,shree Indra,shree recidency,vashiyar,Valsad', 'Vashiyar', 'india', 'Valsad', 'Valsad', 'gujarat', '396001', '7990805510', 1, '2023-12-19 17:04:58'),
(111, '40.PNG', 'VN0040', 'Vidhan', 'Rakholiya', '211', 'vidhanrakholiya3110@gmail.com', '5989d08a6a3c22057d139d375704299f', 'Male', '2004-10-31', 'Rakholiya Jagadishbhai Haribhai', 'Engineer', '9586046339', 'Computer engineering ', '10,Sarita Soc, Kargil Chowk, Punagam, Surat', 'Surat', 'india', 'Surat', 'Choryasi', 'gujarat', '395010', '8488953326', 1, '2023-12-19 17:05:07'),
(112, '60.PNG', 'VN0060', 'mitul', 'talaviya ', '225', 'mitultalaviya2096@gmail.com', '4c1393d00e486e3f4a04ce5e853fd524', 'Male', '2006-09-20', 'nareshbhai ', 'Farmer', '+91635449413', 'Bca', 'rajavadar ', 'rajavadar', 'india', 'bhavnagar', 'mahuva', 'gujarat', '364290', '+9163544941', 1, '2023-12-19 17:05:17'),
(113, '11.PNG', 'VN0011', 'Premal', 'Thummar', '221', 'premalthummar13@gmail.com', '9b960c0f82f2d43ccbc1103d435c4ff9', 'Male', '2003-11-19', 'Mansukhbhai', 'other', '9824739890', 'B.com', '242,Sarita society Kargil chowk , punagam , surat', 'Surat', 'india', 'Surat ', 'Surat', 'gujarat', '395010', '9429949890', 1, '2023-12-19 17:05:21'),
(114, '21.PNG', 'VN0021', 'KAVAN', 'PATEL', '210/6', 'kavanpatel4321@gmail.com', '8d984b4d22817784fc119b85242e534b', 'Male', '2004-10-05', 'BHARATBHAI PATEL', 'Farmer', '9824765025', 'b.tech(it)', '276,Patel faliyu,near Ramji mandir ', 'Kachhchai ', 'india', 'Kheda', 'Mahemdabad', 'gujarat', '387130', '9313203461', 1, '2023-12-19 17:05:24'),
(115, '265.PNG', 'VN0265', 'Yash', 'Kapadiya ', '309/1', 'yashkapadiya1556@gmail.com', 'c7fbf330d6643562c2421e2d1e85824a', 'Male', '2006-05-15', 'Bharatbhai kapadiya ', 'Engineer', '9426249802', 'computer science design', 'Takudipara street no. 13', 'Jetpur', 'india', 'Rajkot ', 'Jetpur ', 'gujarat', '360370', '7490906074', 1, '2023-12-19 17:06:44'),
(116, '234.PNG', 'VN0234', 'Faldu', 'Prit', '217/1', 'falduprit06@gmail.com', 'ee5566c6e90a9bf8a4e52688f6ed0e1b', 'Male', '2006-04-12', 'Dipakbhai ', 'Bussiness man', '9979416012', 'Computer Engineering ', 'B 503 lalitya recidency,uttran,surat ', 'Surat', 'India', 'Surat', '394105', 'Gujarat', '394105', '9081584119', 1, '2023-12-19 17:08:27'),
(117, '170.PNG', 'VN0170', 'Dhrumit', 'Sheladiya', '310/4', 'sheladiyadhrumit@gmail.com', '26657d5ff9020d2abefe558796b99584', 'Male', '2005-12-31', 'Jagdishbhai Sheladiya', 'Farmer', '9824194066', 'b.tech(it)', 'Pansada', 'Pansada', 'india', 'Amreli', 'Babara', 'gujarat', '365421', '7861813330', 1, '2023-12-19 17:16:01'),
(118, '145.PNG', 'VN0145', 'Koyani', 'Harsh', '322', 'harshkoyani400@gmail.com', '2a45e758030fe5f90558d71bdce6a646', 'Male', '', 'Suryakantbhai Kalubhai Koyani ', 'other', '9824962706', 'B.B.A(G)', '40, RUDRA BUNGLOW, A.B.C CIRCLE, SUDAMA CHOWK, MOTAVARACHHA,SURAT', 'Surat', 'india', 'Surat', 'Choryasi', 'gujarat', '394101', '7041832658', 1, '2023-12-20 15:23:13'),
(119, '190.PNG', 'VN0190', 'Ghoghari ', 'Nayan ', '322', 'nayanpatel332005@gmail.com', '62da08eab3b603eafd86635f016a419d', 'Male', '2005-03-03', 'Ghoghari Manilal R .', 'Farmer', '9429022044', 'Bca', 'Swaminarayan seri ravapar ', 'Ravapar ', 'india', 'Bhuj (Kutch)', 'Nakhatrana', 'gujarat', '370625', '7043837999', 1, '2023-12-20 15:26:31'),
(120, '51.PNG', 'VN0051', 'Nayan', 'Gondaliya ', '225/6', 'nayangondaliya99246@gmail.com', '7f25aeb3f3b191fe04a61a174d31ef4b', 'Male', '2006-05-15', 'Mukeshbhai Gondaliya ', 'Bussiness man', '9824235503', 'Bca', 'Laxmivadi ghadhada road Surya restaurant ni same Botad.', 'Botad', 'india', 'Botad', 'Botad', 'gujarat', '364710', '9924635503', 1, '2023-12-20 15:26:32'),
(121, '134.PNG', 'VN0134', 'MITESH ', 'Aniyaliya ', '316', 'miteshaniyaliya5114@gmail.com', '64ad96e04c2f70c4a145eac91974bc2a', 'Male', '2023-12-23', 'Aniyaliya jayeshbhai ', 'Farmer', '9898478482', 'B.SC(IT)', 'Swaminaran temple near chhatriyala ', 'Chhatriyala ', 'india', 'Surendrnager ', 'Chuda ', 'gujarat', '363415', '9601608482', 1, '2023-12-20 15:26:34'),
(122, '210.PNG', 'VN0210', 'Pokar', 'Ronak', '220', 'ronakpokar464@gmail.com', '8809262837be789d421f9e99f6181c77', 'Male', '2005-01-05', 'GopalBhai Khimji Pokar ', 'Farmer', '9427760853', 'Bca', 'Netra Road, Ravapar ', 'Ravapar ', 'india', 'Kutch ', 'Nakhatrana ', 'gujarat', '370625', '8141137267', 1, '2023-12-20 15:26:49'),
(123, '152.PNG', 'VN0152', 'Harshit ', 'Savaliya', '316', 'Harshitsavaliya99@gmail.com', 'fb8df15ed7bf152ee55476e9e3c098e3', 'Male', '2004-03-31', 'Hasmukhbhai parbatbhai savaliya', 'other', '9979139744', 'B.sc(CA & IT)', '108,yamunakunj society,L.H road ,kapodra ,surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395006', '9054055267', 1, '2023-12-20 15:26:56'),
(124, '259.PNG', 'VN0259', 'Jaydip ', 'Ladumor ', '314', 'jaydipladumor415@gmail.com', 'a224cf3978864fe27bd6883bdd7fd6d0', 'Male', '2006-07-17', 'Maganbhai ', 'Farmer', '9537264462', 'Computer engineering ', 'Plot vistar khakhbai rajula', 'Khakhbai ', 'india', 'Amreli', 'Rajula', 'gujarat', '365560', '9510179253', 1, '2023-12-20 15:27:29'),
(125, '220.PNG', 'VN0220', 'Jatin', 'Makwana ', '214', 'jatinmakwana9090@gmail.com', 'c5b6c050c0c12dd93c8b41c3b0dff7bb', 'Male', '2006-01-02', 'Sanjaybhai Makwana ', 'Teacher', '+91706923673', 'electrical ', 'Gokulnagar B', 'Rajula', 'india', 'Amreli', 'Rajula', 'gujarat', '365560', '7069236735', 1, '2023-12-20 15:27:30'),
(126, '63.PNG', 'VN0063', 'AKOLIYA', 'NIHAR', '224/1', 'niharakoliya17@gmail.com', '63311acf971b48c7f634f8e9ac96df1a', 'Male', '2006-04-17', 'hasmukhbhai', 'Bussiness man', '9979693568', 'BCA', '75 sardar villa bunglow velanja rangoli chowdi surat', 'surat', 'india', 'surat', 'surat', 'gujarat', '394150', '9313763275', 1, '2023-12-20 15:32:14'),
(128, '250.PNG', 'VN0250', 'Naimish', 'Kotadiya', '214', 'naimishkotadiya46@gmail.com', 'c724dc97e2f19ad4e231d26aa425b7ca', 'Male', '2005-01-07', 'Ghanshyambhai ', 'other', '9898041397', 'CHEMICAL ENGINEERING ', 'Mamata park society', 'Surat ', 'india', 'Surat ', 'Sur6', 'gujarat', '395006', '9265157662', 1, '2023-12-20 15:45:09'),
(129, '139.PNG', 'VN0139', 'Dhruvin ', 'Nileshbhai Kakadiya ', '307', 'dhruvinkakadiya001@gmail.com', '2405e20edd3fd8509ab0386252d93014', 'Male', '2005-06-23', 'Kakadiya Nileshbhai premajibhai ', 'other', '8200478902', 'Computer engineering ', '4,shrjji nagar-2,ved road,katargam,surat', 'Surat ', 'india', 'Surat ', 'Surat ', 'gujarat', '395004', '9313158045', 1, '2023-12-20 15:50:51'),
(130, '169.PNG', 'VN0169', 'HET', 'GHADIYA', '213', 'ghadiyahet50@gmail.com', 'df2714cb974f94733631816a4a0a0112', 'Male', '2005-12-19', 'GHANSHYAMBHAI MADHUBHAI GHADIYA', 'Farmer', '8128745303', 'Artificial Intelligence & Data Science', 'Bagasara road, lunghiya, 365645', 'Lunghiya', 'India', 'Amreli', '365645', 'Gujarat', '365645', '8866447404', 1, '2023-12-20 15:53:31'),
(131, '187.PNG', 'VN0187', 'Raj', 'Bhalala', '307', 'bhalalaraj65@gmail.com', '7c2596468f44ea718b6a717a932f1cde', 'Male', '2005-09-07', 'Bhalala Pravinbhai', 'other', '9978965036', 'B.sc(CA & IT)', '68 , Ankita park soc. , Kargil chowk , punagam , surat', 'Pachtobra', 'india', 'Bhavnagar', 'Gariyadhar', 'gujarat', '305010', '9499598089', 1, '2023-12-20 15:53:32'),
(132, '130.PNG', 'VN0130', 'Dharmik', 'Mathasoliya', '312', 'mathasoliyadharmik123@gmail.com', 'ac06e022158172a99c5c570e7520325f', 'Male', '2006-03-26', 'Govind Bhai', 'Farmer', '9510990390', 'B.Tech(IT)', 'Near Old Gram-panchayat, Turkha ', 'Turkha', 'india', 'Botad', 'Botad', 'gujarat', '364710', '6353217639', 1, '2023-12-20 15:53:33'),
(133, '', 'VN0275', 'Harsh', 'Poriya', '310', 'harshporiya2506@gmail.com', '1a5af6045321723eca463925de89f2b3', 'Male', '2007-01-06', 'Poriya Ashokbhai Maganbhai', 'Farmer', '8799582699', 'Computer engineering ', 'Jamsar', 'Jamsar', 'india', 'Jamnagar', 'Jodiya', 'gujarat', '363655', '7096662829', 1, '2023-12-20 15:53:34'),
(134, '149.PNG', 'VN0149', 'AUM', 'PATEL', '309', 'aumkeralia406@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Male', '2005-09-21', 'Patel Shirish', 'Engineer', '9974733322', 'Computer engineering', 'Chandranagar society, Block no 2 , Yogikrupa ', 'SURENDRANAGAR', 'india', 'SURENDRANAGAR', 'Wadhwan', 'gujarat', '363001', '9898340002', 1, '2023-12-20 15:53:36'),
(135, '209.PNG', 'VN209', 'MEET', 'BODAR', '317', 'bodarmeet10@gmail.com', 'f00daeba0971c664a714f32e07039b82', 'Male', '2005-11-23', 'BODAR BHAVESH BHAI ', 'other', '+19192651456', 'Artificial Intelligence & Data Science', 'B-86SNEH MILAN SOC CHIKUVADI NANA VARCHHA ROAD SURAT ', 'SURAT ', 'india', 'SURAT', 'SURAT', 'gujarat', '395006', '9265145653', 1, '2023-12-20 15:53:36'),
(136, '114.PNG', 'VN114', 'patel jay', 'Ashvinbhai', '309', 'jayup8440@gmail.com', '6e504ac6ed3068f107a879bc6cf059f4', 'Male', '2006-07-13', 'Patel ashvinbhai kanjibhai', 'Farmer', '9898918175', 'B.sc(CA & IT)', 'Nava plot, gujaravadi ', 'Gujaravadi ', 'india', 'Surednagar ', 'Dhagdhara', 'gujarat', '363310', '9499833628', 1, '2023-12-20 15:53:43'),
(137, '92.PNG', 'VN0092', 'Gaudani', 'Renish', '219', 'renishgaudani07@gmail.com', '3a6295a0696aaf8c7a767cecdf903a4f', 'Male', '2005-02-01', 'ashvinbhai gaudani', 'other', '9726973360', 'BHMS', 'Tulsishyam, near Yogi chowk', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395006', '7435922059', 1, '2023-12-20 15:54:04'),
(138, '162.PNG', 'VN0162', 'Tirth', 'Savaliya', '309', 'tirthsavaliya510@gmail.com', '18bd211bffdd3337a93531e336596177', 'Male', '2005-10-05', 'Sanjaybhai Savaliya', 'other', '9925904104', 'Computer engineering ', '206, saketdham society,punagam,near Kiran chock,surat', 'Surat', 'india', 'Surat ', 'Surat corporation ', 'gujarat', '395010', '9327554490', 1, '2023-12-20 15:54:31'),
(139, '142.PNG', 'VN0142', 'Dungarani ', 'Darshan ', '208', 'dungaranidarshan123@gmail.com', 'f353c9f34219a97909f483696628b829', 'Male', '2005-01-16', 'Ghanshyambhai dungarani ', 'Farmer', '9974180060', 'B.Tech(IT)', 'Gokul graphics main road mandavdhar ', 'Mandavdhar ', 'india', 'Botad', 'Gadhada ', 'gujarat', '364750', '7698333232', 1, '2023-12-20 15:56:27'),
(140, '247.PNG', 'VN0247', 'Parmar', 'Kuldeep', '217', 'parmarravindrasinh612@gmail.com', '529a4d19543157b7556a470a0840bc6d', 'Male', '2006-02-18', 'Parmar pruthvisinh ', 'other', '9537431850', 'B.SC(IT)', 'B-3, New Kosad Rd', 'Surat', 'India', 'Surat ', 'Surat ', 'Gujarat', '394107', '9023582812', 1, '2023-12-20 15:58:46'),
(141, '181.PNG', 'VN0181', 'Dhaval', 'Chauhan', '216', 'cdhaval091@gmail.com', '07e2f56778e7d9bfe16427ee6ae7a73e', 'Male', '2004-08-26', 'Thakorbhai chauhan', 'Farmer', '6356021436', 'Bachelor of science', 'Varna, Dholka, Ahmedabad ', 'Varna', 'india', 'Ahmedabad ', 'Dholka ', 'gujarat', '382265', '7984734550', 1, '2023-12-20 15:58:47'),
(142, '143.PNG', 'VN0143', 'Nirmal', 'Kaneriya', '210', 'kaneriyanirmal@gmail.com', 'd78e88969f3ef16ef9034381711297c9', 'Male', '2005-01-07', 'Girdharbhai ', 'Teacher', '9824876424', 'Computer engineering ', 'Janki nagar, near tower road, mangrol', 'Mangrol', 'india', 'Junagadh ', 'Mangrol', 'gujarat', '362225', '9484681446', 1, '2023-12-20 15:59:03'),
(143, '42.PNG', 'VN0042', 'Vaibhav ', 'Hirpara', '216', 'saisarkar0777@gmail.com', '29932eb16d23d7e0b088bf0d8df151a3', 'Male', '2004-05-21', 'Laljibhai', 'Farmer', '7016640693', 'Bechler of science ', '69 om bunglows', 'Velanja', 'india', 'Surat', 'Kamrej', 'gujarat', '394150', '9510250518', 1, '2023-12-20 16:01:12'),
(144, '70.PNG', 'VN0070', 'Keyur ', 'Pansuriya ', '211', 'keyurpansuriya0000@gmail.com', 'e228eb3526eaf7149e79f0704ffc62cc', 'Male', '2004-03-28', 'Balkrushnabhai H Pansuriya ', 'Farmer', '9925334912', 'B.E(IT)', 'Near water tank bhalgam,bilkha', 'Bhalgam', 'india', 'Junagadh ', 'Junagadh ', 'gujarat', '362110', '6352734488', 1, '2023-12-20 16:17:12'),
(145, '244.PNG', 'VN0244', 'Vaibhav', 'Khunt', '313', 'vkhunt050@gmail.com', 'de4dcf98d63cbb82b5b4b44639dad51a', 'Male', '2005-07-30', 'Maganbhai khunt', 'Farmer', '9909567601', 'B.Tech(IT)', 'Swaminarayan plot, main road dadva', 'Randal na dadva', 'india', 'Amreli', 'Kunkavav', 'gujarat', '365460', '7984175764', 1, '2023-12-20 16:17:22'),
(146, '229.PNG', 'VN0229', 'Uttam', 'Vaghasiya', '310', 'uttamvaghasiya21@gmail.com', '172ef5a94b4dd0aa120c6878fc29f70c', 'Male', '2005-10-21', 'Hashmukhbhai ', 'Bussiness man', '9825161953', 'B.Tech(IT)', '2, Shardavihar soc ,surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395008', '7990085810', 1, '2023-12-20 16:17:23'),
(147, '254.PNG', 'VN0254', 'Hiren ', 'Kalsariya ', '313', 'hirenkalsariya55@gmail.com', 'fae6961e7ae59db922183590f92dc08e', 'Male', '2005-07-07', 'Nandalalbhai ', 'other', '9913499698', 'B.Tech(IT)', '21,Mehta nagar, katargam', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395004', '6351732028', 1, '2023-12-20 16:17:23'),
(148, '111.PNG', 'VN0111', 'PRIT', 'BHUVA ', '312', 'pritbhuva2004@gmail.com', 'c36b81fec8633d77388fc75bd1f21c3d', 'Male', '2004-10-12', 'Ghanshyambhai vallabhbhai bhuva ', 'other', '9725981065', 'B.Tech(IT)', '555, kumkum Residency Kamrej Suart ', 'Surat ', 'India ', 'Surat ', 'Kamrej ', 'Gujarat ', '394185', '9023360414', 1, '2023-12-20 16:17:23'),
(149, '245.PNG', 'VN0245', 'Amit', 'Prajapati ', '212', 'prajapatiamit7899@gmail.com', '99adff456950dd9629a5260c4de21858', 'Male', '2007-08-05', 'Pankajbhai prajapati', 'Bussiness man', '9824016495', 'deploma (IT)', 'Anjesar ta.savli  ji.vadodara', 'Anjesar', 'India', 'Vadodara', 'Savli', 'Gujarat', '391775', '9824015604', 1, '2023-12-20 16:17:23'),
(150, '268.PNG', 'VN0268', 'Madhvin ', 'Vaghasiya', '313', '4548@gmail.com', '184fcdd51690e6f42978d4bcf294025e', 'Male', '2006-02-15', 'Vaghasiya pareshbhai', 'other', '9925822978', 'Computer engineering ', 'B78 Bhagvati krupa society ', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395010', '9773219548', 1, '2023-12-20 16:17:36'),
(151, '231.PNG', 'VN0231', 'Rutik', 'Dobariya ', '315', 'rutu.rmd2020@gmail.com', '2001ca6c8ba34b7f25f70585ecc39209', 'Male', '2005-03-01', 'Mukeshbhai', 'other', '9979904452', 'Computer engineering', '94, Santiniketan Society, Kathodara, Gadhpur road, Surat ', 'Surat', 'india', 'Surat', 'Kamrej', 'gujarat', '394326', '9979004452', 1, '2023-12-20 16:17:39'),
(152, '104.PNG', 'VN0104', 'Yash', 'Varu', '223', 'yashhvaru007@gmail.com', 'aa842af62f60babe0ceac5bb02006ddd', 'Male', '2005-12-02', 'Navinbhai', 'other', '9904889383', 'Bachelors of Business Administration ', 'Greenland society ', 'Anjar', 'india', 'Kachchh', 'Anjar', 'gujarat', '370110', '9586670384', 1, '2023-12-20 16:18:35'),
(153, '46.PNG', 'VN0046', 'VAIBHAV DHARMENDRA', 'VORA', '313/2', 'voravaibhav2208@gmail.com', '9542821608a9fd2c110a8d3de0da4acc', 'Male', '2003-08-22', 'DHARMENDRA GIRDHARBHAI VORA', 'other', '8866669846', 'mechatronics', 'A-104 SUMAN NIKETAN SOCITEY. LALITA KATARGAM SURAT 395004', 'surat', 'india', 'surat', 'surat', 'gujarat', '395004', '9924287823', 1, '2023-12-20 16:19:43'),
(154, '23.PNG', 'VN0023', 'Dixit', 'Virani', '218', 'viranidixit18@gmail.com', '8831f23417aabf2708d770afc6e4e2a8', 'Male', '2001-11-27', 'Dilipbhai virani', 'Farmer', '9327539826', 'Ielts', 'Mota bhamodra', 'Mota bhamodra', 'india', 'Amreli', 'Savar kundala', 'gujarat', '364525', '9327539826', 1, '2023-12-20 16:31:03'),
(155, '150.PNG', 'VN 0150', 'Madhav ', 'Ladva ', '209', 'ladvamadhav05@gmail.com', 'ca698272ab5d7e80e6dfea09a9004558', 'Male', '2003-06-06', 'Rameshbhai manjibhai ladva ', 'Bussiness man', '8866640444', 'Mechanical ', 'Chamunda Krupa vasa vadi plot near airport ', 'Keshod ', 'india', 'Junagadh ', 'Keshod ', 'gujarat', '362220', '8866586868', 1, '2023-12-20 16:32:35'),
(156, '82.PNG', 'VN-0082', 'Chovatiya Rushabh ', 'Mukeshbhai ', '224', 'rushabhchovatiya1@gmail.com', '4a9fb5f65c537b999cf0f3c4874efcc1', 'Male', '2005-06-18', 'Mukeshbhai ', 'other', '+91769839749', 'B.B.A', 'B-297 Tirupati society, Yogichowk, surat ', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395010', '7698397490', 1, '2023-12-20 16:32:37'),
(157, '175.PNG', 'VN0175', 'Mahendrsinh', 'Gohil', '222', 'mahendrsinh377@gmail.com', '2b77bfa3b86d06a3d3c98d32db4552e5', 'Male', '2004-06-24', 'Nanduba', 'Farmer', '6351443550', 'B.com', 'Borana', 'Borana', 'india', 'Surendranagar', 'Limbdi', 'gujarat', '363410', '9510055966', 1, '2023-12-20 16:32:38'),
(158, '151.PNG', 'VN0151', 'DABHOYA ', 'SWAYAM ', '224', 'swayamdabhoya31@gmail.com', '7226102cc9a503d56df58df64a0e3b1e', 'Male', '2005-05-31', 'SURESHBHAI DABHOYA ', 'Bussiness man', '9979945300', 'B.B.A', '31, AKSHARDHAM SOCIETY NEAR LAXMI KANT ASHRAM ROAD KATARGAM SURAT ', 'surat', 'india', 'Surat ', 'Surat ', 'gujarat', '395004', '7984756266', 1, '2023-12-20 16:33:16'),
(159, '196.PNG', 'VN0196', 'ghadiya', 'kevin', '223', 'ghadiyakevin6@gmail.com', 'a588f61c13a948386072c24916554b58', 'Male', '2004-10-06', 'chandreshbhai', 'Bussiness man', '9879146840', 'Bca', '102,shantivan soc-2, sarthana jakatnaka surat', 'surat', 'india', 'surat', 'surat', 'gujarat', '395003', '6351074058', 1, '2023-12-20 16:33:30'),
(160, '273.PNG', 'VN0273', 'Koladiya Meet', 'Shailesh Bhai ', '315', 'meetkoladiya13@gmail.com', '58c6094ba102c45c1641a325d011e632', 'Male', '2006-03-13', 'Shailesh Bhai ', 'other', '+91932822337', 'B.PARMA ', '50, Tirupati Soc-2 near maruti chowk l.h.road Surat-6 ', 'Surat', 'india', 'SURAT', 'Surat', 'gujarat', '395006', '+9193282233', 1, '2023-12-20 16:33:30'),
(161, '', 'VN0203', 'Harsh', 'Badreshiya', '207', 'harshbadreshiya2005@gmail.com', 'db15b7078686c4d267d5a91b9ae48b85', 'Male', '2005-09-02', 'Ramnikbhai ', 'other', '9429466074', 'B.PARMA ', '176,shamarthya bella vista ', 'Surat', 'india', 'Surat', 'Olpad', 'gujarat', '395003', '8487966074', 1, '2023-12-20 16:33:32'),
(162, '237.PNG', 'VN0237', 'Akshay ', 'Gondaliya ', '315', 'akshaygondaliyax07@gmail.com', 'ef4ada69c8608920df58507a5887e0a8', 'Male', '2006-05-15', 'Rajubhai ', 'Farmer', '9687324800', 'BHMS', 'Near swaminarayan mandir bambhaniya ', 'Bambhaniya ', 'india', 'Bhavnagar ', 'Mahuva ', 'gujarat', '395010', '6352982753', 1, '2023-12-20 16:33:42'),
(163, '261.PNG', 'VN0261', 'Zalavdiya ', 'Abhi ', '323', 'abhipatel12106@gmail.com', 'c4255ade63828be90e542f2d337298a5', 'Male', '2006-01-08', 'Divyesh bhai', 'Bussiness man', '9904860070', 'B.B.A(G)', '2,Chitrakut sosayty ', 'Jamjodhpur ', 'india', 'Jamnagar ', 'Jamjodhpur ', 'gujarat', '360530', '9904812106', 1, '2023-12-20 16:34:07'),
(164, '227.PNG', 'VN0227', 'Yash', 'Sabhani', '214', 'sabhaniyash11@gmail.com', 'ba6562f29d5e6f42cfbf557aa08eb687', 'Male', '2003-07-11', 'Jerambhai', 'Farmer', '9725555658', 'M.sc(IT)', 'Ratnpar near ambaji temple Surendranagar ', 'Surendranagar ', 'india', 'Surendranagar ', 'Wadhwan', 'gujarat', '363020', '9104025724', 1, '2023-12-20 16:36:06'),
(166, '258.PNG', 'VN0258', 'Yash ', 'Zatakiya', '218', 'zatakiyayash@gmail.com', '860597464b31f718bc28e3994d28d0f0', 'Male', '2002-08-22', 'Dineshbhai zatakiya ', 'Farmer', '9429320495', 'sscgd', 'S.b.s college ', 'Manavadar ', 'india', 'Junagadh ', 'Manavadar ', 'gujarat', '362630', '9664980333', 1, '2023-12-20 16:37:23'),
(167, '171.PNG', 'VN0171', 'Urvish ', 'Faladu ', '211', 'ufaladu7@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Male', '2004-08-10', 'Manojbhai chandubhai faladu ', 'other', '9638052150', 'civil engineering', 'Umiya Krupa Santeshwar road Joshipura Junagadh ', 'Junagadh ', 'india', 'Junagadh ', 'Junagadh ', 'gujarat', '362001', '9016600296', 1, '2023-12-20 16:37:48'),
(168, '125.PNG', 'VN0125', 'KHOKHAR ', 'HENIL GHANSHYAMBHAI ', '319', 'khokharhenil@gmail.com', 'db727abfd89e91aec39de2ac5e84b45b', 'Male', '2006-01-06', 'GHANSHYAMBHAI KHOKHAR ', 'Farmer', '9898186519', 'B.com', 'VELAVADAR ', 'VELAVADAR ', 'india', 'BHAVNAGAR ', 'GARIYADHAR ', 'gujarat', '364505', '7016576951', 1, '2023-12-20 16:39:55'),
(169, '206.PNG', 'VN0206', 'Vagh', 'Hitesh jinabhai ', '323', 'vaghhitesh676@gmail.com', '7eabe3a1649ffa2b3ff8c02ebfd5659f', 'Male', '2006-04-26', 'Jinabhai ', 'Farmer', '9924953653', 'B.B.A(G)', 'Siv mandir ni bajuma', 'Jolapur', 'india', 'Amreli ', 'Rajula', 'gujarat', '365560', '9924945215', 1, '2023-12-20 16:41:34'),
(170, '257.PNG', 'VN0257', 'Rushang ', 'Savaliya ', '213', 'rushangsavaliya195@gmail.com', 'a934fa44a9e61ceb17d73f979eff509e', 'Male', '2008-05-19', 'Kamalesh bhai Savaliya', 'Farmer', '9427569193', 'diploma computer ', 'Bus stand plot', 'Sarasai', 'india', 'Junagadh ', 'Visavadar ', 'gujarat', '362120', '7069494714', 1, '2023-12-20 16:42:26'),
(171, '171.PNG', 'VN0171', 'Urvish ', 'Faladu ', '211', 'ufaladu7@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Male', '2004-08-10', 'Manojbhai chandubhai faladu ', 'other', '9638052150', 'civil engineering', 'Umiya Krupa , Santeshwar road, Joshipura ', 'Junagadh ', 'india', 'Junagadh ', 'Junagadh ', 'gujarat', '362001', '9016600296', 1, '2023-12-28 16:04:01'),
(172, '214.PNG', 'VN0214', 'Bhargav ', 'Kathiriya ', '212', 'bhargavkathiriya1@gmail.com', '6eea9b7ef19179a06954edd0f6c05ceb', 'Male', '2005-04-01', 'Dipeshkumar Kathiriya ', 'Teacher', '9428709013', 'Mechanical ', 'JADESHWAR NAGAR 1, Hanumanpara road ', 'Amreli', 'india', 'Amreli', 'Amreli', 'gujarat', '365601', '8160950323', 1, '2023-12-28 16:07:53'),
(173, '242.PNG', 'VN0242', 'Maniya ', 'Tirth ', '311', 'maniyatirth0608@gmail.com', '0dfdcee8a57539b813e552d52c8318bd', 'Male', '2008-06-14', 'Shaileshbhai ', 'Engineer', '9825720986', 'Mechanical ', '1101 B, Sankalp ved road ', 'Surat', 'india', 'Gabada', 'Botab', 'gujarat', '394010', '6352678738', 1, '2023-12-28 16:10:28'),
(174, '147.PNG', 'VN0147', 'LAKSHIT ', 'VEKARIYA', '318/2', 'lakshitvekariya@gmail.com', 'a6cfd6f156b9dd5bd2188921f364eb8b', 'Male', '2006-01-09', 'MANISHBHAI', 'Farmer', '9979930440', 'Bca', 'SWAMINARAYN MANDIR DHARESHWAR', 'DHARESHWAR', 'india', 'Amreli', 'RAJULA', 'gujarat', '304560', '8735870505', 1, '2024-01-08 04:59:26'),
(175, '80.PNG', 'VN080', 'MAKWANA ', 'AXAR', '222', 'axarmakwana2010@gmail.com', 'f0a680d273f991a163d90d4f03a08052', 'Male', '2004-08-17', 'GHANSHAYAMBHAI ', 'Farmer', '9106368362', 'Bca', 'KUNDAL ', 'Kundal ', 'india', 'Botad ', 'Barwala ', 'gujarat', '382450', '997976379', 1, '2024-01-08 15:43:40'),
(176, '153.PNG', 'VN0153', 'Paneliya', 'Prashant ', '221', 'paneliyaprashant2005@gmail.com', '33f2ee0c7065987fbe4beffaf62fcfd9', 'Male', '2006-04-13', 'Bharatbhai ', 'Farmer', '8200215899', 'Bca', 'Pipallag ', 'Pipallag ', 'india', 'Amreli', 'Amreli', 'gujarat', '365601', '6351284233', 1, '2024-01-08 15:44:07'),
(177, '36.PNG', 'VN0036', 'Akhil', 'Kalola', '223', 'manish.kalola44@gmail.com', '935e5538874f119fc266a53a68542177', 'Male', '2005-07-29', 'Manish bhai', 'other', '9825840341', 'Bca', 'Gold Nest Appartment,A-303 Near Kadam Heights, Mota Mava, Kalawad Road RAJKOT, GUJARAT 360005 India', 'Rajkot', 'india', 'Rajkot', 'Rajkot', 'gujarat', '360005', '7984466334', 1, '2024-01-08 15:44:19'),
(178, '73.PNG', 'VN0073', 'Makwana ', 'Shailesh ', '216/5', 'shaileshm1204@gmail.com', '7542b42e3e6d158769da4da9da5712be', 'Male', '2006-02-28', 'Katubhai ', 'Farmer', '6351968879', 'Bachelor of science', '18, deri pase, lunej ', 'Lunej', 'india', 'Anand', 'Khambhat ', 'gujarat', '388620', '8849929770', 1, '2024-01-08 15:45:03'),
(179, '74.PNG', 'VN0074', 'Chauhan ', 'Hardikkumar ', '318', 'chauhanhardik7321@gmail.com', '7df584794dbd882b3ff3cb7530fbb3cf', 'Male', '2005-07-07', 'Ajitbhai chauhan ', 'Farmer', '9313084243', 'Bca', 'Swaminarayan Mandir road, vastadi ', 'Vastadi ', 'india', 'Surendranagar', 'Wadhawan ', 'gujarat', '363410', '9328824821', 1, '2024-01-08 15:45:07'),
(180, '157.PNG', 'VN0157', 'RATHOD ', 'BHAVESH', '217', 'br886690@gmail.com', '76f050359a974517fca22c7ececc29b0', 'Male', '2006-05-10', 'HITESHBHAI ', 'Farmer', '9638304560', 'Bachelor of science', 'Daheda, khambhat,Dist-anand', 'Daheda', 'india', 'Anand ', 'Khambhat ', 'gujarat', '388620', '9773129635', 1, '2024-01-08 15:45:25'),
(181, '269.PNG', 'VN0269', 'AKASH', 'KALSARIYA ', '207', 'akashkalsariya88@gmail.com', '2ab74e6c020811b190f2d6abf5b1831f', 'Male', '2004-10-01', 'JENTIBHAI ', 'Engineer', '9824524727', 'B.Tech(IT)', 'B-94,santoshi Nagar soc.,kantareshawar mahadev Road, katargam, surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395004', '9879331257', 1, '2024-01-08 15:45:34'),
(182, '194.PNG', 'VN0194', 'Kalena ', 'Sagar', '313/1', 'kalenasagar07@gmail.com', 'd7185951bd723765027a7c17e5833e18', 'Male', '2006-07-15', 'Ghanshyambhai', 'Farmer', '9638934396', 'LLB', 'Sanala, kunkavav, amreli ', 'Sanala', 'india', 'Amreli', 'Kunkavav ', 'gujarat', '365450', '6351729765', 1, '2024-01-08 15:45:53'),
(183, '81.PNG', 'VN0081', 'Makwana Pradip', 'Vanrajbhai', '22', 'pradipmakwana638@gmail.com', '8c7ef629002784146ccff6780a3bf14a', 'Male', '2004-05-13', 'Makwana Vanrajbhai', 'Farmer', '9712154175', 'Bca', '75, Mer street , kundal', 'Kundal', 'india', 'Botad', 'Barvala', 'gujarat', '382450', '8780591637', 1, '2024-01-08 15:46:12'),
(184, '240.PNG', 'VN00240', 'Chauhan', 'Krunal', '321', 'chauhankevin2310@gmail.com', 'd16b5a18275ae62493f5ea90d06f64d4', 'Male', '2005-10-23', 'Chauhan jyotsnaben kanaiyalal', 'Teacher', '8200436635', 'Bca', 'Aashish society, paliyad road, botad', 'Botad', 'india', 'Botad', 'Botad', 'gujarat', '364710', '9904368089', 1, '2024-01-08 15:47:52'),
(185, '193.PNG', 'VN00193', 'Bhambhaniya ', 'Harsh', '318', 'harsh6354ahir@gmail.com', '77a28d416c0bc21d5d79569b96c56beb', 'Male', '2005-10-25', 'Bhambhaniya Manubhai ', 'other', '+91987929139', 'Bca', '51- sahaj row house , makana, Kamrej ', 'Makana ', 'India', 'Suart', 'Kamrej', 'Gujarat', '394150', '9879291395', 1, '2024-01-08 15:48:04'),
(186, '113.PNG', 'VN0113', 'Vedant', 'Soni', '209', 'vedantmsoni2004@gmail.com', 'd7208f76d0e8883bdadef0470e153cb3', 'Male', '2004-05-21', 'Milan k. Soni', 'other', '9558838603', 'Mechanical ', 'L-4/61, vidhyanagar flat, Himmatlal park, satellite ', 'Ahmedabad', 'India', 'Ahmedabad ', 'Ahmedabad ', 'Gujarat', '380015', '9898262603', 1, '2024-01-08 15:48:41'),
(187, '201.PNG', 'VN201', 'Mehul', 'Patel', '321', 'pajwanimehul@gmail.com', '52d638e1efab77dc95d0ac65ec8b4f1e', 'Male', '2004-04-29', 'Hasmukh bhai patel', 'Bussiness man', '9822971158', 'Bca', 'hari Krishna enterprises, opposite patel battery, vansda road', 'chikli', 'India', 'navsari', 'navsari', 'Gujarat', '396521', '9822971158', 1, '2024-01-08 15:50:51'),
(188, '174.PNG', 'VN0174', 'Neel', 'Patel', '321', 'thakranineel777@gmail.com', 'f2f992b80f3d34bd4cf83edf22370256', 'Male', '2004-01-17', 'Rajendrakumar N Patel', 'Bussiness man', '9909814637', 'Bca', 'Om Residency Valsad ', 'Valsad', 'india', 'Valsad ', 'Valsad', 'gujarat', '396001', '9104732633', 1, '2024-01-08 15:51:07'),
(189, '146.PNG', 'VN0146', 'Smit', 'Vachhani', '225', 'smitvachhani00@gmail.com', 'c2c9c92cdeea11a841aef7b75e0b5e6a', 'Male', '2006-07-13', 'Bhupatbhai', 'Bussiness man', '9979970710', 'Bca', '22, khodiyar krupa so., surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395013', '8200834089', 1, '2024-01-08 15:57:25'),
(190, '33.PNG', 'VN0033', 'Dharmik ', 'Dhameliya ', '224', 'dharmikdhameliya21@gmail.com', '6d204f32ac7904bbb84fd89ef56fa1a4', 'Male', '2004-09-21', 'BipinKumar Dhameliya ', 'other', '+91908106828', 'B.B.A(G)', '16, Shivam row House, mahadev chowk, Mota varachha,surat', 'Surat', 'India', 'Surat ', 'Chorasi ', 'Gujarat', '394101', '+9190810682', 1, '2024-01-08 16:00:02'),
(191, '168.PNG', 'VN0168', 'Galathiya ', 'Meet', '315', 'galathiyameet@gmail.com', '64674739ef9ac74f8f65ecef8a663f12', 'Male', '2002-01-31', 'Galathiya jayantibhai ', 'other', '9904558075', 'Master in  pharmacy ', 'Bhagirath pan,bhalagam ', 'Bhalagam (bilkha)', 'india', 'Junagadh ', 'Junagadh ', 'gujarat', '362110', '7359151198', 1, '2024-01-08 16:00:59'),
(192, '241.PNG', 'VN00241', 'Chauhan', 'Kevin', '321', 'chauhankevin2310@gmail.com', '32073be10195d025681e73ccb6335d23', 'Male', '2005-10-23', 'Chauhan jyotsnaben', 'Teacher', '8200436635', 'Bca', 'Ashish society, paliyad road, botad', 'Botad', 'india', 'Botad', 'Botad', 'gujarat', '364710', '9904368089', 1, '2024-01-08 16:01:21'),
(193, '138.PNG', 'VN0138', 'Krish', 'Savaj', '213', 'krishnsavaj120@gmail.com', '8f8c4f2a40fef01aa1be487c1c49f14d', 'Male', '2005-10-22', 'Nileshbhai Savaj ', 'Bussiness man', '9825758488', 'B.E(IT)', 'Rainbow screen,tin batti chowk,opp.garden,b/h shree ram chamber, jetpur,rajkot,gujarat, 360370', 'Jetpur', 'india', 'Rajkot ', 'Jetpur', 'gujarat', '360370', '7779059300', 1, '2024-01-08 16:01:21');
INSERT INTO `tblemployees` (`id`, `photo`, `EmpId`, `FirstName`, `LastName`, `RoomNo`, `EmailId`, `Password`, `Gender`, `Dob`, `ParentName`, `Occupation`, `ParentMobileno`, `Department`, `Address`, `City`, `Country`, `District`, `Taluko`, `State`, `Pincode`, `Phonenumber`, `Status`, `RegDate`) VALUES
(194, '144.PNG', 'VN0144', 'DARSHIT ', 'AMBALIYA ', '310', 'darshilambaliya@gmail.com', '8492a74700d1dba621c77565efe35e3d', 'Male', '2005-11-12', 'HIRENBHAI ', 'other', '+91942671512', 'B.E(IT)', 'Takudi para Street no:- 15, Rajkot , Jetpur, Gujarat ', 'Jetpur', 'india', 'Rajkot ', 'Jetpur', 'gujarat', '360370', '+9194267151', 1, '2024-01-08 16:01:23'),
(195, '238.PNG', 'VN0238', 'Rajdip', 'Ghosiya', '213', 'rajdipghosiya@gmail.com', 'f0cf5484d0e3adbca2c2e6a96d957eff', 'Male', '2004-02-12', 'Karshan bhai', 'Farmer', '+19176008343', 'electrical ', 'Ram mandir vistar', 'Chandwana', 'india', 'Junagadh', 'Mangrol', 'gujarat', '362225', '7600834341', 1, '2024-01-08 16:01:35'),
(196, '77.PNG', 'VN0077', 'Satyam ', 'Radadiya ', '318', 'satyamradadiya2005@gmail.com', '5335859dddad285ee6087874a9a1862f', 'Male', '2005-10-14', 'Arvindbhai', 'Farmer', '884989589', 'BCA', 'Niyar by swaminarayan temple ', 'Chotra ', 'india', 'Amreli ', 'Rajula', 'gujarat', '365560', '884989589', 1, '2024-01-08 16:01:41'),
(197, '255.PNG', 'VN0255', 'Hadiya', 'Kamleah', '316', 'hadiyakamleshk@gmail.com', '6e43c46ff6fb9ba7db4390ed5633c820', 'Male', '', 'Jodhabhai', 'Farmer', '8153813618', 'B.A', 'Karla,jesar,bhavnagar,364280', 'Gujarat', 'india', 'Bhavnagar ', 'Jesar ', 'gujarat', '364280', '9313612427', 1, '2024-01-08 16:02:06'),
(198, '256.PNG', 'VN0256', 'Bhavya', 'Vaghasiya ', '213', 'bhavyapatel6891@gmail.com', '3216cb8a16881db7d740c3954cd31104', 'Male', '2008-03-29', 'Bhaveshbhai Vaghasiya ', 'other', '9427725143', 'Computer engineering ', 'Sampan residency near Ganesh chokdi,bavla', 'Bavla', 'india', 'Ahemdabad', 'Bavla', 'gujarat', '382220', '6355060468', 1, '2024-01-08 16:02:21'),
(199, '79.PNG', 'VN0079', 'Smit', 'Savani', '308', 'smitsavani05@gmail.com', 'ac1ba844cb48c12694d91ffa070e3612', 'Male', '2005-02-10', 'Rajeshbhai savani', 'Bussiness man', '9819961822', 'B.Tech(IT)', 'D-504,silver palace ,mota VARACHA,uttran surat', 'Surat', 'india', 'Surat', 'Surat', 'gujarat', '395006', '7041209986', 1, '2024-01-08 16:02:53'),
(200, '49.PNG', 'VN0049', 'Parth', 'Chauhan', '319', 'parthchauhan38512@gmail.com', 'ea12920b9a2abfc9abbf91fa245cf556', 'Male', '2006-08-28', 'Bhupendrabhai ', 'Farmer', '9104638512', 'Bca', 'Near swaminarayan temple near, vastadi ', 'Vastadi ', 'india', 'Surendranagar ', 'Wadhwan', 'gujarat', '363410', '9104638512', 1, '2024-01-08 16:03:00'),
(201, '251.PNG', 'VN0251', 'PRINCE ', 'SHANKAR ', '220', 'princeshankar690@gmail.com', 'f831b32dbcf075a59ac4460de930cd96', 'Male', '2006-07-02', 'Anilbhai Shankar', 'Bussiness man', '9374979840', 'BCA ', 'A-64 Radha Row Houses Uttran,Surat', 'Surat', 'india', 'Suart', 'Surat', 'gujarat', '394101', '9687984089', 1, '2024-01-08 16:03:54'),
(202, '10.PNG', 'VN0010', 'Nimit ', 'Vaghasiya ', '220', 'vaghasiyanimit001@gmail.com', 'd461dd0e6a84ff9987740223b508d486', 'Male', '2004-12-11', 'Dalsukabhai chaganbhai Vaghasiya ', 'Farmer', '+91635263251', 'Bca', 'Vanshiyali ', 'Vanshiyali ', 'india', 'Amreli ', 'Savar Kundla,', 'gujarat', '364525', '635263251', 1, '2024-01-08 16:03:55'),
(203, '103.PNG', 'vno103', 'Manan', 'Chovatiya ', '317', 'chovatiyamaan134@gmail.com', '8870ba40611e8853c5dd7263e3ff9b8d', 'Male', '2003-11-18', 'Jitendrabhai ', 'Farmer', '9879141356', 'B.A', '103, shreeji nagar , polat vistar , badhada', 'Badhada', 'india', 'Amreli ', 'Savarkundala ', 'gujarat', '364522', '9081498790', 1, '2024-01-08 16:09:40'),
(204, '249.PNG', 'VN0249', 'Nasit', 'Prince', '226', 'nasitprince13@gmail.com', '10bf3a8c13dd99a795bd355c49ad4ddb', 'Male', '2005-10-31', 'Ratibhai', 'other', '9979589515', 'Bca', '137, Netalde Park Society Rd', 'Surat', 'India', 'Surat', 'Surat', 'Gujarat', '395010', '9904227662', 1, '2024-01-08 16:10:55'),
(205, '76.PNG', 'VN76', 'Radhanpura ', 'Hitanshu', '320', 'sonihetu32@gmail.com', 'a5db442484d39891f6f2650e86fe33e4', 'Male', '2006-05-05', 'Kajal ben', 'other', '9099412534', 'B.com', 'Prahlad plot ashapura dairy palace road', 'Rajkot', 'india', 'Rajkot ', 'Rajkot', 'gujarat', '360001', '8141553011', 1, '2024-01-08 16:13:45'),
(206, '26.PNG', 'VN0026', 'Harikrushna ', 'Buha', '220', 'harikrushnabuha@gmail.com', 'b6dcc70b43a04edbb9b3e55733826435', 'Male', '2006-06-29', 'Rameshbhai', 'Farmer', '9638872856', 'BCA', 'Gokulnagar, Nesdi road, Savarkundla ', 'Savarkundla ', 'india', 'Amreli ', 'Savarkundla ', 'gujarat', '364515', '9638872856', 1, '2024-01-08 16:14:39'),
(207, '246.PNG', 'VN246', 'Ronak', 'Parmar', '226', 'ronakparmar9616@gmail.com', 'a8282bccd9336539ef878210b8ddcd95', 'Male', '2005-09-09', 'Vijaybhai ', 'other', '+91798421879', 'Bca', 'Behind shivaji park, Mahalaxmi Rolling shatarts, Una', 'Una', 'india', 'Gir somnath ', 'Una', 'gujarat', '362560', '+9179842187', 1, '2024-01-08 16:15:25'),
(208, '120.PNG', 'VN0120', 'Smit', 'Zinzuwadiya ', '224', 'sonismit680@gmail.com', '03c7c0ace395d80182db07ae2c30f034', 'Male', '2005-11-10', 'Zinzuwadiya Prashantkumar.M', 'other', '7016153636', 'Bca', 'A/3, Anand Park Society station road limbdi ', 'Limbdi', 'india', 'Surendranagar ', 'Limbdi', 'gujarat', '363421', '9428047465', 1, '2024-01-08 16:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(94, 'Casual Leave', '2023-12-28', '2024-01-06', 'Reading Vacation for External Exam.', '2023-12-26 07:30:24', 'Shreemad bhagwat tha  chhe', '2023-12-27 12:57:34 ', 2, 1, 63),
(100, 'Medical Leave', '2020-03-08', '2020-03-17', 'Mare medical na karene Ahmedabad Java nu che', '2024-01-08 05:02:59', 'NO ', '2024-01-08 10:33:50 ', 2, 1, 174),
(101, 'Medical Leave', '2020-03-07', '2020-03-13', 'A BAD', '2024-01-08 05:11:33', '5:00:PM ', '2024-01-08 10:42:43 ', 1, 1, 174),
(102, 'Religious Holidays', '2024-01-12', '2024-03-18', 'Vacation for makar sankranti.', '2024-01-08 15:12:42', NULL, NULL, 0, 1, 69),
(103, 'Religious Holidays', '2023-01-10', '2023-01-19', 'Uttariyan', '2024-01-08 15:45:53', NULL, NULL, 0, 1, 175);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Provided for urgent or unforeseen matters to the employees.1', '2020-11-01 12:07:56'),
(2, 'Medical Leave', 'Related to Health Problems of Employee', '2020-11-06 13:16:09'),
(3, 'Restricted Holiday', 'Holiday that is optional', '2020-11-06 13:16:38'),
(5, 'Paternity Leave', 'To take care of newborns', '2021-03-03 10:46:31'),
(6, 'Bereavement Leave', 'Grieve their loss of losing loved ones', '2021-03-03 10:47:48'),
(7, 'Compensatory Leave', 'For Overtime workers', '2021-03-03 10:48:37'),
(8, 'Maternity Leave', 'Taking care of newborn ,recoveries', '2021-03-03 10:50:17'),
(9, 'Religious Holidays', 'Based on employee\'s followed religion', '2021-03-03 10:51:26'),
(10, 'Adverse Weather Leave', 'In terms of extreme weather conditions', '2021-03-03 13:18:26'),
(13, 'Personal Time Off', 'To manage some private matters', '2021-03-03 13:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `MOBILENO` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `wishyear` date DEFAULT NULL,
  `IsRead` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
