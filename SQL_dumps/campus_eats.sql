create database if not exists `Campus_Eats`;
use `Campus_Eats`;

#
# TABLE STRUCTURE FOR: person
#

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(300) DEFAULT NULL,
  `person_email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (1, 'Rahsaan Collins', 'rcollins@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (2, 'Ansel Welch', 'awelch@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (3, 'Axel Bins PhD', 'abins@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (26, 'Frank Leffler', 'fleffler@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (27, 'Eden Schowalter', 'eschowalter@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (28, 'Eldridge Von', 'evon@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (39, 'Dagmar Kassulke', 'dkassulke@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (46, 'Haylee Hickle', 'hayleehickle@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (47, 'Mallory Rolfson', 'mrolfson@uncc.edu');
INSERT INTO `person` (`person_id`, `person_name`, `person_email`) VALUES (48, 'Lelia Tromp', 'ltromp@uncc.edu');

#
# TABLE STRUCTURE FOR: faculty
#
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`faculty_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
INSERT INTO `faculty` (`faculty_id`, `title`, `degree_college`, `highest_degree`) VALUES (1, 'Assistant Professor', 'UF', 'PhD');
INSERT INTO `faculty` (`faculty_id`, `title`, `degree_college`, `highest_degree`) VALUES (2, 'Professor', 'SJSU', 'Master');
INSERT INTO `faculty` (`faculty_id`, `title`, `degree_college`, `highest_degree`) VALUES (3, 'Adjunct Professor', 'UNCC', 'Master');

#
# TABLE STRUCTURE FOR: staff
#
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `position` varchar(75) DEFAULT NULL,
  `is_admin` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`staff_id`),
  CONSTRAINT `fk_Staff_person_id` FOREIGN KEY (`staff_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `check_is_admin_y_n` CHECK (`is_admin` in ('Y','N'))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
INSERT INTO `staff` (`staff_id`, `position`, `is_admin`) VALUES (26, 'VP Acad Affairs', 'Y');
INSERT INTO `staff` (`staff_id`, `position`, `is_admin`) VALUES (27, 'Lab Assistant', 'N');
INSERT INTO `staff` (`staff_id`, `position`, `is_admin`) VALUES (28, 'Dean Engineering', 'Y');
#
# TABLE STRUCTURE FOR: student
#
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `graduation_year` int(4) DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `fk_Student_person_id` FOREIGN KEY (`student_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
INSERT INTO `student` (`student_id`, `graduation_year`, `major`, `type`) VALUES (39, 1987, 'Philosophy', 'Undergraduate');
INSERT INTO `student` (`student_id`, `graduation_year`, `major`, `type`) VALUES (47, 1986, 'Accounting', 'Undergraduate');
INSERT INTO `student` (`student_id`, `graduation_year`, `major`, `type`) VALUES (48, 1978, 'Electronics', 'Graduate');
INSERT INTO `student` (`student_id`, `graduation_year`, `major`, `type`) VALUES (27, 2008, 'Computer Science', 'Graduate');
#
# TABLE STRUCTURE FOR: driver
#
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `driver` (`driver_id`, `student_id`, `license_number`, `date_hired`, `rating`) VALUES (101, 47, 'fi3980', '2019-06-29', '4');
INSERT INTO `driver` (`driver_id`, `student_id`, `license_number`, `date_hired`, `rating`) VALUES (201, 27, 'js4003', '2020-02-15', '5');

#
# TABLE STRUCTURE FOR: location
#

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `location_id` varchar(255),
  `location_name` varchar(255),
  `location_address` varchar(255) default NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) AUTO_INCREMENT=1;

INSERT INTO `location` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("F3D 5Y8","Magnis Dis Institute","9756 Sodales St.","36"),("N9H 6Y6","Non Nisi Corp.","P.O. Box 783, 7627 Et St.","62"),("L7Y 5T8","Iaculis Company","P.O. Box 671, 8039 At, St.","16");
INSERT INTO `location` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("B3S 1N3","Mi Aliquam Incorporated","8694 Sodales Road","85"),("Z7A 4A0","Semper PC","P.O. Box 666, 4589 Ac, Road","87"),("Z2O 0U0","Tempus Non Lacinia Industries","925-8804 Morbi Av.","60");
INSERT INTO `location` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("F2R 4T1","Phasellus Ornare Fusce Inc.","P.O. Box 362, 5759 Malesuada Avenue","84"),("W6D 1D0","Magna Et Ipsum Institute","259-848 Ut, St.","42"),("Z9S 9Q6","Tellus Corp.","7754 Convallis St.","10");

#
# TABLE STRUCTURE FOR: dorm
#

DROP TABLE IF EXISTS `dorm`;

CREATE TABLE `dorm` (
  `location_id` varchar(255),
  `location_name` varchar(255),
  `location_address` varchar(255) default NULL,
  `person_id` int(11) default NULL,
  PRIMARY KEY (`location_id`)
) AUTO_INCREMENT=1;

INSERT INTO `dorm` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("S7S 4K4","Sodales Mauris PC","P.O. Box 765, 6427 In Avenue",6),("L8O 8K1","In Incorporated","Ap #466-7953 Nunc Rd.",34),("U9E 8G8","Odio LLC","409-6903 Cras Ave",1);
INSERT INTO `dorm` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("V6A 8X6","Id Incorporated","9106 Pellentesque St.",22),("D4C 5H5","Urna Inc.","Ap #606-6897 Nec, Avenue",27),("U6P 7T2","Facilisi Sed Company","4090 Fusce Avenue",35);
INSERT INTO `dorm` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("V2P 0G6","Aenean Corporation","P.O. Box 198, 5564 Vel St.",1),("G6P 5L7","Et Company","8823 Imperdiet Avenue",19),("Y2G 7F7","Quis Diam Luctus LLP","5328 Aliquet, St.",3);


#
# TABLE STRUCTURE FOR: student center
#

DROP TABLE IF EXISTS `student_center`;

CREATE TABLE `student_center` (
  `location_id` varchar(255),
  `location_name` varchar(255),
  `location_address` varchar(255) default NULL,
  `person_id` int(11) default NULL,
  PRIMARY KEY (`location_id`)
) AUTO_INCREMENT=1;

INSERT INTO `student_center` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("O8C 4E4","Mauris Suspendisse Aliquet Foundation","2351 Dignissim Avenue",2),("W4S 0O6","Tristique Pellentesque Industries","P.O. Box 957, 9316 Mi Street",22),("R1X 9D5","Euismod Institute","6071 Ut Road",18);
INSERT INTO `student_center` (`location_id`,`location_name`,`location_address`,`person_id`) VALUES ("B7Y 4Z1","Tempus Scelerisque Lorem LLC","322-7005 Semper, Rd.",48),("Q4F 3T6","Eu Augue Porttitor PC","2869 Interdum. Street",8),("L2P 7Y0","Blandit Industries","P.O. Box 508, 5410 Cursus. Road",14);


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` varchar(255),
  `total_price` varchar(100) default NULL,
  `delivery_fee` varchar(100) default NULL,
  `delivery_time` mediumint default NULL,
  PRIMARY KEY (`driver_id`)
) AUTO_INCREMENT=1;

INSERT INTO `orders` (`driver_id`,`restaurant_id`,`total_price`,`delivery_fee`,`delivery_time`) VALUES (7,"A1H 1E1","$22.63","$5.00",10),(10,"D9U 2Z4","$46.54","$5.00",4),(3,"Q3J 4R7","$41.37","$5.00",2);
INSERT INTO `orders` (`driver_id`,`restaurant_id`,`total_price`,`delivery_fee`,`delivery_time`) VALUES (20,"T2K 4J4","$69.73","$5.00",5),(53,"S6H 5X4","$53.08","$5.00",5),(27,"J7J 7R3","$17.70","$5.00",12);

#
# TABLE STRUCTURE FOR: restaurant
#

DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant` (
  `location` varchar(255) default NULL,
  `restaurant_id` varchar(255),
  `schedule` TEXT default NULL,
  `website` TEXT default NULL,
  `delivery_time` mediumint default NULL,
  PRIMARY KEY (`restaurant_id`)
) AUTO_INCREMENT=1;

INSERT INTO `restaurant` (`location`,`restaurant_id`,`schedule`,`website`,`delivery_time`) VALUES ("4122 Libero. Road","Libero","Monday-Friday:8:00 am -5:00 pm","www.commodo.com",9),("8393 Dui. St.","Dui","Monday-Friday:8:00 am -7:00 pm","www.double.com",2),("3348 Facilisis St.","RBlaze","Monday-Friday:8:00 am -6:00 pm","www.redblaze.com",1);
INSERT INTO `restaurant` (`location`,`restaurant_id`,`schedule`,`website`,`delivery_time`) VALUES ("5023 Sed Rd.","Sed","Monday-Friday:8:00 am -5:00 pm","www.nuc.com",4),("897 Donec Av.","Donec","Monday-Friday:8:00 am -5:00 pm","www.eleifend.com",6),("9565 Lectus Rd.","Lectus","Monday-Friday:8:00 am -4:00 pm","www.semper.com",9);
INSERT INTO `restaurant` (`location`,`restaurant_id`,`schedule`,`website`,`delivery_time`) VALUES ("4454 Vel Street","VelVEl","Monday-Friday:8:00 am -3:00 pm","www.lobortis.com",11),("4123 Mauris Av.","A3J","Monday-Friday:8:00 am -5:00 pm","www.mauris.com",11),("6690 Fusce Av.","Fusce","Monday-Friday:8:00 am -5:00 pm","www.ligula.com",5);

