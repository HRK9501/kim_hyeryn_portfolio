-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2019 at 02:51 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_face`
--

DROP TABLE IF EXISTS `tbl_face`;
CREATE TABLE IF NOT EXISTS `tbl_face` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FaceImg` varchar(30) NOT NULL,
  `FaceTitle` varchar(60) NOT NULL,
  `category` varchar(50) NOT NULL,
  `faceID` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_face`
--

INSERT INTO `tbl_face` (`ID`, `FaceImg`, `FaceTitle`, `category`, `faceID`) VALUES
(1, 'face_apple.jpg', 'Apple Commercial', '3D / Video', 'apple-commercial'),
(2, 'face_sportsnet.jpg', 'SportNet', '3D / Video', 'sportsnet'),
(3, 'face_jet.jpg', 'Jet Engine', '3D / Video', 'jet-engine'),
(5, 'face_traa.jpg', 'TRAA', 'Web Design', 'traa'),
(6, 'face_musicmixer.jpg', 'Music Mixer', 'Web Design', 'music-mixer'),
(8, 'face_organ.jpg', 'Organ Marketing', 'Graphic Deisgn', 'organ-marketing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

DROP TABLE IF EXISTS `tbl_project`;
CREATE TABLE IF NOT EXISTS `tbl_project` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `HeaderImg` varchar(30) NOT NULL,
  `ProjectTitle` varchar(60) NOT NULL,
  `ProjectText` text NOT NULL,
  `BodyVideo` varchar(30) NOT NULL,
  `BodyImg` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`ID`, `HeaderImg`, `ProjectTitle`, `ProjectText`, `BodyVideo`, `BodyImg`) VALUES
(1, 'face_apple.jpg', 'Apple Products Commercial', 'For the details of Apple products\' structure, Apple products are made in 3D on C4D. Designing the approximate frames, I used various functions and the movement of the camera. In this case, multiple objects are introduced using the facture function and delay function.\r\n\r\nI adjusted the overall colour of the rendered frames in after effects. It creates an atmosphere that I want to express. Because the images of Apple products are bright and modern, I used high-chroma colours. Colour using and model structure is an essential aspect of commercial video. Music is also considered an important part. I was trying to use fast beats and electro-synths a song. Because electronic music makes the 3D functions and camera movements harmonize with Apple\'s electronics. Text animation that appears in sync with the beats at the beginning of the video. By doing this, the viewer can concentrate on the beginning of the video.', 'apple_video.mp4', 'apple_iphone.png, apple_fracture.png, apple_poster.jpg'),
(2, 'face_sportsnet.jpg', 'Sportsnet - Introduction Video of Sports News', 'It is designed for sports news intro. Sports News used many camera cuts because it had to introduce much information in a short time, such as broadcasters, game dates, teams to play. C4D was used to build the overall outline of the stadium and screen. Team logos made in 3D are practical because viewers are easy to distinguish and excel in aesthetics. When choosing a colour, I used a creamy colour overall to give a soft feel. And to emphasize the sporty feeling, I gave points in the blue and red. In After Effects, I provided additional effects so that viewers could concentrate more on the video. The lens-flair effect gave the camera a sense of reality by spreading the light. I also edited the footage to make it look like it was snowing on the stadium.', 'sportsnet_video.mp4', 'sportsnet_1.jpg, sportsnet_2.jpg, sportsnet_3.jpg, sportsnet_4.jpg'),
(3, 'face_jet.jpg', 'Jet Engine - Motor engine', 'Motors are the most fundamental element in all industries. Therefore, a more sophisticated and detailed design is needed. I designed a jet engine out of many motor engines. First of all, C4D was used to express motor design in detail, along with well-designed drawings visually. Texture the jet engine in 3D and design it so that it looks the same as when it was actually created. The camera was installed and driven to show different angles. In many people\'s perceptions, motor engines and mechanical parts can be challenging to understand. To secure that point, I created a visual promotional poster using a 3D engine. I used photoshop to put text in visually light shades. As a result, I was trying to add dynamic. I tried to convey familiarity with the tools of the motor, which many people always received but did not know well.', 'jet_video.mp4', 'jet_1.jpg, jet_2.jpg, jet_3.jpg'),
(4, 'face_traa.jpg', 'TRAA - Thames River Anglers Association', 'TRAA is a website that introduces the location of the Thames river in London, Canada, and the many events organized by the Thames river. I tried to express the peaceful, nature-friendly atmosphere of the Thames river by design. The green colour used as the main colour represents the bright, nature-friendly identity of the Thames river. Also, the event and article pages divided by year and the project page divided by category are designed to be as simple as possible for users who visit the site for the first time. Finally, the TRAA website achieved its goal of efficiently conveying important information by eliminating many colours and design elements.', 'traa_video.mp4', 'traa_mockup.jpg, traa_event.jpg, traa_proj.jpg'),
(5, 'face_musicmixer.jpg', 'Music Mixer - Music Producing Web', 'The Music Mixer project aims to make music easier by using various instruments. For this project, my team members and I had to decide what genre of music to represent. After consulting with the team, I decided to use hip-hop in the \'80s. We tried to express the vivid colours that were used a lot in the 80s. Also, cassette tape and boom box are used as design elements, which are the most revealing elements of the genre of hip hop music. The same part of each separate cassette tape provides a musical instrument. Users can listen to the instrument\'s play patterns and choose the colour of their favourite cassette. Then users can make music by dropping the selected tape into the boombox. As a result, by adding modern technology to the objects of the \'80s, we were able to create a site for anyone to enjoy.', '', 'musicmixer_1.jpg, musicmixer_2.jpg, musicmixer_BG.jpg, '),
(6, 'face_organ.jpg', 'Organ Marketing - Regeneration of bioengineered organs', 'It is a Brand designed for Harvard Medical lab to study organ regeneration. Our team has produced a brochure that introduces organ regeneration to patients and the medical community. Many people are unaware of organ regeneration and have introduced basic research methods and benefits. The most important thing was to persuade people who had wrong perceptions because of the lack of information. That\'s why we paid attention to the visual aspects that are first recognized in people\'s eyes. By using various blue colours as a whole, we emphasized the positive side and tried to contain an innovative atmosphere. Also, we tried to convey the exact contents of the research as simple as possible.', '', 'organ_1.jpg, organ_2.jpg, organ_3.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
