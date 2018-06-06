CREATE DATABASE Funda;

USE Funda;

CREATE TABLE FUser (
  Email VARCHAR(50) PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  passcode varchar(15) NOT NULL
);

INSERT INTO FUser 
  (Email, FirstName, LastName)
VALUES 
  ('jsmith@gmail.com', 'John', 'Smith','sesame'),
  ('andi@gmail.com', 'Andrea', 'Steelman', 'sesame'), 
  ('brose@yahoo.com', 'Billy', 'Rose', 'sesame');

                         
CREATE TABLE UserRole (   
  Email VARCHAR(50) PRIMARY KEY,
  Rolename VARCHAR(15) NOT NULL,
  CONSTRAINT FK_Email1 FOREIGN KEY (Email)
  REFERENCES FUser(Email)
);
  
INSERT INTO UserRole VALUES ('jsmith@gmail.com', 'patron'),
                            ('andi@gmail.com', 'innovator'),
                            ('brose@yahoo.com', 'innovator');

CREATE TABLE campaign( 
    ProjectID INT NOT NULL AUTO_INCREMENT,
    ProjName VARCHAR(50),
    Projcategory VARCHAR(50) NOT NULL DEFAULT '',
    Campaigndetails VARCHAR(500) NOT NULL DEFAULT '',
    Fundsneeded DECIMAL(10,2) NOT NULL DEFAULT '0.00',
	fundcount INT,		
    PRIMARY KEY (ProjectID)
);

  
INSERT INTO campaign VALUES 
  (1,"Crafty",'Arts and Crafts', '86 (the band) - True Life Songs and Pictures', 10000.00, 3),
  (2, "Miller\'s Instistute of Learning", 'Education', 'Paddlefoot - The first CD', 15000.00, 3),
  (3, "Banking for Blind",'IT', 'Paddlefoot - The second CD', 12000.00, 2),
  (4, "Wheels on the go",'Engineering', 'Joe Rut - Genuine Wood Grained Finish', 16750.00, 4);

INSERT INTO `funda`.`campaign` (`ProjectID`, `Projcategory`, `Campaigndetails`, `Fundsneeded`, `fundcount`, `ProjName`) VALUES ('5', 'Fragrances', 'Aroma Therapy is therapeutic treatment with aromatic essential oils. It can be used by anybody for physical, physiological, Mental, spiritual well being daily or as and when required.', '20000', '1', 'Aromatic you');
INSERT INTO `funda`.`campaign` (`ProjectID`, `Projcategory`, `Campaigndetails`, `Fundsneeded`, `fundcount`, `ProjName`) VALUES ('6', 'Beauty', 'Creating a beauty blog is an awesome idea for any passionate individual who have sufficient knowledge about the industry and product. With very less investment you can start of your own. Selecting the niche and creating info-based quality article are key factors in getting success.', '12000', '7', 'beautytips');
INSERT INTO `funda`.`campaign` (`ProjectID`, `Projcategory`, `Campaigndetails`, `Fundsneeded`, `fundcount`, `ProjName`) VALUES ('7', 'Home', 'Decoration  and party planning whenever and wherever necassary', '14250', '4', 'We the planners');
INSERT INTO `funda`.`campaign` (`ProjectID`, `Projcategory`, `Campaigndetails`, `Fundsneeded`, `fundcount`, `ProjName`) VALUES ('8', 'Garden', 'We sell “garden packs” prepared for beginners, especially those who want to get into container gardening. If you have a green thumb and love planting, this would be a fun and rewarding business to get into.', '17000', '6', 'Garden packed');

CREATE TABLE Donations(
ProjectID INT PRIMARY KEY,
AmountDonated DECIMAL(10,2) NOT NULL DEFAULT '0.00',
Email VARCHAR(50),
  CONSTRAINT FK_Email2 FOREIGN KEY (Email)
  REFERENCES FUser(Email)
);

CREATE TABLE UserProfile(
Email VARCHAR(50) PRIMARY KEY,
Interests VARCHAR(100),
Contactno VARCHAR(50),
AboutMe VARCHAR(50),
Profession VARCHAR(50),
CurrentRole VARCHAR(10),
  CONSTRAINT FK_Email3 FOREIGN KEY (Email)
  REFERENCES FUser(Email)

);