create database BloodManagement;
use BloodManagement;

CREATE TABLE bloodDonorTable(
  
`Id` INT NOT NULL AUTO_INCREMENT,
 
 `Name` VARCHAR(30) NOT NULL,
 
 `Gender` VARCHAR(10) NOT NULL,
 

 `Address` VARCHAR (50) NOT NULL,
 `Date` Date NOT NULL,
 `BloodGroup` VARCHAR (10) NOT NULL,
 `EID` VARCHAR (50) NOT NULL,
 `QTY` Int NOT NULL,
`Amount` Double NOT NULL,
 
  PRIMARY KEY (`Id`));




CREATE TABLE EMPTable( 
`Id` INT NOT NULL AUTO_INCREMENT,
 
 `Name` VARCHAR(30) NOT NULL,
 
  `EID` Int NOT NULL,
  `CONTACT` VARCHAR (30) NOT NULL,
 Key (EID), 
  PRIMARY KEY (`Id`));



CREATE TABLE `RECIEVERTable` (
  
 `Id` INT NOT NULL AUTO_INCREMENT,
 
 `Date` Date NOT NULL,

 `Name` VARCHAR (35) NOT NULL,
 `BloodGroup` VARCHAR (10) NOT NULL,
 `Gender` VARCHAR(10) NOT NULL,
 

 `Contact` VARCHAR(15) NOT NULL,
 
`DoctorName` VARCHAR(30) NOT NULL,
 
 `EID` Int NOT NULL,
 `AMount` INT NOT NULL,
 `QTY` INT NOT NULL, 
 Key(EID),
PRIMARY KEY (`Id`),
INDEX par_Tind (EId),
  CONSTRAINT fk_employee FOREIGN KEY (Eid)
  	REFERENCES EMPTable (EId)
		ON DELETE CASCADE
  		ON UPDATE CASCADE
) ENGINE=INNODB;



CREATE TABLE DoctorTable( 
  `Id` INT NOT NULL AUTO_INCREMENT,
 
  `Name` VARCHAR (30) NOT NULL,
  `CONTACT` VARCHAR (30) NOT NULL,
  `Address` VARCHAR(200),
   PRIMARY KEY (`Id`));


CREATE TABLE InventoryTable( 
  `Id` INT NOT NULL AUTO_INCREMENT,
 
  `BloodGroup` VARCHAR (30) NOT NULL,
  `Qty` int NOT NULL,
    PRIMARY KEY (`Id`));



CREATE TABLE TransactionTable( 
`Id` INT NOT NULL AUTO_INCREMENT,
 
 `Amount` INT NOT NULL,
 `EName` VARCHAR(30) NOT NULL,
 `Description` VARCHAR(200) NOT NULL,
 `TYP`VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Id`));











