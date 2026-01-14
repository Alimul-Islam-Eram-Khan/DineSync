-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host : 127.0.0.1
-- Generate : 23 june 2021 at 18:48
-- PHP Version : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET NAMES 'utf8';
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- DataBase : `booking_res`
--
-- --------------------------------------------------------

DROP DATABASE IF EXISTS `booking_res`;

CREATE DATABASE `booking_res` CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `booking_res`;

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
	`id` int(11) NOT NULL,
	`booking_id` varchar(200) DEFAULT NULL,
	`res_id` int(11) DEFAULT NULL,
	`c_id` int(11) DEFAULT NULL,
	`make_date` date DEFAULT NULL,
	`make_time` varchar(50) DEFAULT NULL,
	`name` varchar(100) DEFAULT NULL,
	`first_name` varchar(100) DEFAULT NULL,
	`phone` int(10) DEFAULT NULL,
	`email` varchar(255) DEFAULT NULL,
	`booking_date` date DEFAULT NULL,
	`booking_time` varchar(30) DEFAULT NULL,
	`status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
	`reject` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `first_name`, `phone`, `email`, `booking_date`, `booking_time`, `status`, `reject`) VALUES
(1, '5ccbd8f5609b3', 4, 9, '2024-01-03', '12:00:21pm', 'Jean', 'Marc', '01516189260', 'marc@live.fr', '2024-02s-04', '1:15pm', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
	`id` int(11) NOT NULL,
	`booking_id` varchar(200) DEFAULT NULL,
	`table_id` int(11) DEFAULT NULL,
	`table_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
	`id` int(11) NOT NULL,
	`category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Bar Restaurant'),
(2, 'Buffet'),
(3, 'Bistro'),
(4, 'Fast Food'),
(5, 'World Food'),
(6, 'Gourmet'),
(7, 'Pizza'),
(8, 'Cafe Restaurant'),
(9, 'Traditional'),
(10,'Vegetarian');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
	`id` int(11) NOT NULL,
	`location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Wari'),
(2, 'Tegaon'),
(3, 'Uttara'),
(4, 'Dhanmondi'),
(5, 'Mirpur'),
(6, 'Gulshan'),
(7, 'Banani');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
	`id` int(11) NOT NULL,
	`res_id` int(11) DEFAULT NULL,
	`item_name` varchar(200) DEFAULT NULL,
	`item_desc` varchar(500) DEFAULT NULL,
	`food_type` varchar(100) NOT NULL,
	`price` float DEFAULT NULL,
	`image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `item_desc`, `food_type`, `price`, `image`) VALUES
(4, 3, 'Barbecue Chicken Cuisses', '"Delicious chicken thighs, marinated in teriyaki sauce."', 'Dish', 7, 'bbq_chicken.jpg'),
(5, 3, 'Naan', 'Pain Indian Nature', 'SideDish', 2, 'naan.jpg'),
(6, 3, 'Garlic Chicken en Sauce', '"Chicken breast with yogurt sauce."', 'Dish', 12, 'poulet_sauce.jpg'),
(7, 3, 'Riz', 'Nature', 'SideDish', 3, 'rice.jpg'),
(8, 3, 'SetMenuBar', '"Starter + dessert + drink of your choice from the list."', 'Menu', 16, 'menu.jpg'),
(9, 3, 'Cheassy Fishbowl au curry', '"Hake accompanied by sorrel sauce and seasonal vegetables."', 'Dish', 16, 'fish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rc_info`
--

CREATE TABLE `rc_info` (
	`id` int(11) NOT NULL,
	`rc_name` varchar(100) DEFAULT NULL,
	`first_name` varchar(100) DEFAULT NULL,
	`category` int(11) DEFAULT NULL,
	`email` varchar(255) DEFAULT NULL,
	`website` varchar(255) DEFAULT NULL,
	`phone` int(10) DEFAULT NULL,
	`address` varchar(200) DEFAULT NULL,
	`location` int(11) DEFAULT NULL,
	`opening_res` time DEFAULT NULL,
	`closing_res` time DEFAULT NULL,
	`full_service` int(20) DEFAULT NULL COMMENT '1 = oui, 2 = non ',
	`logo` varchar(500) DEFAULT NULL,
	`password` varchar(200) DEFAULT NULL,
	`siret` int(9) DEFAULT NULL,
	`approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
	`role` int(11) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rc_info`
--

INSERT INTO `rc_info` (`id`, `rc_name`, `first_name`, `category`, `email`, `website`, `phone`, `address`, `location`, `opening_res`, `closing_res`, `full_service`, `logo`, `password`, `siret`, `approve_status`, `role`) VALUES
(1, 'PizzaHut Dhanmondi_1', NULL, 6, 'info@Restaurant1.com', 'http://localhost/booking-res/accueil.php', '0400000001', '147d, গ্রীন রোড, ঢাকা 1215', 4, '12:00:00', '00:00:00', 2, '1.jpg', '123', 478922751, 0, 1),
(2, 'Dominos Dhanmondi_2', NULL, 1, 'info@Restaurant2.com', 'http://localhost/booking-res/accueil.php', '0400000002', 'Rangs Fortune Square, Ground & First Floor, House/ Plot no #32 Rd 02 ঢাকা, 1205', 4, '11:30:00', '23:00:00', 2, '2.jpg', '123', 643876311, 0, 1),
(3, 'GEORGES Cafe_3', NULL, 5, 'info@Restaurant3.com', 'http://localhost/booking-res/accueil.php', '0400000003', 'House 02, Road 10, Sector 1, Uttara 1230 Bangladesh', 3, '11:45:00', '23:30:00', 1, '3.jpg', '123', 175121186, 0, 1),
(4, 'Food Land Cafe_4', NULL, 6, 'info@Restaurant4.com', 'http://localhost/booking-res/accueil.php', '0400000004', 'House 02, Road 10, Sector 1, Uttara 1230 Bangladesh', 1, '19:30:00', '21:30:00', 2, '4.jpg', '123', 922369852, 0, 1),
(5, 'Secret Recipe Wari_5', NULL, 5, 'info@Restaurant5.com', 'http://localhost/booking-res/accueil.php', '0400000005', 'House 02, Road 10, Sector 1, Uttara 1230 Bangladesh', 1, '11:45:00', '22:00:00', 1, '5.jpg', '123', 775919334, 0, 1),
(6, 'Chillox Dhanmondi_6', NULL, 3, 'info@Restaurant6.com', 'http://localhost/booking-res/accueil.php', '0400000006', '29 rue Jean-Jacques Rousseau, 34000 Montpellier', 4, '12:00:00', '21:00:00', 2, '6.jpg', '123', 171138526, 0, 1),
(7, 'Chaap Station_7', NULL, 5, 'info@Restaurant7.com', 'http://localhost/booking-res/accueil.php', '0400000007', '222,Tejgaon I/A, Tejgaon Link Road, Dhaka, Bangladesh, Dhaka City Bangladesh', 2, '11:30:00', '23:00:00', 2, '12.jpg', '123', 375162281, 0, 1),
(8, 'OLEA Turkish Restuarant_8', NULL, 1, 'info@Restaurant8.com', 'http://localhost/booking-res/accueil.php', '0400000008', 'Airport Road 79/A Commercial Area, Le Méridien Dhaka, Dhaka City 1229 Bangladesh', 1, '19:30:00', '01:00:00', 1, '7.jpg', '123', 743119572, 0, 1),
(9, 'Star-Kabab Dhanmondi_9', NULL, 8, 'info@Restaurant9.com', 'http://localhost/booking-res/accueil.php', '0400000009', 'House No, Satmasjid Road, 22 বীর উত্তম এম এ রব সড়ক, ঢাকা 1209', 4, '10:00:00', '16:00:00', 1, '8.jpg', '123', 837224951, 0, 1),
(10, 'The Pit Grill Restaurant_10', NULL, 9, 'info@Restaurant10.com', 'http://localhost/booking-res/accueil.php', '0400000010', 'House-105, Road-9/A, Dhanmondi R/A, Dhaka City 1205 Bangladesh', 4, '19:00:00', '22:00:00', 1, '9.jpg', '123', 639651169, 0, 1),
(11, 'Jane', 'Doe', NULL, 'jane.doe@live.fr', NULL, '0400000011', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, 0, 2),
(12, 'The Royal Buffet Restaurant_11', NULL, 3, 'info@Restaurant11.com', 'http://localhost/booking-res/accueil.php', '0400000012', '4 Road Dhanmondi, Dhaka City 1205 Bangladesh', 4, '10:00:00', '00:00:00', 1, '10.jpg', '123', 136834775, 0, 1),
(13, 'HANGOUT Restaurant_12', NULL, 9, 'info@Restaurant12.com', 'http://localhost/booking-res/accueil.php', '0400000013', '746 Satmosjid Road, Dhanmondi, Dhaka City 1209 Bangladesh', 4, '12:00:00', '23:30:00', 2, '11.jpg', '123', 654482393, 0, 1),
(14, 'The Arabian Nights Restaurant_13', NULL, 3, 'info@Restaurant13.com', 'http://localhost/booking-res/accueil.php', '0400000014', '746 Satmosjid Road, Dhanmondi, Dhaka City 1209 Bangladesh', 4, '11:30:00', '01:00:00', 2, '12.jpg', '123', 654482393, 0, 1),
(15, 'DHABA Restaurant_14', NULL, 5, 'info@Restaurant14.com', 'http://localhost/booking-res/accueil.php', '0400000015', 'House-48/E, Road-13/C, Block- E, Banani, Dhaka-1212, Bangladesh.', 4, '19:00:00', '01:30:00', 1, '13.jpg', '123', 745881884, 0, 1),
(16, 'KFC Mirpur Restaurant_15', NULL, 5, 'info@Restaurant15.com', 'http://localhost/booking-res/accueil.php', '0400000016', 'Plot# 14 Road# 3, Block# A, Harun Mollah Shorok-Main Road Mirpur 11, Dhaka City 1216 Bangladesh', 5, '11:30:00', '23:00:00', 2, 'il.jpg', '123', 805756139, 0, 1),
(17, 'Thai-Chi Restaurant_16', NULL, 5, 'info@Restaurant16.com', 'http://localhost/booking-res/accueil.php', '0400000017', '117/A Bijoy Sarani Rangs Bhaban, Level 7, Dhaka City Bangladesh', 2, '12:00:00', '23:00:00', 2, '15.jpg', '123', 185483392, 0, 1);


-- --------------------------------------------------------

--
-- Table structure for table `restaurant_personne`
--

CREATE TABLE `restaurant_personne` (
	`id` int(11) NOT NULL,
	`tbl_id` int(11) DEFAULT NULL,
	`table_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
	`id` int(11) NOT NULL,
	`res_id` int(11) DEFAULT NULL,
	`person_num` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
	ADD PRIMARY KEY (`id`),
	ADD KEY `FK_Res_bc` (`res_id`);

--
-- Indexes for table `booking_table`
--
ALTER TABLE `booking_table`
	ADD PRIMARY KEY (`id`),
	ADD KEY `FK_Bt` (`table_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
	ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
	ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
	ADD PRIMARY KEY (`id`),
	ADD KEY `FK_Rc_Menu` (`res_id`);

--
-- Indexes for table `rc_info`
--
ALTER TABLE `rc_info`
	ADD PRIMARY KEY (`id`),
	ADD KEY `FK_Location` (`location`),
	ADD KEY `FK_Cat` (`category`);

--
-- Indexes for table `restaurant_personne`
--
ALTER TABLE `restaurant_personne`
	ADD PRIMARY KEY (`id`),
	ADD KEY `FK_R_pers` (`tbl_id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
	ADD PRIMARY KEY (`id`),
	ADD KEY `FK_Rc_tables` (`res_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_table`
--
ALTER TABLE `booking_table`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rc_info`
--
ALTER TABLE `rc_info`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restaurant_personne`
--
ALTER TABLE `restaurant_personne`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
	ADD CONSTRAINT `FK_Res_bc` FOREIGN KEY (`res_id`) REFERENCES `rc_info` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `booking_table`
--
ALTER TABLE `booking_table`
	ADD CONSTRAINT `FK_Bt` FOREIGN KEY (`table_id`) REFERENCES `restaurant_personne` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
	ADD CONSTRAINT `FK_Rc_Menu` FOREIGN KEY (`res_id`) REFERENCES `rc_info` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `rc_info`
--
ALTER TABLE `rc_info`
	ADD CONSTRAINT `FK_Cat` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
	ADD CONSTRAINT `FK_Location` FOREIGN KEY (`location`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_personne`
--
ALTER TABLE `restaurant_personne`
	ADD CONSTRAINT `FK_R_pers` FOREIGN KEY (`tbl_id`) REFERENCES `restaurant_tables` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
	ADD CONSTRAINT `FK_Rc_tables` FOREIGN KEY (`res_id`) REFERENCES `rc_info` (`id`) ON UPDATE CASCADE;


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
