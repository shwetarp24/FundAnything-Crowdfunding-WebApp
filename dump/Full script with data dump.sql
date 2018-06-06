CREATE SCHEMA IF NOT EXISTS funda;
USE funda ;

-- -----------------------------------------------------
-- Table funda.campaign
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS funda.campaign (
  ProjectID INT(11) NOT NULL AUTO_INCREMENT,
  ProjName VARCHAR(50) NULL DEFAULT NULL,
  Projcategory VARCHAR(50) NOT NULL DEFAULT '',
  Campaigndetails VARCHAR(500) NOT NULL DEFAULT '',
  Fundsneeded DECIMAL(10,2) NOT NULL DEFAULT '0.00',
  CreatedBy VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (ProjectID))
ENGINE = InnoDB
AUTO_INCREMENT = 20;



-- -----------------------------------------------------
-- Table funda.fuser
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS funda.fuser (
  Email VARCHAR(50) NOT NULL,
  FirstName VARCHAR(50) NULL DEFAULT NULL,
  LastName VARCHAR(50) NULL DEFAULT NULL,
  passcode VARCHAR(15) NOT NULL,
  PRIMARY KEY (Email));




-- -----------------------------------------------------
-- Table funda.donations
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS funda.donations (
  DonID INT(11) NOT NULL AUTO_INCREMENT,
  ProjectID INT(11) NOT NULL,
  AmountDonated DECIMAL(10,0) NULL DEFAULT NULL,
  Email VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (DonID),
  INDEX FK_Projid (ProjectID ASC),
  INDEX FK_Email2 (Email ASC),
  CONSTRAINT FK_Email2
    FOREIGN KEY (Email)
    REFERENCES funda.fuser (Email),
  CONSTRAINT FK_Projid
    FOREIGN KEY (ProjectID)
    REFERENCES funda.campaign (ProjectID));



-- -----------------------------------------------------
-- Table funda.userprofile
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS funda.userprofile (
  Email VARCHAR(50) NOT NULL,
  Interests VARCHAR(100) NULL DEFAULT NULL,
  Contactno VARCHAR(50) NULL DEFAULT NULL,
  AboutMe VARCHAR(50) NULL DEFAULT NULL,
  Profession VARCHAR(50) NULL DEFAULT NULL,
  CurrentRole VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (Email),
  CONSTRAINT FK_Email3
    FOREIGN KEY (Email)
    REFERENCES funda.fuser (Email));
    
INSERT INTO fuser VALUES ('abc','Ab','Bc','sesame'),('akdu@uncc.edu',NULL,NULL,'sesame'),('andi@gmail.com','Andrea','Steelman','sesame'),('brose@yahoo.com','Billy','Rose','sesame'),('jsmith@gmail.com','John','Smith','sesame'),('meet@uthra.com',NULL,NULL,'sesame'),('p@b.com',NULL,NULL,'sesame'),('spa@uncc.edu',NULL,NULL,'sesame'),('spatil29@uncc.edu','Shweta','Patil','sesame');    

INSERT INTO userprofile VALUES ('abc','Drawing, Painting','9809389809','ArtLover','Artist','Designer'),('akdu@uncc.edu','sjfhv','988768','hmdfv ','djhfvb','djfvhb'),('andi@gmail.com','Polo','8797689809','Teacher','teacher','teacher'),('brose@yahoo.com','Golf','5468798097','Sports lover','Doctor','Physician'),('jsmith@gmail.com','Karate','5467687980','Love Combat Sports','Scientist','CEO'),('meet@uthra.com','jsfhv','98789','jmhfv',' jvdfhb','ksjfbhv'),('p@b.com','jbhs','987867','kjxvjh ','msnf v','mxnv '),('spa@uncc.edu','sjvh','98093','skhfvb',' dfjhvb',' dkjhvb'),('spatil29@uncc.edu','Dance, Piiano','9809389810','GradStudent','Student','Student');

INSERT INTO campaign VALUES (1,'Crafty','Arts and Crafts','86 (the band) - True Life Songs and Pictures',10000.00,'spatil29@uncc.edu'),(2,'Miller\'s Instistute of Learning','Education','Paddlefoot - The first CD',15000.00,'jsmith@gmail.com'),(3,'Banking for Blind','IT','Paddlefoot - The second CD',12000.00,'spatil29@uncc.edu'),(4,'Wheels on the go','Engineering','Joe Rut - Genuine Wood Grained Finish',16750.00,'jsmith@gmail.com'),(5,'Aromatic you','Fragrances','Aroma Therapy is therapeutic treatment with aromatic essential oils. It can be used by anybody for physical, physiological, Mental, spiritual well being daily or as and when required.',20000.00,'jsmith@gmail.com'),(6,'beautytips','Beauty','Creating a beauty blog is an awesome idea for any passionate individual who have sufficient knowledge about the industry and product. With very less investment you can start of your own. Selecting the niche and creating info-based quality article are key factors in getting success.',12000.00,'spatil29@uncc.edu'),(7,'We the planners','Home','Decoration  and party planning whenever and wherever necassary',14250.00,'spatil29@uncc.edu'),(8,'Garden packed','Garden','We sell “garden packs” prepared for beginners, especially those who want to get into container gardening. If you have a green thumb and love planting, this would be a fun and rewarding business to get into.',17000.00,NULL),(9,'Piano','Art','PianoLessons',2300.00,NULL),(10,'Cello','Music','CelloConcerts',1200.00,'spatil29@uncc.edu'),(11,'HipHop','Dance','DanceClasses',4500.00,'jsmith@gmail.com'),(12,'abc','art','abcdefs',2378.00,''),(13,'SwimmingPool','Sport','BuildaPool',23678.00,'jsmith@gmail.com'),(14,'tennis','sport','tenniscourt',4500.00,'brose@yahoo.com'),(15,'CaneCrafts','Arts','BuildCraftsforBlind',8700.00,'andi@gmail.com'),(16,'weer','er','oibin',3000.00,'andi@gmail.com'),(17,'vineyards','wine','winetasting',90000.00,'andi@gmail.com'),(18,'mil','yvufy','iuug ytdyo',1000.00,NULL),(19,'jhfdv ','kfjduvb','nfvb',2300.00,'spatil29@uncc.edu');

INSERT INTO donations VALUES (1,1,10,'spatil29@uncc.edu'),(2,2,20,'jsmith@gmail.com'),(3,3,30,'spatil29@uncc.edu'),(4,4,50,'jsmith@gmail.com'),(5,5,60,'spatil29@uncc.edu'),(6,10,100,'andi@gmail.com'),(7,4,20,'andi@gmail.com'),(8,6,40,'jsmith@gmail.com'),(9,7,100,'jsmith@gmail.com'),(10,13,300,'spatil29@uncc.edu'),(12,8,30,'jsmith@gmail.com'),(13,7,50,'andi@gmail.com'),(14,6,90,'spatil29@uncc.edu'),(15,13,50,'spatil29@uncc.edu'),(16,13,50,'spatil29@uncc.edu'),(17,13,1112,'spatil29@uncc.edu'),(18,13,1112,'spatil29@uncc.edu'),(19,13,29,'spatil29@uncc.edu'),(20,13,29,'spatil29@uncc.edu'),(21,13,30,'spatil29@uncc.edu'),(22,7,786,'spatil29@uncc.edu'),(23,17,60,'spatil29@uncc.edu');


UPDATE `funda`.`fuser` SET `FirstName`='Abir', `LastName`='Dutta' WHERE `Email`='akdu@uncc.edu';
UPDATE `funda`.`fuser` SET `FirstName`='Meetu ', `LastName`='Uthra' WHERE `Email`='meet@uthra.com';
UPDATE `funda`.`fuser` SET `FirstName`='Piyu', `LastName`='Sha' WHERE `Email`='p@b.com';
UPDATE `funda`.`fuser` SET `FirstName`='Shwe', `LastName`='tta' WHERE `Email`='spa@uncc.edu';
