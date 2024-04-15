-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2024 at 02:25 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20549375_home_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'Nate', '9bdac65afaa93ddde40959128bbb29554d51bc1e');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `message`) VALUES
('gsd5gduUkLvw1B5FSs5I', 'Gibson', 'gibsonate123@gmail.com', '0755252526', 'Can you add a messaging system to message buyers on the website'),
('qOkRTRWjWx3KKD0aBWwM', 'www', 'www@gmail.com', '1', 'Need tutorial');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `age` varchar(2) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `room_floor` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `age`, `total_floors`, `room_floor`, `loan`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`) VALUES
('sUQKv5r4tBuuKwlN7rCL', 'GGu50J1IL9thstyzRm5S', 'Bungalow', '01000 Nairobi ', '1500000', 'flat', 'sale', 'ready to move', 'furnished', '1', '500000', '5', '6', '3', '1500', '2', '3', '3', 'available', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'PDOTdKXquXlfzi5X7F5J.jpg', 'C2FgSZ3AdazqxJ2eWS80.jpg', 'ymQPljlyQRn7LPnD2qLB.jpg', '', '', 'Spacious modern home  located at Nairobi Westlands', '2023-04-02'),
('jb3kPkccII6bMw1CxXPI', 'RAjzwf5fQ9VRW8vRPj5V', 'Contemporary home', '1000, Thika', '2500000', 'flat', 'sale', 'ready to move', 'furnished', '1', '1000000', '3', '5', '2', '2000', '1', '2', '2', 'available', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'RLPeHpUIMOZ3nkdzvDHF.jpg', 'VJ1AqIUtNOjsJTyin1n5.jpg', 'NcdJ7uq4W2gokMthfAZ7.jpg', '', '', 'This contemporary home in Thika Section 9 boasts modern architecture and design with an open-concept living space that seamlessly connects indoor and outdoor living. The high-end kitchen, dining area, and generously sized bedrooms, including a master with a private balcony and en-suite bathroom, provide ample space for entertaining and relaxation. The expansive deck and landscaped yard complete the oasis in the heart of Thika, making it a perfect blend of elegance and functionality.', '2023-04-02'),
('b2T6YVGnkj7T1lIZpkjg', 'WHROCjc68rN1gzcnXUYm', 'Mansion', 'Kitengela, Kajiado', '7500000', 'house', 'sale', 'ready to move', 'semi-furnished', '3', '2500000', '4', '5', '3', '1000', '1', '1', '1', 'not available', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'zrjugB6UEAooVHQOWZmz.jpg', 'DDLn3OTBcgPkYFRyP64J.jpg', 'PlbQkjyBQxKK1pRXJ5pe.jpg', '', '', 'Very nice and Cosy family house', '2023-04-02'),
('giXn41KafkLad3kNKkEB', 'Tg6BNsItS3vtWjbbOP9U', 'franc fort', ' 00100 muranga', '5000', 'shop', 'sale', 'ready to move', 'furnished', '1', '1997', '1', '1', '1', '100', '2', '4', '3', 'available', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'OA10tgtsAl4PiKQgXfz7.jpg', 'k0ZmieRlOxyda2CmP54R.jpg', 'nARmaGPJ0XARqwfTGxrb.jpg', '', '', 'Charming Bedsitter for Sale: This cozy and self-contained living space offers a combined bedroom and sitting area, a convenient kitchenette, and a private bathroom. Ideal for individuals or couples seeking a compact yet functional living space. Don&#39;t miss the opportunity to own this affordable and practical home. Contact us for more details and to schedule a viewing!', '2024-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `date`) VALUES
('3E5jN1hLV7l9nOVyAaIO', 'sUQKv5r4tBuuKwlN7rCL', 'RAjzwf5fQ9VRW8vRPj5V', 'GGu50J1IL9thstyzRm5S', '2023-04-02'),
('QLSlBYOcU2chcaLIkuBe', 'jb3kPkccII6bMw1CxXPI', 'WHROCjc68rN1gzcnXUYm', 'RAjzwf5fQ9VRW8vRPj5V', '2023-04-02'),
('lTO9q0rXBiz3nxpm1qB3', 'b2T6YVGnkj7T1lIZpkjg', 'r3vgmxLsJ35SMjERJOlT', 'WHROCjc68rN1gzcnXUYm', '2023-04-04'),
('85TslPNjdKM3GQbvoKx3', 'jb3kPkccII6bMw1CxXPI', 'r3vgmxLsJ35SMjERJOlT', 'RAjzwf5fQ9VRW8vRPj5V', '2023-04-04'),
('bXmpiKxMHpv4SEggxrpf', 'jb3kPkccII6bMw1CxXPI', 'ounNoDBYAItcGrSzzb09', 'RAjzwf5fQ9VRW8vRPj5V', '2023-04-30'),
('byMIVL1VR04kqv49sRaP', 'sUQKv5r4tBuuKwlN7rCL', 'Tg6BNsItS3vtWjbbOP9U', 'GGu50J1IL9thstyzRm5S', '2024-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('ZLQgeHqKYWaUWkqci469', 'sUQKv5r4tBuuKwlN7rCL', 'RAjzwf5fQ9VRW8vRPj5V'),
('HRhSi0CdrQy4YLXB1FUl', 'sUQKv5r4tBuuKwlN7rCL', 'f6xmfav3PIbzuC2WgufX'),
('AzHVbciU8Pad578N0SRb', 'jb3kPkccII6bMw1CxXPI', 'f6xmfav3PIbzuC2WgufX'),
('Un4Mzk92FrsvIg8XWXqh', 'b2T6YVGnkj7T1lIZpkjg', 'f6xmfav3PIbzuC2WgufX'),
('FJ6Sxrfmt6svjNF0VlN7', 'sUQKv5r4tBuuKwlN7rCL', 'pyUD4VGRUzKpsejnXQyd'),
('5oYoojl5GM3HVRo1uqO4', 'sUQKv5r4tBuuKwlN7rCL', 's2H0daPCpiCqnufgHHRV'),
('tYXgSf5uiyOcynU94jHh', 'jb3kPkccII6bMw1CxXPI', 's2H0daPCpiCqnufgHHRV'),
('D3i7hofflyKgmtPDXRME', 'giXn41KafkLad3kNKkEB', 'Tg6BNsItS3vtWjbbOP9U');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('RAjzwf5fQ9VRW8vRPj5V', 'Gibson', '0758946698', 'gibsonate123@gmail.com', '104371bd7211b2e28c020b1f1a3975e3e567d111'),
('GGu50J1IL9thstyzRm5S', 'Basil Otieno ', '0743240408', 'barsilotieno4@gmail.com', 'cc556bc62c65249167da0c6362b62397f9178c15'),
('WHROCjc68rN1gzcnXUYm', 'Alex', '0700000000', 'Alexandremuithya@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc'),
('TeNrVlrFa9ETKLM4OEQL', 'Lewis Murunga', '0790432513', 'murungalewis8@gmail.com', '122a8dea33a925a0a1ad7ad1b42f2a45ade639a5'),
('YrGD7xEnj8rIdlpGEf8A', 'Sikamoi Purity ', '0115292293', 'sijebet100@gmail.com', 'be2bb0bcab6a6ce1664050f5fa9d7260c9082b42'),
('r3vgmxLsJ35SMjERJOlT', 'Ian Mombo', '0757630721', 'momboian2020@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('f6xmfav3PIbzuC2WgufX', 'Elon', '0725456386', 'elon@gmail.com', '8de1d5f15dfc6c31d469833767992297779a7a98'),
('ounNoDBYAItcGrSzzb09', 'charity', '0645678900', 'charitywanjiku@gmail.com', '5777e8f41d95e003f26e2f76b409b329fae7fc31'),
('pyUD4VGRUzKpsejnXQyd', 'Ray venom', '0117283098', 'ray@gmail.com', 'e0bba0ec2d212d48f3aa4a35692e7421920da46d'),
('3FDq3M7hirtxuXzeGe6M', 'kenya', '90', '254@gmail.com', '93ec71b22793a81569c94ca17e4d9c293d8e201f'),
('CxeXSrsYlOquUHnS9Eyl', 'Albert', '2755201', 'rhesoft@gmail.com', '001742276fb89ac2349838f6f8085a342cab8cc7'),
('s2H0daPCpiCqnufgHHRV', 'Cornelius Emase', '823983923', 'corneliuslochipi@gmail.com', '85084a31db488afd26ef76a30c8c8c231029f92a'),
('Tg6BNsItS3vtWjbbOP9U', 'albert', '3', 'albert123@gmail.com', '7e79a3af2634de6635e59c9404d251b3955d39f9');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
