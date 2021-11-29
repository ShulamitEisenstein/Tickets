-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: נובמבר 29, 2021 בזמן 08:23 PM
-- גרסת שרת: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tickets`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `tickets`
--

CREATE TABLE `tickets` (
  `TicketId` int(13) NOT NULL,
  `UserId` int(13) NOT NULL,
  `InsertDate` date DEFAULT current_timestamp(),
  `Subject` varchar(50) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- הוצאת מידע עבור טבלה `tickets`
--

INSERT INTO `tickets` (`TicketId`, `UserId`, `InsertDate`, `Subject`, `Description`) VALUES
(1, 1, '2021-11-12', 'אתר איטי ', 'התקנתי נטפרי על המחשב והדפדפן מאוד איטי\r\nאשמח לעזרה בדחיפות\r\nתודה'),
(2, 2, '2021-11-24', 'בקשה לפתיחת תמונה', 'דחוף ביותר לצורך הפעלה'),
(3, 2, '2021-11-24', 'פתיחת סרטון PHP', 'הדרכה בתכנות \r\nתודה'),
(4, 1, '2021-11-25', 'אתר איטי ', 'w3e3e3e3e3e3e3'),
(5, 1, '2021-11-05', 'פתיחת סרטון PHP', '3e3e3e3e3e3e3e3e3e'),
(6, 1, '2021-11-05', 'פתיחת סרטון PHP', 'xdgdgdgd'),
(7, 1, '2021-11-25', 'פתיחת סרטון PHP', 'cxvvvvvvvvvvvvvvvvvv'),
(8, 1, '2021-11-12', 'אתר איטי ', 'ייייייייייייייייייייייייייייילחילכעיגמעכדצכעסצכה'),
(9, 1, '2021-11-16', 'אתר איטי ', 'לךיחעיעיעיע'),
(10, 2, '2021-11-25', 'בקשה לפתיחת תמונה', 'לללללללללללללללללללללללל'),
(11, 1, '2021-11-25', 'פתיחת סרטון PHP', 'מממממממממממממממממממ'),
(12, 1, '2021-11-25', 'אתר איטי ', 'צצצצצצצצצצצצצצצצצצצצצצצצצצצצצ');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `users`
--

CREATE TABLE `users` (
  `UserId` int(13) NOT NULL,
  `UserName` varchar(25) DEFAULT NULL,
  `UserFamily` varchar(25) DEFAULT NULL,
  `UserPhone` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- הוצאת מידע עבור טבלה `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `UserFamily`, `UserPhone`) VALUES
(1, 'שולמית', 'אייזנשטיין', '058329221'),
(2, 'מלי', 'ברזל', '053312745');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `tickets`
--
ALTER TABLE `tickets`
  ADD UNIQUE KEY `TicketsUniqueKey` (`TicketId`),
  ADD KEY `TicketUserIdIndex` (`UserId`);

--
-- אינדקסים לטבלה `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `UsersUniqueKey` (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `TicketId` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- הגבלות לטבלאות שהוצאו
--

--
-- הגבלות לטבלה `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
