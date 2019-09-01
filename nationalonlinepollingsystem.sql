-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2019 at 08:46 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nationalonlinepollingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `userName`, `password`) VALUES
(1, 'thanuja', 'abcd1234');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
CREATE TABLE IF NOT EXISTS `candidate` (
  `CandidateID` int(11) NOT NULL AUTO_INCREMENT,
  `CandidatefName` varchar(50) DEFAULT NULL,
  `CandidatelName` varchar(50) DEFAULT NULL,
  `CandidateNIC` varchar(20) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `CandidatePartyID` int(11) DEFAULT NULL,
  `ElectionID` int(11) DEFAULT NULL,
  `CandidateAreaCode` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Race` varchar(10) DEFAULT NULL,
  `AddressNo` varchar(10) DEFAULT NULL,
  `AddressStreet` varchar(50) DEFAULT NULL,
  `AddressCity` varchar(50) DEFAULT NULL,
  `ContactNo` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CandidateID`),
  UNIQUE KEY `CandidateNIC` (`CandidateNIC`),
  KEY `fk_Candidate1` (`CandidateAreaCode`),
  KEY `fk_Candidate2` (`CandidatePartyID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandidateID`, `CandidatefName`, `CandidatelName`, `CandidateNIC`, `DateofBirth`, `CandidatePartyID`, `ElectionID`, `CandidateAreaCode`, `Gender`, `Race`, `AddressNo`, `AddressStreet`, `AddressCity`, `ContactNo`, `Email`) VALUES
(1, 'nuwanga', 'sd ', 'gfdgf', '2013-06-06', 12, 23, 123, 'male', 'asd', 'dfg', 'asd', 'dfgdfg', 123, 'dfgf@gmail.com'),
(5, 'cd', 'cd ', '971430303V', '2019-05-14', 28, 5, 5, 'male', 'Sinhalese', 'b', 'b', 'b', 55, 'thnuwanga@gmail.com'),
(6, 'r', 're', 'er', '2019-05-07', 1, 1, 5, 'male', 'f', 'gf', 'df', 'df', 55, 'thnuwanga@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `electiontype`
--

DROP TABLE IF EXISTS `electiontype`;
CREATE TABLE IF NOT EXISTS `electiontype` (
  `ElectionID` int(11) NOT NULL AUTO_INCREMENT,
  `ElectionName` varchar(100) NOT NULL,
  `ElectionDate` date DEFAULT NULL,
  `ElectionCycle` int(11) DEFAULT NULL,
  PRIMARY KEY (`ElectionID`)
) ENGINE=MyISAM AUTO_INCREMENT=556 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electiontype`
--

INSERT INTO `electiontype` (`ElectionID`, `ElectionName`, `ElectionDate`, `ElectionCycle`) VALUES
(555, 'Presidential', '2019-05-15', 55);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `AreaCode` int(11) NOT NULL AUTO_INCREMENT,
  `District` varchar(50) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `PollingArea` varchar(50) NOT NULL,
  PRIMARY KEY (`AreaCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `politicalparty`
--

DROP TABLE IF EXISTS `politicalparty`;
CREATE TABLE IF NOT EXISTS `politicalparty` (
  `PartyID` int(11) NOT NULL AUTO_INCREMENT,
  `PartyLogo` varchar(20) NOT NULL,
  `Party_Name` varchar(200) NOT NULL,
  `Abbreivation` varchar(10) DEFAULT NULL,
  `LeaderName` varchar(100) DEFAULT NULL,
  `SecName` varchar(100) DEFAULT NULL,
  `OfficialContact` int(11) DEFAULT NULL,
  `OfficialEmail` varchar(50) DEFAULT NULL,
  `AddressNo` varchar(10) DEFAULT NULL,
  `AddressStreet` varchar(50) DEFAULT NULL,
  `AddressCity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PartyID`),
  UNIQUE KEY `PartyLogo` (`PartyLogo`),
  UNIQUE KEY `Party_Name` (`Party_Name`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `politicalparty`
--

INSERT INTO `politicalparty` (`PartyID`, `PartyLogo`, `Party_Name`, `Abbreivation`, `LeaderName`, `SecName`, `OfficialContact`, `OfficialEmail`, `AddressNo`, `AddressStreet`, `AddressCity`) VALUES
(1, 'elephant', 'United national party', 'UNP', 'Ranil Wickramasinghe', 'Akila Viraj Kariyawawsam', 111234567, 'unp@gmail.com', '12', 'Sirikotha', 'Colombo 777'),
(26, 'wer', 'wer', 'wer', 'wer', 'wer', 123, '234', 'wer', 'wer', 'wer'),
(27, 'as', 'sad', 'ds', 'sad', 'sad', 1234, 'asd', 'dsad', 'dsad', 'asda'),
(12, 'Phottuwa', 'Podujana Eksath Peramuna', 'Pohottuwa', 'Mahinda Rajapakse', 'G.L.Pieris', 111234567, 'pohottuwa@gmail.com', '1', 'Medamulana', 'Hambanthota'),
(13, 'Bell', 'Janatha Vimukthi Peramuna', 'JVP', 'Anura Kumara Dissanayake', 'Tilvin Silva', 111234567, 'jvp@gmail.com', '1', 'Borella', 'Colombo'),
(22, 'Bulath kolaya', 'Eksath janatha nidahas sandhanaya', 'upfa', 'Maithreepala Sirisena', 'Dayasiri Jayasekara', 112345678, 'upfa@gmail.com', 'qw', 'Polonnaruwa', 'Sri lanka'),
(28, 'fdfdfdf', 'df', 'df', 'dff', 'df', 123, 'dfs', 'sdf', 'sdf', 'sdfs');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `voteID` int(11) NOT NULL AUTO_INCREMENT,
  `VoterID` int(11) NOT NULL,
  `ElectionID` int(11) NOT NULL,
  `VotedParty` int(11) NOT NULL,
  `VoterAreaCode` int(11) NOT NULL,
  PRIMARY KEY (`VoterID`,`ElectionID`),
  UNIQUE KEY `voteID` (`voteID`),
  KEY `fk_Vote1` (`ElectionID`),
  KEY `fk_Vote2` (`VoterAreaCode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`voteID`, `VoterID`, `ElectionID`, `VotedParty`, `VoterAreaCode`) VALUES
(3, 2, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
CREATE TABLE IF NOT EXISTS `voter` (
  `VoterID` int(11) NOT NULL AUTO_INCREMENT,
  `Mname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `OtherNames` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Race` varchar(20) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `AddressNo` varchar(10) DEFAULT NULL,
  `AddressStreet` varchar(50) DEFAULT NULL,
  `AddressCity` varchar(50) DEFAULT NULL,
  `VoterEmail` varchar(100) DEFAULT NULL,
  `VoterContact` int(11) DEFAULT NULL,
  `VoterAreaCode` int(11) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`VoterID`),
  UNIQUE KEY `NIC` (`NIC`),
  KEY `fk_Voter` (`VoterAreaCode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`VoterID`, `Mname`, `Lname`, `OtherNames`, `Gender`, `Race`, `DateOfBirth`, `NIC`, `AddressNo`, `AddressStreet`, `AddressCity`, `VoterEmail`, `VoterContact`, `VoterAreaCode`, `password`) VALUES
(2, 'dsd', 'asad', 'sadsd', 'null', 'null', '2019-05-10', 'asdad', 'sdad', 'dsad', 'xczxc', 'thanujachamikatc@gmail.com', 123, 5, 'abcd'),
(3, 'Test', 'Test', 'Test', 'male', 'Sinhalese', '2019-05-07', '971430303V', 'Rd', 'Rd', 'Rd', 'thnuwanga@gmail.com', 55, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vote_candidate`
--

DROP TABLE IF EXISTS `vote_candidate`;
CREATE TABLE IF NOT EXISTS `vote_candidate` (
  `voterID` int(11) NOT NULL,
  `electionId` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  PRIMARY KEY (`voterID`,`electionId`,`candidateID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_candidate`
--

INSERT INTO `vote_candidate` (`voterID`, `electionId`, `candidateID`) VALUES
(2, 1, 5),
(2, 1, 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
