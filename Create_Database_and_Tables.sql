IF	DB_ID('Insurance_Demo') IS NULL


--alter database Insurance_Demo set multi_user
CREATE DATABASE Insurance_Demo;
GO

USE Insurance_Demo;
GO

DROP TABLE IF EXISTS Insurance_Company

CREATE TABLE Insurance_Company (
  ic_ID INT IDENTITY(1,1), 
  Company varchar(150) NOT NULL,
  Address varchar(150) NOT NULL,
  City varchar(50) NOT NULL,
  State varchar(2) NOT NULL,
  Zip varchar(25) NOT NULL,
  Email varchar(100) NOT NULL,
  Phone varchar(50) NOT NULL,
  PRIMARY KEY(Email)
);
TRUNCATE TABLE Insurance_Company

INSERT INTO Insurance_Company 
VALUES
('Synchronised 24/7 complexity','2948 Sipes Drives Apt. 298\nDaniellaville, KY 09362','Boehmville','Pe','1','abbie.cole@example.org','701.663.0410x070'),
('Programmable explicit framework','43783 Ankunding Squares Apt. 571\nMekhiville, CA 82090','North Antonette','Mi','6','abbie69@example.com','(226)312-3643'),
('Extended systematic functionalities','0267 Ullrich Causeway\nLake Mckenziestad, WY 57055','South Preciouschester','Wa','2','abbigail.bartell@example.org','1-270-131-5577'),
('Secured attitude-oriented synergy','7273 Mayert Crossroad Suite 011\nNew Alizastad, OK 11392-2566','Marquesview','Ne','7','abbott.marquis@example.org','591.541.6694x83542'),
('Progressive logistical projection','198 Amaya Bypass Apt. 988\nNorth Flavio, IL 27904','Hagenesbury','Ne','4','abby.ziemann@example.org','(953)151-9925'),
('Vision-oriented contextually-based capability','8287 Chelsea Prairie\nChaddport, WY 65760','New Herbertmouth','Mi','9','aconsidine@example.org','(982)975-2414x53365'),
('Stand-alone motivating application','8841 Suzanne Manor Suite 036\nEast Brownland, MN 14807','Uptonton','Mo','6','adah61@example.org','855-386-6238'),
('Re-contextualized foreground productivity','59834 Mraz Neck\nGrimesport, TN 04242-4448','Port Samsonfurt','Ma','2','addison.bogisich@example.net','(714)497-0066'),
('Re-contextualized attitude-oriented algorithm','2547 Boehm Mountain Apt. 327\nUptonland, MI 97870','Lake Sidmouth','Al','5','adelia40@example.org','1-408-008-4828x6994'),
('De-engineered hybrid function','64492 Kunze Glen Suite 285\nBeaulahport, NC 11313-3703','Port Tiaratown','No','4','adeline.robel@example.org','828-216-6621')