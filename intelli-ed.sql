-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 10:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intelli-ed`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumni_id` int(11) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `course_completed` varchar(100) DEFAULT NULL,
  `year_graduated` int(11) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_info` varchar(30) DEFAULT NULL,
  `additional_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `college_id`, `name`, `age`, `course_completed`, `year_graduated`, `hometown`, `email`, `contact_info`, `additional_details`) VALUES
(1, 1, 'Taylor Anderson', 31, 'B.Tech CSE', 2018, 'North David', 'anthonynelson@yahoo.com', '545-938-8058', 'Add traditional standard PM election case yet between night western.'),
(2, 1, 'Darlene Garcia', 24, 'M.Tech ECE', 2016, 'Port Yolandaberg', 'meyerkimberly@yahoo.com', '832-363-9752', 'Result thus wind natural customer letter finish.'),
(3, 1, 'Justin Parsons', 29, 'B.Tech ECE', 2015, 'North Donnamouth', 'austin90@yahoo.com', '243-885-7168', 'Story but order leg food fast pick purpose expert age.'),
(4, 2, 'Ryan Jones', 32, 'B.Tech CSE', 2023, 'Loganside', 'loganjohn@hotmail.com', '249.066.4934x58771', 'Hear minute discuss space himself draw final station tough.'),
(5, 2, 'Alexis Molina', 28, 'M.Tech CSE', 2016, 'Martinezbury', 'joseph67@hotmail.com', '2853323422', 'Work name Congress ten return understand relate church serve can.'),
(6, 2, 'Melanie Mcgee', 35, 'B.Tech ME', 2016, 'Laurentown', 'bryanjackson@hotmail.com', '(368)871-2180x1036', 'Purpose world win product election baby seven only scientist.'),
(7, 3, 'Pamela Brown', 25, 'B.Tech CSE', 2019, 'Lake Seanmouth', 'alexander25@howard.com', '(073)965-7472', 'Stand visit red forward table owner how husband time.'),
(8, 3, 'Robert Cunningham', 27, 'B.Tech CE', 2017, 'East Ryan', 'williammorton@hotmail.com', '001-887-546-4780x34710', 'Others talk without wall stay describe.'),
(9, 3, 'Lisa Solomon', 22, 'M.Tech CSE', 2022, 'Chelseaview', 'smithsabrina@guerra.com', '(755)196-1020x9845', 'That himself floor somebody many character.'),
(10, 4, 'Jennifer Burton', 22, 'M.Tech CSE', 2016, 'North Brian', 'waynebarnes@schultz-sims.org', '052.547.7954', 'Learn senior today mention next.'),
(11, 4, 'Jerome Lambert', 33, 'B.Tech CE', 2018, 'Mirandaville', 'julieolson@daniel.com', '588-100-9021', 'His within though finish star be hot often.'),
(12, 4, 'Mrs. Jennifer Gillespie', 26, 'B.Tech ME', 2022, 'North Carolfurt', 'richard80@copeland.com', '+1-392-197-4443x6008', 'Then police choice cell seven.'),
(13, 5, 'Zachary Ashley', 35, 'M.Tech CSE', 2017, 'Lake Loriberg', 'millerjamie@yahoo.com', '778-811-5766x87868', 'Trade century hundred themselves finish.'),
(14, 5, 'Briana Johnson', 33, 'M.Tech ECE', 2018, 'Lake Carlosview', 'shawna76@hotmail.com', '978-538-0655x80391', 'Book itself people nation million born American grow wall.'),
(15, 5, 'Derrick Webb', 34, 'B.Tech CSE', 2017, 'Smithbury', 'frances20@hotmail.com', '826.497.3079x9297', 'Official within nothing tend pick mention hot happy.'),
(16, 6, 'Daniel Estes', 35, 'B.Tech ECE', 2020, 'Sheribury', 'marcthomas@yahoo.com', '+1-289-177-3295', 'Eat soon must toward family event dark such firm again.'),
(17, 6, 'Craig Guerra', 30, 'B.Tech ME', 2016, 'Millerhaven', 'ubarnes@hotmail.com', '001-601-052-4987x4867', 'Detail put risk yet so before wrong take.'),
(18, 6, 'Erin Quinn', 31, 'B.Tech CE', 2017, 'New Jimmyton', 'christopher96@anderson.org', '344.229.3223x47429', 'Daughter carry successful imagine weight current open.'),
(19, 7, 'Matthew Gregory', 22, 'B.Tech CE', 2021, 'Christopherview', 'shannonmadison@ray.info', '+1-085-327-5734', 'Beyond majority good open executive experience.'),
(20, 7, 'Christopher Wilson', 31, 'M.Tech CSE', 2019, 'New Melissamouth', 'ugreen@lee.com', '568.056.6828x920', 'Pattern might offer indeed light hot because.'),
(21, 7, 'Barbara Nunez', 32, 'B.Tech ME', 2021, 'North James', 'georgerichard@lewis.com', '829-389-8969', 'Ten tree pull likely piece small go woman.'),
(22, 8, 'Michaela Johnson', 35, 'M.Tech ECE', 2019, 'South Jason', 'thomasshawn@munoz.com', '(541)917-5991x3263', 'Machine century suddenly have.'),
(23, 8, 'Ashley Morris', 24, 'M.Tech CSE', 2015, 'West Rebeccaborough', 'adrienne66@johnson-alexander.com', '+1-283-975-2929x6431', 'Cause trouble movie view stuff federal.'),
(24, 8, 'Bradley Richardson', 29, 'M.Tech ECE', 2016, 'North Troyhaven', 'valenciafrances@miller.com', '001-862-319-8273x032', 'Push the ten will summer specific option concern black believe.'),
(25, 9, 'Laura Scott', 27, 'M.Tech ECE', 2015, 'Braunland', 'vbrown@walsh-myers.com', '331-923-8375x0469', 'Natural can forward notice mouth hold customer believe power especially.'),
(26, 9, 'Deborah Hampton', 30, 'B.Tech ME', 2017, 'West Dustintown', 'xwilliams@yahoo.com', '967.998.3204x16437', 'Enter identify participant environmental them really debate energy religious.'),
(27, 9, 'Mary Graham', 25, 'B.Tech CE', 2020, 'Christyborough', 'ichan@hotmail.com', '357-725-6665', 'Black because song capital administration sound teach hit lose hotel.'),
(28, 10, 'Jennifer Leonard', 31, 'B.Tech ME', 2020, 'Carolynport', 'granterica@gmail.com', '(015)573-3597', 'National visit hundred billion blue right fine.'),
(29, 10, 'Richard Oneal', 31, 'M.Tech ECE', 2017, 'New Christinaton', 'suttonsean@marshall.com', '908.601.1416x346', 'Leg organization nice happy international south open.'),
(30, 10, 'Lindsey Campbell', 33, 'B.Tech ME', 2021, 'Thomasmouth', 'joshua22@gmail.com', '505.794.3017x823', 'Week own necessary allow including level well kid.'),
(31, 11, 'Keith Jones', 33, 'B.Tech CE', 2016, 'Lake Christopher', 'jared60@hotmail.com', '503.946.7841x0156', 'Herself population seven sign executive will network physical.'),
(32, 11, 'Megan Moore', 22, 'M.Tech CSE', 2018, 'Hardinfurt', 'tkelley@yahoo.com', '001-250-677-4135', 'Heavy person choose start market attorney between.'),
(33, 11, 'Amanda Banks', 33, 'B.Tech ME', 2017, 'North Destiny', 'zwhite@yahoo.com', '802-721-1744x4609', 'Forward leave art practice stock detail value.'),
(34, 12, 'Kimberly Harris', 25, 'B.Tech ECE', 2022, 'South Billyland', 'phillipsbrian@gmail.com', '+1-029-271-9208x211', 'Parent produce cut beyond maintain.'),
(35, 12, 'John Heath', 28, 'M.Tech ECE', 2021, 'New Curtis', 'fdixon@hotmail.com', '083.165.8589x86439', 'Check if since hair exist.'),
(36, 12, 'James Smith', 22, 'B.Tech CE', 2021, 'West Joy', 'jacobpoole@webb.com', '2553187245', 'Play pay real good human billion.'),
(37, 13, 'Timothy Hughes', 34, 'M.Tech ECE', 2015, 'Anthonymouth', 'wjohnson@medina-osborne.com', '041-560-4324x581', 'Market the particular available expect really.'),
(38, 13, 'Aaron Lindsey', 24, 'B.Tech CE', 2016, 'West George', 'brandycardenas@gmail.com', '+1-837-879-9555x1065', 'Look too reveal safe PM too.'),
(39, 13, 'Lynn Mccall', 26, 'M.Tech ECE', 2017, 'Lake Mistyborough', 'ktodd@gmail.com', '+1-667-341-2904x21242', 'Either total inside Mrs interesting less economy fire.'),
(40, 14, 'Dustin Franklin', 29, 'M.Tech CSE', 2022, 'South Sharonhaven', 'pnelson@bowen-sanford.biz', '+1-140-076-8587', 'Knowledge season region little continue onto agent green film at.'),
(41, 14, 'Richard Chavez', 30, 'M.Tech CSE', 2015, 'South Leslie', 'tracysosa@yahoo.com', '583.058.4689x1428', 'Certainly value create agree likely off.'),
(42, 14, 'Mark Hart', 22, 'B.Tech CE', 2020, 'Christopherstad', 'cdurham@garcia-garcia.com', '495-207-6631x6476', 'Thought certainly special seven physical court author carry focus.'),
(43, 15, 'Robert Cooper', 26, 'B.Tech CE', 2015, 'South Theresa', 'tylerdavis@hotmail.com', '+1-752-152-4511x655', 'Four seven ability probably few cost summer.'),
(44, 15, 'Tyler Miller', 34, 'B.Tech CE', 2018, 'Peggyville', 'zgarner@washington-taylor.com', '1216914199', 'Describe section few stay top.'),
(45, 15, 'Michele Gallagher', 30, 'M.Tech ECE', 2016, 'Lake Lindsey', 'sabrinabryan@gmail.com', '857.158.6470', 'Glass matter upon assume trouble key.'),
(46, 16, 'Paul Martinez', 35, 'M.Tech ECE', 2017, 'East Joel', 'ldalton@hotmail.com', '844.099.2438x8147', 'Body lay work no none say.'),
(47, 16, 'Jason Franklin', 22, 'B.Tech CE', 2021, 'Jeremymouth', 'aprilrojas@gmail.com', '001-720-180-2105x4310', 'Rule thus growth him power morning question.'),
(48, 16, 'Jason Myers', 27, 'B.Tech CSE', 2018, 'New Jillianshire', 'arojas@rowe.org', '+1-254-475-8675x4847', 'Forward provide upon yeah sense up add subject research sell.'),
(49, 17, 'Patrick Carey', 22, 'M.Tech ECE', 2015, 'East Thomas', 'christianhuynh@randall.info', '736-210-8011', 'Case none position hand benefit major friend through data difference.'),
(50, 17, 'Jill Mitchell', 35, 'M.Tech ECE', 2023, 'South Mary', 'shelbyanderson@baker.info', '001-581-160-0356x356', 'Buy assume part father himself research general college bed everybody.'),
(51, 17, 'Ricky Oliver', 31, 'B.Tech CSE', 2018, 'Port Donald', 'skirk@gmail.com', '(474)060-7124x5492', 'Song according foot choice space federal condition officer speech.'),
(52, 18, 'Sean Hunt', 23, 'M.Tech CSE', 2018, 'Kaneside', 'vunderwood@holt.com', '001-211-313-7306', 'Enough operation kitchen mind wife although them item.'),
(53, 18, 'Sherri Doyle', 35, 'B.Tech ME', 2019, 'Smithfurt', 'stephaniehart@yahoo.com', '(243)156-2449', 'Ten agree weight statement statement unit.'),
(54, 18, 'Billy Hudson', 33, 'B.Tech ECE', 2016, 'East Mariomouth', 'lisamoore@chapman.com', '807.100.9327', 'Minute offer yeah because head nation.'),
(55, 20, 'Sophia Oliver', 29, 'B.Tech CE', 2016, 'Patriciabury', 'berrymichael@yahoo.com', '514-925-0096x063', 'Now family above ready lawyer attack simply protect something.'),
(56, 20, 'James Thompson', 22, 'B.Tech ME', 2022, 'Lake Amy', 'fosterlisa@kirby.com', '+1-683-859-3067x8035', 'Road nothing defense customer family food run some Congress.'),
(57, 20, 'Desiree Landry', 34, 'B.Tech CSE', 2019, 'Port Ashleyfort', 'afloyd@anderson-welch.org', '001-509-833-8673x918', 'Check close agreement box people.'),
(58, 21, 'Kelsey Clarke', 24, 'M.Tech ECE', 2023, 'Scottstad', 'robertsonjennifer@austin.com', '001-394-351-4754x04154', 'True discussion without current rate business.'),
(59, 21, 'Miss Tracy Reed', 35, 'M.Tech ECE', 2020, 'Johnsonside', 'qcohen@harris.com', '685.221.4427x43893', 'Local cover interview us up.'),
(60, 21, 'Rebecca Taylor PhD', 23, 'B.Tech ECE', 2019, 'Williamland', 'utate@hotmail.com', '724-061-7921x1634', 'Blue walk water while woman travel not identify score model dinner.'),
(61, 22, 'Norma Fisher', 35, 'B.Tech CE', 2021, 'Tammyfort', 'tammy59@gmail.com', '242.194.8924x11578', 'Government first policy daughter.'),
(62, 22, 'Jessica Boyd', 22, 'B.Tech ME', 2023, 'Port Samanthatown', 'ypage@garrett.com', '513.933.2871', 'Year themselves your majority.'),
(63, 22, 'Eddie Martinez', 29, 'B.Tech CE', 2019, 'Lisaside', 'sean96@johnston-roberts.com', '(094)711-2201', 'Raise study modern miss dog Democrat quickly.'),
(64, 19, 'Jennifer Hill', 29, 'B.Tech ME', 2018, 'Kellerstad', 'chloe79@rogers.com', '352-560-1230', 'Plant view own available buy country store.'),
(65, 19, 'Brandon Bass', 30, 'B.Tech ECE', 2019, 'North Catherineborough', 'mendozajessica@giles.net', '(914)131-4562x08709', 'Record hospital employee toward.'),
(66, 19, 'Steven Hudson', 24, 'M.Tech ECE', 2016, 'Port Brian', 'matthewking@morse.biz', '001-845-642-8071', 'School name care several loss part.'),
(67, 23, 'Max Müller', 30, 'Mechanical Engineering', 2017, 'Munich, Germany', 'max.mueller@example.com', '+49-89-1234567', 'Currently working at BMW as a senior engineer.'),
(68, 23, 'Anna Schmidt', 28, 'Computer Science', 2019, 'Berlin, Germany', 'anna.schmidt@example.com', '+49-30-7654321', 'Software developer at SAP.'),
(69, 23, 'Lukas Fischer', 32, 'Electrical Engineering', 2016, 'Hamburg, Germany', 'lukas.fischer@example.com', '+49-40-2345678', 'Project manager at Siemens.'),
(70, 24, 'Sophie Wagner', 29, 'Civil Engineering', 2018, 'Stuttgart, Germany', 'sophie.wagner@example.com', '+49-711-3456789', 'Structural engineer at Hochtief.'),
(71, 24, 'Felix Becker', 31, 'Aerospace Engineering', 2015, 'Cologne, Germany', 'felix.becker@example.com', '+49-221-4567890', 'Working at Airbus in Hamburg.'),
(72, 24, 'Max Müller', 30, 'Mechanical Engineering', 2017, 'Munich, Germany', 'max.mueller@example.com', '+49-89-1234567', 'Currently working at BMW as a senior engineer.'),
(73, 25, 'Anna Schmidt', 28, 'Computer Science', 2019, 'Berlin, Germany', 'anna.schmidt@example.com', '+49-30-7654321', 'Software developer at SAP.'),
(74, 25, 'Lukas Fischer', 32, 'Electrical Engineering', 2016, 'Hamburg, Germany', 'lukas.fischer@example.com', '+49-40-2345678', 'Project manager at Siemens.'),
(75, 25, 'Sophie Wagner', 29, 'Civil Engineering', 2018, 'Stuttgart, Germany', 'sophie.wagner@example.com', '+49-711-3456789', 'Structural engineer at Hochtief.'),
(76, 26, 'Felix Becker', 31, 'Aerospace Engineering', 2015, 'Cologne, Germany', 'felix.becker@example.com', '+49-221-4567890', 'Working at Airbus in Hamburg.'),
(77, 26, 'Laura Neumann', 30, 'Psychology', 2017, 'Munich, Germany', 'laura.neumann@example.com', '+49-89-9876543', 'Clinical psychologist at Charité Berlin.'),
(78, 26, 'Tim Keller', 29, 'Philosophy', 2018, 'Frankfurt, Germany', 'tim.keller@example.com', '+49-69-8765432', 'Researcher at Goethe University.'),
(79, 27, 'Julia Braun', 27, 'Medicine', 2019, 'Düsseldorf, Germany', 'julia.braun@example.com', '+49-211-7654321', 'Resident doctor at University Hospital Düsseldorf.'),
(80, 27, 'Daniel Hoffmann', 31, 'Law', 2016, 'Bremen, Germany', 'daniel.hoffmann@example.com', '+49-421-6543210', 'Legal advisor at Deutsche Bank.'),
(81, 27, 'Katharina Wolf', 28, 'History', 2018, 'Leipzig, Germany', 'katharina.wolf@example.com', '+49-341-5432109', 'Archivist at German Historical Museum.'),
(82, 28, 'Stefan Meier', 32, 'Biology', 2015, 'Heidelberg, Germany', 'stefan.meier@example.com', '+49-6221-123456', 'Research scientist at Max Planck Institute.'),
(83, 28, 'Clara Schäfer', 29, 'Chemistry', 2018, 'Karlsruhe, Germany', 'clara.schaefer@example.com', '+49-721-234567', 'Lab technician at BASF.'),
(84, 28, 'Niklas Zimmermann', 30, 'Physics', 2017, 'Mannheim, Germany', 'niklas.zimmermann@example.com', '+49-621-345678', 'Physicist at CERN.'),
(85, 29, 'Lea Koch', 28, 'Mathematics', 2019, 'Freiburg, Germany', 'lea.koch@example.com', '+49-761-456789', 'Data analyst at Deutsche Telekom.'),
(86, 29, 'Jonas Richter', 31, 'Computer Science', 2016, 'Mainz, Germany', 'jonas.richter@example.com', '+49-6131-567890', 'Software engineer at SAP.'),
(87, 29, 'Marie Lehmann', 29, 'Political Science', 2018, 'Berlin, Germany', 'marie.lehmann@example.com', '+49-30-1234567', 'Policy advisor at Bundestag.'),
(88, 30, 'Thomas Brandt', 30, 'Economics', 2017, 'Potsdam, Germany', 'thomas.brandt@example.com', '+49-331-2345678', 'Economist at Deutsche Bundesbank.'),
(89, 30, 'Nina Frank', 28, 'Sociology', 2019, 'Cottbus, Germany', 'nina.frank@example.com', '+49-355-3456789', 'Social researcher at DIW Berlin.'),
(90, 30, 'Alexander Busch', 31, 'History', 2016, 'Magdeburg, Germany', 'alexander.busch@example.com', '+49-391-4567890', 'Museum curator at DDR Museum.'),
(91, 31, 'Sabrina Albrecht', 27, 'Law', 2020, 'Berlin, Germany', 'sabrina.albrecht@example.com', '+49-30-5678901', 'Junior lawyer at Freshfields Bruckhaus Deringer.'),
(92, 31, 'Jan Weber', 30, 'Environmental Science', 2017, 'Freiburg, Germany', 'jan.weber@example.com', '+49-761-123456', 'Environmental consultant at WWF Germany.'),
(93, 31, 'Lisa Krüger', 28, 'Biotechnology', 2019, 'Offenburg, Germany', 'lisa.krueger@example.com', '+49-781-234567', 'Research associate at BioNTech.'),
(94, 32, 'Patrick Lange', 31, 'Forestry', 2016, 'Titisee-Neustadt, Germany', 'patrick.lange@example.com', '+49-7651-345678', 'Forest manager at Black Forest National Park.'),
(95, 32, 'Melanie Schuster', 29, 'Geology', 2018, 'Lörrach, Germany', 'melanie.schuster@example.com', '+49-7621-456789', 'Geologist at BGR.'),
(96, 32, 'Tobias Engel', 32, 'Renewable Energy Engineering', 2015, 'Emmendingen, Germany', 'tobias.engel@example.com', '+49-7641-567890', 'Engineer at Enercon.'),
(97, 33, 'Sebastian Koch', 30, 'Mechanical Engineering', 2017, 'Aachen, Germany', 'sebastian.koch@example.com', '+49-241-123456', 'Design engineer at Ford Europe.'),
(98, 33, 'Vanessa Mayer', 28, 'Industrial Engineering', 2019, 'Eschweiler, Germany', 'vanessa.mayer@example.com', '+49-2403-234567', 'Operations manager at Thyssenkrupp.'),
(99, 33, 'Philipp Schmid', 31, 'Electrical Engineering', 2016, 'Düren, Germany', 'philipp.schmid@example.com', '+49-2421-345678', 'Electrical engineer at Siemens Energy.'),
(100, 34, 'Sandra Vogel', 29, 'Computer Science', 2018, 'Jülich, Germany', 'sandra.vogel@example.com', '+49-2461-456789', 'Software developer at IBM Germany.'),
(101, 34, 'Daniel Hartmann', 32, 'Automotive Engineering', 2015, 'Heinsberg, Germany', 'daniel.hartmann@example.com', '+49-2452-567890', 'Test engineer at Continental.'),
(102, 34, 'Christina Berg', 29, 'Mathematics', 2018, 'Bonn, Germany', 'christina.berg@example.com', '+49-228-123456', 'Data scientist at Deutsche Post DHL.'),
(103, 35, 'Martin Seidel', 30, 'Physics', 2017, 'Siegburg, Germany', 'martin.seidel@example.com', '+49-2241-234567', 'Researcher at Fraunhofer Institute.'),
(104, 35, 'Eva Lorenz', 28, 'Economics', 2019, 'Königswinter, Germany', 'eva.lorenz@example.com', '+49-2223-345678', 'Financial analyst at Deutsche Bank.'),
(105, 35, 'Andreas Pfeiffer', 31, 'Computer Science', 2016, 'Bad Godesberg, Germany', 'andreas.pfeiffer@example.com', '+49-228-456789', 'IT consultant at Accenture.'),
(106, 36, 'Monika Haas', 27, 'Philosophy', 2020, 'Bornheim, Germany', 'monika.haas@example.com', '+49-2222-567890', 'Lecturer at University of Cologne.'),
(107, 36, 'Jens Otto', 30, 'Law', 2017, 'Hamburg, Germany', 'jens.otto@example.com', '+49-40-123456', 'Legal counsel at Lufthansa.'),
(108, 36, 'Katrin Busch', 28, 'Journalism', 2019, 'Lübeck, Germany', 'katrin.busch@example.com', '+49-451', 'asdfghiuytrdcvbnklkihgf'),
(109, 37, 'Kenji Tanaka', 30, 'Engineering', 2017, 'Tokyo, Japan', 'kenji.tanaka@example.com', '+81-90-1234-5678', 'Currently a software architect at Sony.'),
(110, 37, 'Mei Sato', 29, 'Law', 2018, 'Osaka, Japan', 'mei.sato@example.com', '+81-80-2345-6789', 'Practicing corporate law in Tokyo.'),
(111, 37, 'Takumi Arai', 28, 'Economics', 2019, 'Nagoya, Japan', 'takumi.arai@example.com', '+81-70-3456-7890', 'Works as a financial analyst at Nomura.'),
(112, 38, 'Haruka Yamamoto', 27, 'Engineering', 2020, 'Fukuoka, Japan', 'haruka.yama@example.com', '+81-60-4567-8901', 'R&D engineer at Toyota.'),
(113, 38, 'Kenta Fujiwara', 31, 'Engineering', 2016, 'Kyoto, Japan', 'kenta.fuji@example.com', '+81-50-5678-9012', 'Project manager at Hitachi.'),
(114, 38, 'Yui Nakamura', 29, 'Medicine', 2018, 'Kyoto, Japan', 'yui.naka@example.com', '+81-90-9876-5432', 'Resident doctor at Kyoto University Hospital.'),
(115, 39, 'Shota Mori', 28, 'Science', 2019, 'Tokyo, Japan', 'shota.mori@example.com', '+81-80-8765-4321', 'Postdoctoral fellow in Biotech.'),
(116, 39, 'Reina Kobayashi', 27, 'Engineering', 2020, 'Nara, Japan', 'reina.koba@example.com', '+81-70-7654-3210', 'Robotics researcher at Panasonic.'),
(117, 39, 'Haruto Yamaguchi', 30, 'Engineering', 2017, 'Kobe, Japan', 'haruto.yama@example.com', '+81-60-6543-2109', 'Lead engineer at Fujitsu.'),
(118, 40, 'Aoi Takahashi', 26, 'Science', 2021, 'Hiroshima, Japan', 'aoi.taka@example.com', '+81-50-5432-1098', 'Environmental scientist in Sendai.'),
(119, 40, 'Riku Matsuda', 30, 'Biology', 2017, 'Osaka, Japan', 'riku.matsu@example.com', '+81-90-1122-3344', 'Geneticist at a pharma lab.'),
(120, 40, 'Aya Suzuki', 28, 'Engineering', 2019, 'Yokohama, Japan', 'aya.suzu@example.com', '+81-80-2233-4455', 'Automotive software engineer at Nissan.'),
(121, 41, 'Naoki Inoue', 29, 'Medicine', 2018, 'Nagoya, Japan', 'naoki.inoue@example.com', '+81-70-3344-5566', 'Neurosurgeon in Osaka General Hospital.'),
(122, 41, 'Emi Kondo', 27, 'Biology', 2020, 'Tokyo, Japan', 'emi.kondo@example.com', '+81-60-4455-6677', 'Cancer research specialist.'),
(123, 41, 'Souta Yamazaki', 31, 'Engineering', 2016, 'Kyoto, Japan', 'souta.yama@example.com', '+81-50-5566-7788', 'Automation engineer at Mitsubishi.'),
(124, 42, 'Yuki Sasaki', 28, 'Mechanical Engineering', 2019, 'Sendai, Japan', 'yuki.sasaki@example.com', '+81-90-6677-8899', 'Mechanical lead at Toshiba.'),
(125, 42, 'Mio Nakajima', 27, 'Materials Science', 2020, 'Sapporo, Japan', 'mio.naka@example.com', '+81-80-7788-9900', 'Researcher at Hitachi Materials.'),
(126, 42, 'Tomo Fujimoto', 29, 'AI', 2018, 'Aomori, Japan', 'tomo.fuji@example.com', '+81-70-8899-0011', 'AI engineer at Rakuten.'),
(127, 43, 'Saki Aoyama', 30, 'Mechanical Engineering', 2017, 'Niigata, Japan', 'saki.aoya@example.com', '+81-60-9900-1122', 'Lecturer at university.'),
(128, 43, 'Hinata Ishikawa', 26, 'AI', 2021, 'Miyagi, Japan', 'hinata.ishi@example.com', '+81-50-0011-2233', 'Working on autonomous robotics.'),
(129, 43, 'Daichi Okada', 30, 'Physics', 2017, 'Nagoya, Japan', 'daichi.okada@example.com', '+81-90-1233-4567', 'Physicist at JAXA.'),
(130, 44, 'Nana Shimizu', 29, 'Law', 2018, 'Osaka, Japan', 'nana.shimizu@example.com', '+81-80-2344-5678', 'Corporate lawyer in Tokyo.'),
(131, 44, 'Yuji Nakahara', 28, 'Information Science', 2019, 'Tokyo, Japan', 'yuji.naka@example.com', '+81-70-3455-6789', 'Software developer at LINE.'),
(132, 44, 'Akari Hayashi', 27, 'Physics', 2020, 'Fukuoka, Japan', 'akari.haya@example.com', '+81-60-4566-7890', 'Astrophysics researcher.'),
(133, 45, 'Takeru Ogawa', 31, 'Law', 2016, 'Kyoto, Japan', 'takeru.oga@example.com', '+81-50-5677-8901', 'Judge assistant, Supreme Court.'),
(134, 45, 'Sora Taniguchi', 30, 'Robotics', 2017, 'Tokyo, Japan', 'sora.tani@example.com', '+81-90-6788-9012', 'Leads robotics R&D at Honda.'),
(135, 45, 'Yuna Hoshino', 28, 'AI', 2019, 'Osaka, Japan', 'yuna.hoshi@example.com', '+81-80-7899-0123', 'AI ethics researcher.'),
(136, 46, 'Ryo Nishimura', 27, 'Electronics', 2020, 'Kawasaki, Japan', 'ryo.nishi@example.com', '+81-70-8900-1234', 'Working on chip design at NEC.'),
(137, 46, 'Hina Matsumoto', 29, 'Robotics', 2018, 'Tokyo, Japan', 'hina.matsu@example.com', '+81-60-9011-2345', 'Engineer in humanoid robotics.'),
(138, 46, 'Koki Yamane', 31, 'AI', 2016, 'Chiba, Japan', 'koki.yama@example.com', '+81-50-0122-3456', 'CTO at a robotics startup.'),
(139, 47, 'Airi Kuroda', 29, 'Agriculture', 2018, 'Sapporo, Japan', 'airi.kuro@example.com', '+81-90-2233-4567', 'Agri-researcher at NARO.'),
(140, 47, 'Hiroshi Yamashita', 30, 'Environmental Science', 2017, 'Hakodate, Japan', 'hiroshi.yama@example.com', '+81-80-3344-5678', 'Climate analyst at MET Japan.'),
(141, 47, 'Sena Ogino', 28, 'Chemistry', 2019, 'Tokyo, Japan', 'sena.ogi@example.com', '+81-70-4455-6789', 'Chemical analyst at Kao Corp.'),
(142, 48, 'Yuto Ando', 27, 'Agriculture', 2020, 'Nagano, Japan', 'yuto.ando@example.com', '+81-60-5566-7890', 'Organic farm consultant.'),
(143, 48, 'Mami Fukuda', 31, 'Environmental Science', 2016, 'Fukushima, Japan', 'mami.fuku@example.com', '+81-50-6677-8901', 'EIA lead at Japan EPA.'),
(144, 48, 'Souta Kinoshita', 30, 'Business', 2017, 'Tokyo, Japan', 'souta.kino@example.com', '+81-90-7788-9012', 'Startup founder in EdTech.'),
(145, 49, 'Aya Ishida', 29, 'Informatics', 2018, 'Osaka, Japan', 'aya.ishi@example.com', '+81-80-8899-0123', 'UX designer at Rakuten.'),
(146, 49, 'Reo Sakai', 28, 'Political Science', 2019, 'Yokohama, Japan', 'reo.sakai@example.com', '+81-70-9900-1234', 'Policy analyst at Cabinet Office.'),
(147, 49, 'Nana Kojima', 27, 'Business', 2020, 'Nagoya, Japan', 'nana.koji@example.com', '+81-60-1011-2345', 'Consultant at Deloitte.'),
(148, 50, 'Kaito Fujikawa', 31, 'Business', 2016, 'Tokyo, Japan', 'kaito.fuji@example.com', '+81-50-1122-3456', 'Marketing director at Sony.'),
(149, 50, 'Yuka Arai', 30, 'Journalism', 2017, 'Tokyo, Japan', 'yuka.arai@example.com', '+81-90-2233-3444', 'News anchor at NHK.'),
(150, 50, 'Tetsuya Mori', 29, 'Engineering', 2018, 'Chiba, Japan', 'tetsuya.mori@example.com', '+81-80-3344-4555', 'Works on smart cities in Japan.'),
(151, 51, 'Mai Inoue', 28, 'Business', 2019, 'Kobe, Japan', 'mai.inoue@example.com', '+81-70-4455-5666', 'E-commerce manager at MUJI.'),
(152, 51, 'Sho Nakano', 27, 'Journalism', 2020, 'Osaka, Japan', 'sho.naka@example.com', '+81-60-5566-6777', 'Editor at Asahi Shimbun.'),
(153, 51, 'Rina Yamada', 31, 'Business', 2016, 'Fukuoka, Japan', 'rina.yama@example.com', '+81-50-6677-7888', 'Marketing strategist.'),
(154, 52, 'Kouki Miura', 29, 'Engineering', 2018, 'Fukuoka, Japan', 'kouki.miura@example.com', '+81-90-7788-8899', 'Construction site lead in Tokyo.'),
(155, 52, 'Ami Nakata', 28, 'Humanities', 2019, 'Oita, Japan', 'ami.nakata@example.com', '+81-80-8899-9900', 'Museum curator.'),
(156, 52, 'Ryohei Ueno', 27, 'Design', 2020, 'Saga, Japan', 'ryohei.ueno@example.com', '+81-70-9900-0011', 'UX designer at LINE.'),
(157, 53, 'Minami Hoshino', 30, 'Humanities', 2017, 'Nagasaki, Japan', 'minami.hoshi@example.com', '+81-60-0011-1122', 'Literature professor.'),
(158, 53, 'Daigo Yamane', 31, 'Design', 2016, 'Kumamoto, Japan', 'daigo.yama@example.com', '+81-50-1122-2233', 'Freelance graphic designer.'),
(159, 53, 'Alice Johnson', 29, 'Computer Science', 2020, 'New York, USA', 'alice.johnson@example.com', '+1-202-555-0134', 'Currently working at Google as a software engineer.'),
(160, 54, 'David Kim', 31, 'Mechanical Engineering', 2019, 'Seoul, South Korea', 'david.kim@example.com', '+82-10-1234-5678', 'Pursuing Ph.D. in Robotics at MIT.'),
(161, 54, 'Sara Ahmed', 28, 'Electrical Engineering', 2021, 'Cairo, Egypt', 'sara.ahmed@example.com', '+20-2-1234-5678', 'Working as a design engineer at Intel.'),
(162, 54, 'Luca Rossi', 30, 'Civil Engineering', 2018, 'Milan, Italy', 'luca.rossi@example.com', '+39-02-1234-567', 'Site manager at Vinci Construction in Europe.'),
(163, 55, 'Ananya Rao', 25, 'B.Tech CSE', 2021, 'Hyderabad', 'ananya.rao@example.com', '9876543210', 'Working at Infosys'),
(164, 55, 'Rohan Mehta', 26, 'B.Tech ECE', 2020, 'Delhi', 'rohan.mehta@example.com', '9123456780', 'Pursuing M.Tech at IIT Delhi'),
(165, 55, 'Sneha Kapoor', 24, 'B.Tech IT', 2022, 'Mumbai', 'sneha.kapoor@example.com', '9988776655', 'Freelance developer'),
(166, 56, 'Arjun Singh', 27, 'B.Tech Mechanical', 2019, 'Jaipur', 'arjun.singh@example.com', '9090909090', 'Working at Tata Motors'),
(167, 56, 'Meera Iyer', 25, 'B.Tech Civil', 2021, 'Bangalore', 'meera.iyer@example.com', '8888888888', 'Preparing for GATE'),
(168, 56, 'Rahul Desai', 26, 'B.Tech CSE', 2020, 'Ahmedabad', 'rahul.desai@example.com', '9999999999', 'Data Analyst at Deloitte'),
(169, 57, 'Priya Sharma', 24, 'B.Tech EEE', 2022, 'Chandigarh', 'priya.sharma@example.com', '7777777777', 'Pursuing MBA at IIM'),
(170, 57, 'Karan Patel', 28, 'B.Tech ECE', 2018, 'Surat', 'karan.patel@example.com', '6666666666', 'Software Engineer at Capgemini'),
(171, 57, 'Divya Nair', 23, 'B.Tech CSE', 2023, 'Kochi', 'divya.nair@example.com', '7555555555', 'Intern at Microsoft'),
(172, 58, 'Aman Khan', 25, 'B.Tech IT', 2021, 'Lucknow', 'aman.khan@example.com', '9444444444', 'Web Developer at Zomato'),
(173, 58, 'Neha Joshi', 24, 'B.Tech CSE', 2022, 'Pune', 'neha.joshi@example.com', '7333333333', 'Started own startup'),
(174, 58, 'Vikram Reddy', 27, 'B.Tech Mechanical', 2019, 'Vijayawada', 'vikram.reddy@example.com', '8111111111', 'Working in Dubai'),
(175, 59, 'Tanvi Kulkarni', 26, 'B.Tech ECE', 2020, 'Nagpur', 'tanvi.kulkarni@example.com', '8222222222', 'Pursuing MS in USA'),
(176, 59, 'Siddharth Jain', 25, 'B.Tech CSE', 2021, 'Indore', 'siddharth.jain@example.com', '8333333333', 'Software Tester at TCS'),
(177, 59, 'Aishwarya Menon', 24, 'B.Tech EEE', 2022, 'Thiruvananthapuram', 'aishwarya.menon@example.com', '8444444444', 'Embedded Systems Intern'),
(178, 60, 'Nikhil Verma', 26, 'B.Tech Civil', 2020, 'Raipur', 'nikhil.verma@example.com', '8555555555', 'Site Engineer at L&T'),
(179, 60, 'Ritika Das', 23, 'B.Tech IT', 2023, 'Kolkata', 'ritika.das@example.com', '8666666666', 'Preparing for GRE'),
(180, 60, 'Yash Sharma', 28, 'B.Tech CSE', 2018, 'Bhopal', 'yash.sharma@example.com', '8777777777', 'Team Lead at Wipro');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `college_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `location` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `courses` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `name`, `location`, `description`, `fees`, `courses`, `website`) VALUES
(1, 'Tsinghua University', 'Beijing, China', 'Tsinghua is one of the most prestigious and influential universities in China, known for its strong programs in engineering, computer science, and natural sciences.', 0.00, 'Engineering, Computer Science, Architecture, Economics, Law', 'https://www.tsinghua.edu.cn'),
(2, 'Peking University', 'Beijing, China', 'A leading comprehensive university, often ranked among the best in Asia. It has strong humanities, science, and social science programs.', 0.00, 'Philosophy, Chinese Literature, Economics, Law, Physics', 'https://www.pku.edu.cn'),
(3, 'Fudan University', 'Shanghai, China', 'Fudan is one of China’s most selective and internationalized universities, known for its modern campus and emphasis on global education.', 0.00, 'Business, International Relations, Journalism, Computer Science', 'https://www.fudan.edu.cn'),
(4, 'Zhejiang University', 'Hangzhou, China', 'A member of the elite C9 League, Zhejiang University is strong in science, technology, agriculture, and medicine.', 0.00, 'Mechanical Engineering, Biotechnology, Public Health, Software Engineering', 'https://www.zju.edu.cn'),
(5, 'University of Tokyo', 'Japan', 'Japan’s most prestigious university known for research excellence.', 500000.00, 'Engineering, Law, Economics', 'https://www.u-tokyo.ac.jp'),
(6, 'Kyoto University', 'Japan', 'One of Asia’s leading universities with a strong academic tradition.', 450000.00, 'Science, Engineering, Medicine', 'https://www.kyoto-u.ac.jp'),
(7, 'Osaka University', 'Japan', 'Renowned for innovation and research, especially in health sciences.', 430000.00, 'Medicine, Biology, Engineering', 'https://www.osaka-u.ac.jp'),
(8, 'Tohoku University', 'Japan', 'Located in Sendai, known for open-door policy and research.', 420000.00, 'Mechanical Engineering, Materials Science, AI', 'https://www.tohoku.ac.jp'),
(9, 'Nagoya University', 'Japan', 'Prestigious university with multiple Nobel laureates.', 410000.00, 'Physics, Law, Information Science', 'https://www.nagoya-u.ac.jp'),
(10, 'Tokyo Institute of Technology', 'Japan', 'Premier institution focused on science and technology.', 470000.00, 'Robotics, AI, Electronics', 'https://www.titech.ac.jp'),
(11, 'Hokkaido University', 'Japan', 'Located in Sapporo, known for research in agriculture and environment.', 400000.00, 'Agriculture, Environmental Science, Chemistry', 'https://www.global.hokudai.ac.jp'),
(12, 'Keio University', 'Japan', 'Japan’s oldest private university with strong industry ties.', 550000.00, 'Business, Informatics, Political Science', 'https://www.keio.ac.jp'),
(13, 'Waseda University', 'Japan', 'Leading private university in Tokyo, popular with international students.', 530000.00, 'Engineering, Journalism, Business', 'https://www.waseda.jp'),
(14, 'Kyushu University', 'Japan', 'Comprehensive national university located in Fukuoka.', 440000.00, 'Engineering, Humanities, Design', 'https://www.kyushu-u.ac.jp'),
(15, 'Technical University of Munich', 'Germany', 'TUM is one of Europe’s top universities, known for engineering and technology.', 0.00, 'Engineering, Computer Science, Business', 'https://www.tum.de'),
(16, 'Heidelberg University', 'Germany', 'Heidelberg is Germany’s oldest university, known for research and humanities.', 0.00, 'Medicine, Law, Natural Sciences', 'https://www.uni-heidelberg.de'),
(17, 'Ludwig Maximilian University of Munich', 'Germany', 'LMU is a leading research university located in Munich.', 0.00, 'Economics, Psychology, Arts', 'https://www.en.uni-muenchen.de'),
(18, 'RWTH Aachen University', 'Germany', 'RWTH is Germany’s largest technical university with a strong engineering focus.', 0.00, 'Mechanical Engineering, IT, Physics', 'https://www.rwth-aachen.de'),
(19, 'Humboldt University of Berlin', 'Germany', 'A prominent Berlin university with strengths in humanities and social sciences.', 0.00, 'Philosophy, History, Sociology', 'https://www.hu-berlin.de'),
(20, 'University of Freiburg', 'Germany', 'Renowned for its interdisciplinary research and historic campus.', 0.00, 'Biology, Chemistry, Political Science', 'https://www.uni-freiburg.de'),
(21, 'University of Göttingen', 'Germany', 'Well-known for science and research contributions.', 0.00, 'Physics, Mathematics, Forest Science', 'https://www.uni-goettingen.de'),
(22, 'Karlsruhe Institute of Technology', 'Germany', 'KIT is a major research university in engineering and natural sciences.', 0.00, 'Robotics, AI, Energy Science', 'https://www.kit.edu'),
(23, 'Free University of Berlin', 'Germany', 'A top public research university with a global reputation.', 0.00, 'Public Policy, Law, Cultural Studies', 'https://www.fu-berlin.de'),
(24, 'University of Stuttgart', 'Germany', 'Strong focus on engineering, architecture, and technology.', 0.00, 'Automotive Engineering, Architecture, Computer Science', 'https://www.uni-stuttgart.de'),
(25, 'Griffith University', 'Australia', 'Griffith University is known for its strong emphasis on research and innovation.', 2600000.00, 'Environmental Science, Business, Education', 'https://www.griffith.edu.au'),
(26, 'RMIT University', 'Australia', 'RMIT is a global university of technology, design, and enterprise in Melbourne.', 2700000.00, 'Engineering, Fashion, IT', 'https://www.rmit.edu.au'),
(27, 'Curtin University', 'Australia', 'Curtin is a leading innovation university in Western Australia.', 2500000.00, 'Mining, Data Science, Nursing', 'https://www.curtin.edu.au'),
(28, 'Deakin University', 'Australia', 'Deakin University is known for its online education and research facilities.', 2550000.00, 'Cybersecurity, Business Analytics, Psychology', 'https://www.deakin.edu.au'),
(29, 'La Trobe University', 'Australia', 'La Trobe is a public university based in Melbourne with strong industry connections.', 2450000.00, 'Health, Law, Biological Sciences', 'https://www.latrobe.edu.au'),
(30, 'Bond University', 'Australia', 'Bond is a private university known for small class sizes and a fast-track degree system.', 3500000.00, 'Law, Business, Medicine', 'https://bond.edu.au'),
(31, 'University of Melbourne', 'Australia', 'The University of Melbourne is a leading research university in Australia.', 3200000.00, 'Computer Science, Engineering, Medicine', 'https://www.unimelb.edu.au'),
(32, 'Australian National University', 'Australia', 'ANU is a world-renowned university located in Canberra.', 3100000.00, 'Physics, Political Science, Law', 'https://www.anu.edu.au'),
(33, 'University of Sydney', 'Australia', 'The University of Sydney is one of Australia\'s oldest and most prestigious universities.', 3300000.00, 'Business, Medicine, Law', 'https://www.sydney.edu.au'),
(34, 'University of Queensland', 'Australia', 'UQ is a top research institution in Brisbane.', 3000000.00, 'Biotech, Engineering, Economics', 'https://www.uq.edu.au'),
(35, 'University of New South Wales', 'Australia', 'UNSW is a leading university in Sydney known for innovation.', 3150000.00, 'Computer Science, Finance, Architecture', 'https://www.unsw.edu.au'),
(36, 'Monash University', 'Australia', 'Monash is a globally recognized university in Melbourne.', 2900000.00, 'Pharmacy, IT, Psychology', 'https://www.monash.edu'),
(37, 'University of Western Australia', 'Australia', 'UWA is a prominent research university located in Perth.', 2800000.00, 'Marine Biology, Geology, Engineering', 'https://www.uwa.edu.au'),
(38, 'University of Adelaide', 'Australia', 'The University of Adelaide offers a wide range of programs.', 2750000.00, 'Health Sciences, AI, Agriculture', 'https://www.adelaide.edu.au'),
(39, 'University of Technology Sydney', 'Australia', 'UTS is a modern university focused on practical learning.', 2700000.00, 'IT, Design, Business', 'https://www.uts.edu.au'),
(40, 'Macquarie University', 'Australia', 'Macquarie University is known for business and health sciences.', 2650000.00, 'Accounting, Neuroscience, Law', 'https://www.mq.edu.au'),
(41, 'Massachusetts Institute of Technology', 'US', 'Massachusetts Institute of Technology is a top university in US.', 4500000.00, 'Computer Science, AI, Robotics', 'https://web.mit.edu'),
(42, 'Stanford University', 'US', 'Stanford University is a top university in US.', 4300000.00, 'Computer Science, Data Science, ML', 'https://www.stanford.edu'),
(43, 'Harvard University', 'US', 'Harvard University is a top university in US.', 4200000.00, 'Business, Law, Data Science', 'https://www.harvard.edu'),
(44, 'University of California, Berkeley', 'US', 'University of California, Berkeley is a top university in US.', 4000000.00, 'Computer Science, Engineering', 'https://www.berkeley.edu'),
(45, 'Carnegie Mellon University', 'US', 'Carnegie Mellon University is a top university in US.', 4100000.00, 'AI, Cybersecurity, Robotics', 'https://www.cmu.edu'),
(46, 'Princeton University', 'US', 'Princeton University is a top university in US.', 4200000.00, 'Mathematics, Physics, Philosophy', 'https://www.princeton.edu'),
(47, 'California Institute of Technology', 'US', 'California Institute of Technology is a top university in US.', 4400000.00, 'Astronomy, Chemistry, Engineering', 'https://www.caltech.edu'),
(48, 'Columbia University', 'US', 'Columbia University is a top university in US.', 4300000.00, 'Business, Law, Journalism', 'https://www.columbia.edu'),
(49, 'Yale University', 'US', 'Yale University is a top university in US.', 4200000.00, 'Law, History, Literature', 'https://www.yale.edu'),
(50, 'University of Chicago', 'US', 'University of Chicago is a top university in US.', 4100000.00, 'Economics, Sociology, Political Science', 'https://www.uchicago.edu'),
(51, 'Politecnico di Milano', 'Italy', 'Top engineering university in Italy.', 300000.00, 'Design, Engineering, Architecture', 'https://www.polimi.it'),
(52, 'University of Bologna', 'Italy', 'Oldest university in the Western world.', 250000.00, 'Medicine, Law, Humanities', 'https://www.unibo.it'),
(53, 'Sapienza University of Rome', 'Italy', 'One of the largest European universities.', 200000.00, 'Science, Arts, Engineering', 'https://www.uniroma1.it'),
(54, 'University of Padua', 'Italy', 'Historic Italian university.', 270000.00, 'Astronomy, Medicine, Law', 'https://www.unipd.it'),
(55, 'University of Milan', 'Italy', 'Public research university in Milan.', 260000.00, 'Science, Medicine, Law', 'https://www.unimi.it'),
(56, 'University of Pisa', 'Italy', 'Prestigious public university in Pisa.', 240000.00, 'Engineering, Physics, Philosophy', 'https://www.unipi.it'),
(57, 'University of Naples Federico II', 'Italy', 'Oldest public non-sectarian university.', 220000.00, 'Engineering, Medicine, Agriculture', 'https://www.unina.it'),
(58, 'University of Trento', 'Italy', 'Well-ranked public university.', 250000.00, 'Cognitive Science, Engineering', 'https://www.unitn.it'),
(59, 'University of Turin', 'Italy', 'Major Italian university.', 240000.00, 'Law, Medicine, Arts', 'https://www.unito.it'),
(60, 'University of Florence', 'Italy', 'Located in Florence, known for Arts.', 230000.00, 'Arts, Science, Education', 'https://www.unifi.it');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Tanvi', 'bl.en.u4cse22268@bl.students.amrita.edu', 'Information query', 'Need info about colleges in US to join in Data Science domain'),
(2, 'sai', 'sai@gmail.com', 'Information query', 'i hve registered for your website its very useful'),
(3, 'Dhara', 'dharalakshmi436@gmail.com', 'regarding website', 'its very good webiste, we can know which path we are best and also know which cllg to prefer.\r\n\r\nthank you so much'),
(4, 'Rohit', 'rohit@gmail.com', 'regarding your website', 'its very useful and so helpfull'),
(5, 'Rohit', 'nunnaguppalarohit@gmail.com', 'software enginnering', 'Did you guys completed website by models');

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `eligibility` text NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`id`, `title`, `eligibility`, `amount`, `deadline`, `description`) VALUES
(14, 'Merit-Based Excellence Scholarship', 'Undergraduate students with GPA > 3.8', '5000', '2025-06-30', 'Awarded to students who demonstrate exceptional academic achievement.'),
(15, 'Women in STEM Grant', 'Female students pursuing STEM degrees', '3000', '2025-07-15', 'Supports women entering science, technology, engineering, and mathematics fields.'),
(16, 'First-Generation College Fund', 'First-generation college students', '2500', '2025-08-01', 'Financial support for students who are the first in their family to attend college.'),
(17, 'Financial Need Scholarship', 'Low-income students enrolled full-time', '4000', '2025-06-20', 'Offered to students demonstrating significant financial need.'),
(18, 'International Student Award', 'International students enrolled in any program', '2000', '2025-07-10', 'For international students to help cover tuition and living expenses.'),
(19, 'Community Service Scholarship', 'Students with 100+ hours of community service', '3500', '2025-09-05', 'Recognizes students who have made a significant impact through community service.'),
(20, 'Athletic Achievement Grant', 'Student athletes with outstanding records', '4500', '2025-07-25', 'Supports athletes excelling in sports and maintaining academic standards.'),
(21, 'Arts & Design Scholarship', 'Students majoring in Fine Arts or Design', '3000', '2025-08-10', 'Encourages creativity and talent in the visual and performing arts.'),
(22, 'Tech Leaders of Tomorrow Fund', 'Computer science students with leadership roles', '4000', '2025-09-01', 'For students in tech with demonstrated leadership and innovation.'),
(23, 'Rural Student Support Scholarship', 'Students from rural or underserved areas', '2000', '2025-06-15', 'Aims to promote higher education among students from remote regions.'),
(24, 'asdfghjkl', '60000', '12345', '2026-11-02', 'sdfjgh');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_applications`
--

CREATE TABLE `scholarship_applications` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship_applications`
--

INSERT INTO `scholarship_applications` (`id`, `name`, `email`, `course`, `year`, `reason`, `submitted_at`) VALUES
(1, 'tanvi', 'bl.en.u4cse22218@bl.students.amrita.edu', 'data science', 2023, 'dcvghytresazxcvbjkl.', '2025-05-14 04:54:24'),
(2, 'tanvi', 'bl.en.u4cse22218@bl.students.amrita.edu', 'Robotics', 2021, 'wedc', '2025-05-14 05:50:18'),
(3, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 2025, 'As i have skills so i can deserve this scholarship', '2025-05-14 13:50:46'),
(4, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 2025, 'zxcvbnm', '2025-05-14 14:10:58'),
(5, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 2025, 'zxcvbnm', '2025-05-14 14:20:13'),
(6, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 3, 'zxcvbnm', '2025-05-14 14:20:25'),
(7, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 3, 'ZXCVBNM', '2025-05-14 14:57:36'),
(8, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 3, 'zxcvbnm', '2025-05-14 15:31:40'),
(9, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 3, 'abcr', '2025-05-15 08:50:02'),
(10, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 3, 'fhjn', '2025-05-15 08:54:43'),
(11, 'Dhara Lakshmi Kusumanchi', 'dharalakshmi436@gmail.com', 'computer science', 3, 'jhgf', '2025-05-16 19:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `afford_price` int(11) NOT NULL,
  `cgpa` float NOT NULL,
  `gate_rank` int(11) NOT NULL,
  `preferred_location` varchar(255) NOT NULL,
  `preferred_degree` varchar(255) NOT NULL,
  `preferred_course` varchar(255) NOT NULL,
  `Languages Known` varchar(225) NOT NULL,
  `preferred_college` varchar(255) NOT NULL,
  `visa_document` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `name`, `father_name`, `mother_name`, `age`, `afford_price`, `cgpa`, `gate_rank`, `preferred_location`, `preferred_degree`, `preferred_course`, `Languages Known`, `preferred_college`, `visa_document`) VALUES
(1, 'tanvi', 'rama mohan', 'parvathi', 22, 5400000, 7.14, 234, 'Japan', 'b.tech', 'Design', '', 'harvard university', 'Resume_Dhara.pdf'),
(2, 'tanvi', 'rama mohan', 'parvathi', 22, 5400000, 7.14, 234, 'Japan', 'b.tech', 'Design', '', 'harvard university', 'Resume_Dhara.pdf'),
(3, 'tanvi', 'rama mohan', 'parvathi', 22, 5400000, 7.14, 234, 'Japan', 'b.tech', 'Design', '', 'harvard university', 'Resume_Dhara.pdf'),
(4, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 19, 5500000, 8.99, 6000, 'Australia', 'MBA', 'data science', '', 'harvard university', 'BL.EN.U4CSE22218_Dhara Lakshmi.pdf'),
(5, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 19, 5500000, 8.99, 6000, 'Australia', 'MBA', 'data science', '', 'harvard university', 'BL.EN.U4CSE22218_Dhara Lakshmi.pdf'),
(6, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 19, 5500000, 8.99, 6000, 'Australia', 'MBA', 'data science', '', 'harvard university', 'BL.EN.U4CSE22218_Dhara Lakshmi.pdf'),
(7, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 19, 5500000, 8.99, 8000, 'Australia', 'Mtech', 'computer science', '', 'harvard university', 'Crowdfunding.pdf'),
(8, 'Varun Kumar', 'Krishna', 'Rani', 22, 4700000, 7.03, 8900, 'Italy', 'MBA', 'computer science', '', 'Massachusetts Institute of Technology', 'cisco.pdf'),
(9, 'Varun Kumar', 'Krishna', 'Rani', 22, 4700000, 7.03, 8900, 'Italy', 'MBA', 'computer science', '', 'harvard university', 'cisco.pdf'),
(10, 'Varun Kumar', 'Krishna', 'Rani', 22, 4700000, 8, 8900, 'Italy', 'MBA', 'computer science', '', 'harvard university', 'cisco.pdf'),
(11, 'Varun Kumar', 'Krishna', 'Rani', 22, 4700000, 8.99, 6500, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'cisco.pdf'),
(12, 'Varun Kumar', 'Krishna', 'Rani', 22, 5500000, 8.99, 6500, 'China', 'MBA', 'computer science', '', 'harvard university', 'cisco.pdf'),
(13, 'Varun Kumar', 'Krishna', 'Rani', 22, 5500000, 8.99, 6500, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'cisco.pdf'),
(14, 'Varun Kumar', 'Krishna', 'Rani', 22, 5500000, 8.99, 6500, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'cisco.pdf'),
(15, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Rani', 25, 5500000, 8.99, 6000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'edu.amrita-DGMST-2023BLQQENQQU4CSE22218III (1).pdf'),
(16, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Rani', 25, 5500000, 8.99, 6000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'edu.amrita-DGMST-2023BLQQENQQU4CSE22218III (1).pdf'),
(17, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Rani', 25, 5500000, 8.99, 6000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'edu.amrita-DGMST-2023BLQQENQQU4CSE22218III (1).pdf'),
(18, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Rani', 25, 5500000, 8.99, 6000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'Crowdfunding.pdf'),
(19, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Rani', 25, 5500000, 8.99, 6000, 'Australia', 'MBA', 'computer science', '', 'harvard university', '12_certificate.pdf'),
(20, 'Rohit', 'Murali', 'Laxmi', 20, 6000000, 8.4, 5000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'Real Time Tweet analysis.pdf'),
(21, 'tanvi', 'rama mohan', 'parvathi', 31, 5000000, 7.14, 123, 'Italy', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'CS_REPORT.pdf'),
(22, 'tanvi', 'rama mohan', 'parvathi', 31, 5000000, 7.14, 123, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'CS_REPORT.pdf'),
(23, 'tanvi', 'rama mohan', 'parvathi', 31, 5000000, 7.14, 123, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'CS_REPORT.pdf'),
(24, 'tanvi', 'rama mohan', 'parvathi', 31, 5000000, 7.14, 123, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'CS_REPORT.pdf'),
(25, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(26, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(27, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(28, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(29, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(30, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(31, 'tanvi', 'rama mohan', 'parvathi', 22, 5500000, 7.14, 234, 'US', 'b.tech', 'data science', '', 'Massachusetts Institute of Technology', 'DS_Springer.pdf'),
(32, 'Rohit', 'Murali', 'Laxmi', 20, 5500000, 8.4, 5000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'DS_Springer.pdf'),
(33, 'Rohit', 'Murali', 'Laxmi', 20, 5500000, 8.4, 5000, 'US', 'MBA', 'computer science', '', 'harvard university', 'DS_IEEE.pdf'),
(34, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 20, 6500000, 7.14, 5000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'DS_IEEE.pdf'),
(35, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 20, 5500000, 7.14, 5000, 'Australia', 'MBA', 'computer science', '', 'harvard university', 'DS_Springer.pdf'),
(36, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 20, 5500000, 7.14, 5000, 'Australia', 'MBA', 'computer science', '', 'Melbourne University', 'Resume_Dhara.pdf'),
(37, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 20, 5500000, 6.5, 5000, 'US', 'MBA', 'computer science', '', 'New  york University', 'Intelli-Ed_Project_Report.pdf'),
(38, 'Dhara Lakshmi Kusumanchi', 'Ravi', 'Manikyamba', 20, 5500000, 7.03, 5000, 'Australia', 'MBA', 'computer science', '', 'New  york University', 'BL.EN.U4CSE22218_Dhara Lakshmi.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'bl.en.u4cse22268@bl.students.amrita.edu', '$2y$10$qoT0UkRf.7U5FDjZId5LP.PwAOnCVdQO1Y9c5chMhzKDCQ.DecMnC'),
(2, 'Dhara Lakshmi Kusumanchi', '$2y$10$qoT0UkRf.7U5FDjZId5LP.PwAOnCVdQO1Y9c5chMhzKDCQ.DecMnC'),
(3, 'Tanvi', '$2y$10$qoT0UkRf.7U5FDjZId5LP.PwAOnCVdQO1Y9c5chMhzKDCQ.DecMnC'),
(4, 'Rohit', '$2y$10$yEbAKwamXpaOnILi6weEVO.ruCeI3x5bWknAd.DiRmX.3c6ZXo7N.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumni_id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_applications`
--
ALTER TABLE `scholarship_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
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
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `alumni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `scholarship_applications`
--
ALTER TABLE `scholarship_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
