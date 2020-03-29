-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 02:18 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geet`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Billie Eilish', 1, 2, 'assets/images/artwork/billie.jpg'),
(9, 'Suzy', 2, 2, 'assets/images/artwork/sz.jpg'),
(10, 'Chris Brown', 3, 2, 'assets/images/artwork/cr.jpg'),
(11, 'Snow Tha Product', 4, 3, 'assets/images/artwork/snow.jpg'),
(12, 'Radio Head', 5, 11, 'assets/images/artwork/rh.jpg'),
(13, 'Eminem', 6, 3, 'assets/images/artwork/em.jpg'),
(14, 'James Bay', 7, 2, 'assets/images/artwork/jb.jpg'),
(15, 'Halsey', 8, 2, 'assets/images/artwork/hal.jpg'),
(16, 'Harry Styles', 9, 2, 'assets/images/artwork/hs.png'),
(17, 'Camila Cabello', 10, 2, 'assets/images/artwork/cc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Billie Eilish'),
(2, 'Suzy'),
(3, 'Chris Brown'),
(4, 'Snow Tha Product'),
(5, 'Radio Head'),
(6, 'Eminem'),
(7, 'James Bay'),
(8, 'Halsey'),
(9, 'Harry Styles'),
(10, 'Camila Cabello');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Psychedelic Rock');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '!!!!!!! ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\01 !!!!!!! - (SongsLover.com).mp3', 1, 26),
(32, 'bad guy ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\02 bad guy - (SongsLover.com).mp3', 1, 24),
(33, 'xanny ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\03 xanny - (SongsLover.com).mp3', 1, 21),
(34, 'you should see me in a crown ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\04 you should see me in a crown - (SongsLover.com).mp3', 1, 22),
(35, 'all the good girls go to hell ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\05 all the good girls go to hell - (SongsLover.com).mp3', 1, 21),
(36, 'wish you were gay ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\06 wish you were gay - (SongsLover.com).mp3', 1, 22),
(37, 'when the party\'s over ', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\07 when the party\'s over - (SongsLover.com).mp3', 1, 22),
(38, '8', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\08 8 - (SongsLover.com).mp3', 1, 23),
(39, 'my strange addiction', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\09 my strange addiction - (SongsLover.com).mp3', 1, 22),
(40, 'bury a friend', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\10 bury a friend - (SongsLover.com).mp3', 1, 24),
(41, 'ilomilo', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\11 ilomilo - (SongsLover.com).mp3', 1, 26),
(42, 'listen before i go', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\12 listen before i go - (SongsLover.com).mp3', 1, 32),
(43, 'i love you', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\13 i love you - (SongsLover.com).mp3', 1, 35),
(44, 'goodbye', 1, 1, 2, '3.44', 'assets\\music\\Billie Eilish - WHEN WE ALL FALL ASLEEP, WHERE DO WE GO - (SongsLover.com)\\14 goodbye - (SongsLover.com).mp3', 1, 20),
(45, 'Im in love with someone else', 2, 9, 2, '3.47', 'assets\\music\\Suzy - Faces of Love - EP (iTunes Plus) [www.k2nblog.com]\\01 I_m in love with someone else.m4a', 1, 26),
(46, 'HOLIDAY (feat. DPR LIVE)', 2, 9, 2, '3.48', 'assets\\music\\Suzy - Faces of Love - EP (iTunes Plus) [www.k2nblog.com]\\02 HOLIDAY (feat. DPR LIVE).m4a', 1, 27),
(47, 'SObeR', 2, 9, 2, '3.00', 'assets\\music\\Suzy - Faces of Love - EP (iTunes Plus) [www.k2nblog.com]\\03 SObeR.m4a', 1, 28),
(48, 'Bxatxh', 2, 9, 2, '3.05', 'assets\\music\\Suzy - Faces of Love - EP (iTunes Plus) [www.k2nblog.com]\\04 Bxatxh.m4a', 1, 28),
(49, 'Lost & Found', 3, 10, 2, '3.05', 'assets\\music\\Chris Brown - Heart Break On A full Moon - (www.SongsLover.club)\\01. Lost & Found - (www.SongsLover.club).mp3', 1, 30),
(50, 'Privacy', 3, 10, 2, '3.08', 'assets\\music\\Chris Brown - Heart Break On A full Moon - (www.SongsLover.club)\\02. Privacy - (www.SongsLover.club).mp3', 1, 31),
(52, 'Questions', 3, 10, 2, '3.25', 'assets\\music\\Chris Brown - Heart Break On A full Moon - (www.SongsLover.club)\\04. Questions - (www.SongsLover.club).mp3', 1, 32),
(53, 'Bad Mornings (Prod. By ID Labs)', 4, 11, 3, '3.25', 'assets\\music\\Snow Tha Product - The Hangover\'s\\Snow tha Product - Bad Mornings (Prod. By ID Labs) - HotNewHipHop.mp3', 1, 35),
(54, 'Bout That Life (Prod. By Arthur McArthur)', 4, 11, 3, '3.45', 'assets\\music\\Snow Tha Product - The Hangover\'s\\Snow tha Product - Bout That Life (Prod. By Arthur McArthur) - HotNewHipHop.mp3', 1, 35),
(55, 'Cali Luv Feat. The Cataracs (Prod. By The Cataracs)', 4, 11, 3, '3.44', 'assets\\music\\Snow Tha Product - The Hangover\'s\\Snow tha Product - Cali Luv Feat. The Cataracs (Prod. By The Cataracs) - HotNewHipHop.mp3', 1, 36),
(56, 'Good Nights (Prod. By Money Moss)', 4, 11, 3, '3.47', 'assets\\music\\Snow Tha Product - The Hangover\'s\\Snow tha Product - Good Nights (Prod. By Money Moss) - HotNewHipHop.mp3', 1, 35),
(57, 'You', 5, 12, 11, '3.47', 'assets\\music\\Radiohead - Pablo Honey (Deluxe Edition) 2009 320kbps\\1-01 You.mp3', 1, 36),
(58, 'Creep', 5, 12, 11, '3.48', 'assets\\music\\Radiohead - Pablo Honey (Deluxe Edition) 2009 320kbps\\1-02 Creep.mp3', 1, 37),
(59, 'How Do You', 5, 12, 11, '3.45', 'assets\\music\\Radiohead - Pablo Honey (Deluxe Edition) 2009 320kbps\\1-03 How Do You_.mp3', 1, 36),
(60, 'Lucky You (feat. Joyner Lucas)', 6, 13, 3, '3.45', 'assets\\music\\Eminem - Kamikaze 2018 - (SongsLover.com)\\03 Lucky You (feat. Joyner Lucas) - (SongsLover.com).mp3', 1, 38),
(61, 'Good Guy (feat. Jessie Reyez)', 6, 13, 3, '3.04', 'assets\\music\\Eminem - Kamikaze 2018 - (SongsLover.com)\\12 Good Guy (feat. Jessie Reyez) - (SongsLover.com).mp3', 1, 39),
(62, 'Venom', 6, 13, 3, '3.07', 'assets\\music\\Eminem - Kamikaze 2018 - (SongsLover.com)\\13 Venom (Music From the Motion Picture) - (SongsLover.com).mp3', 1, 39),
(63, 'Let It Go', 7, 14, 2, '3.07', 'assets\\music\\James Bay - Chaos and the Calm (Deluxe Version) 2015 [MP3 320]~{VBUc}\\03 Let It Go.mp3', 1, 43),
(64, 'Best Fake Smile', 7, 14, 2, '3.08', 'assets\\music\\James Bay - Chaos and the Calm (Deluxe Version) 2015 [MP3 320]~{VBUc}\\05 Best Fake Smile.mp3', 1, 46),
(65, 'Scars', 7, 14, 2, '3.05', 'assets\\music\\James Bay - Chaos and the Calm (Deluxe Version) 2015 [MP3 320]~{VBUc}\\08 Scars.mp3', 1, 48),
(66, 'Now or Never', 8, 15, 2, '3.05', 'assets\\music\\Halsey - Hopeless Fountain Kingdom  2017\\06. Now Or Never.mp3', 1, 51),
(67, 'Sorry', 8, 15, 2, '3.08', 'assets\\music\\Halsey - Hopeless Fountain Kingdom  2017\\07. Sorry.mp3', 1, 51),
(68, 'Meet Me In The Hallway', 9, 16, 2, '3.08', 'assets\\music\\Harry Styles - Harry Styles - (www.SongsLover.com)\\01. Meet Me In The Hallway - (www.SongsLover.com).mp3', 1, 52),
(69, 'Sign Of The Times', 9, 16, 2, '3.10', 'assets\\music\\Harry Styles - Harry Styles - (www.SongsLover.com)\\02. Sign Of The Times - (www.SongsLover.com).mp3', 1, 53),
(70, 'Kiwi', 9, 16, 2, '3.12', 'assets\\music\\Harry Styles - Harry Styles - (www.SongsLover.com)\\07. Kiwi - (www.SongsLover.com).mp3', 1, 53),
(71, 'Never Be the Same', 10, 17, 2, '3.12', 'assets\\music\\Camila Cabello - Camila - (www.SongsLover.club)\\01 Never Be the Same - (www.SongsLover.club).mp3', 1, 58),
(72, 'Consequences', 10, 17, 2, '3.14', 'assets\\music\\Camila Cabello - Camila - (www.SongsLover.club)\\06 Consequences - (www.SongsLover.club).mp3', 1, 56),
(73, 'Real Friends', 10, 17, 2, '3.16', 'assets\\music\\Camila Cabello - Camila - (www.SongsLover.club)\\07 Real Friends - (www.SongsLover.club).mp3', 1, 55);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'lolman', 'Lol', 'Man', 'Lolman@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '2019-09-12 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'Suzy121', 'Bae', 'Suzy', 'Suzy@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '2019-09-12 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'Nemis', 'Neeraj', 'Mishra', 'Neo@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-09-15 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(6, 'Rajeev23', 'Rajeev', 'Ranjan', 'Rajee@gmail.com', 'cac5ff630494aa784ce97b9fafac2500', '2019-09-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(7, 'nikhil', 'Nikhil', 'Singh', 'Sahd@gmail.com', '79cfeb94595de33b3326c06ab1c7dbda', '2019-09-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(8, 'ankityadav638', 'Ankit', 'Yadav', 'Ankuyadav638@gmail.com', '1df75a22f2ca512dcb2a28bdf7ddcaea', '2019-09-26 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(9, 'Nicolas', 'Nicolas', 'Peter', 'Nico@nico.com', '903dd7ecd171c44fde9b08587b22e96e', '2019-09-27 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(10, 'Ankit10', 'Ankit', 'Yadav', 'Ankuyadav63899@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-10-03 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(11, 'Anukul_121123', 'Anukul', 'Singh', 'Nau@gmail.com', '9ee05d4f00cb6222036dd1c31b06a277', '2019-10-03 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(12, 'Sai12', 'Sai', 'Kumar', 'Sai@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-10-04 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(13, 'Suzy12', 'Bae', 'Suzy', 'Suzy12@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-10-17 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(14, 'kalash', 'Kalash', 'Palwanda', 'Kalashp69@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-10-25 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
