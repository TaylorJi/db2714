
create database MileStone;
use MileStone;


/* 멀티플 PK가 안되서 일단 teamRegistrationNo만 PK 지정하고
   PAName은 UNIQUE로 지정해둠.
 */
create table LeagueTeam
	(teamRegistrationNo		INTEGER AUTO_INCREMENT, 
    teamName				VARCHAR(50) NOT NULL UNIQUE, 
    ranking					INTEGER, 
    location				VARCHAR(50) NOT NULL, 
    logo					VARCHAR(100), 
    foundationDate			DATE,
    PAName					VARCHAR(50) NOT NULL,
    PRIMARY KEY				(teamRegistrationNo));
  

    
create table sponsor
	(sponsor				VARCHAR(50) NOT NULL,
    teamRegistrationNo		INTEGER,
    teamName				VARCHAR(50), 
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    PRIMARY KEY				(sponsor));
    
create table Department
	(DepartmentNo			INTEGER AUTO_INCREMENT,
    Budget					BIGINT NOT NULL,
    PRIMARY KEY				(DepartmentNo));
    


/* Trains 릴레이션은 일단 테이블로 만들었음 */

    /*동일 부분   */ 
create table member
   (memberID int not null,
    teamRegistrationNo	int NOT NULL,
    teamName VARCHAR(50) NOT NULL,
    firstName VARCHAR(30) NOT NULL,
    midInitial	VARCHAR(30),
    lastName VARCHAR(30) NOT NULL,
    address	VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    height DECIMAL(4,1),
    weight DECIMAL(3,1),
    dob DATE,
    email VARCHAR(50),
	PRIMARY KEY (memberID),
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam (teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE
);

create table memberPhoneNum
	(phoneNumber			VARCHAR(30),
    teamRegistrationNo		int NOT NULL,
    teamName				VARCHAR(50), 
    memberID				INTEGER AUTO_INCREMENT,
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    FOREIGN KEY (memberID) REFERENCES member(memberID) ON UPDATE CASCADE,
    PRIMARY KEY	(phoneNumber));
    
create table emergencyContact
	(ePhone					VARCHAR(30),
    eName					VARCHAR(50) NOT NULL,
    teamRegistrationNo		INTEGER,
    teamName				VARCHAR(50), 
    MemberID				INTEGER AUTO_INCREMENT,
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    FOREIGN KEY (memberID) REFERENCES member(memberID) ON UPDATE CASCADE,
    PRIMARY KEY 			(eName));
    
create table marketingTeam
( departmentNo int not null,
  regionID int not null,
  website varchar(50),
  cs varchar(30),
  CONSTRAINT  mktPK PRIMARY KEY (departmentNO, regionID),
  CONSTRAINT  mktNoPK FOREIGN KEY (departmentNo) REFERENCES department (departmentNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);
 
 create table leagalTeam
( departmentNo int not null,
  lawyerLicence int not null,
  contractID varchar(30),
  regulation  varchar(80),
  CONSTRAINT  lgtPK PRIMARY KEY (lawyerLicence),
  CONSTRAINT  lgtNoPK FOREIGN KEY (departmentNo) REFERENCES department (departmentNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

create table staff
( memberID int not null,
  roleNo int not null,
  CONSTRAINT  stfPK  PRIMARY KEY (memberID, roleNo),
  CONSTRAINT  stfFrK FOREIGN KEY (memberID) REFERENCES member(memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

create table coach
( memberID int not null,
  coachingType varchar(30) not null,
  roleNo int not null,
  CONSTRAINT  coaPK PRIMARY KEY (memberID, coachingType),
  CONSTRAINT  coaFrK FOREIGN KEY (memberID) REFERENCES member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

create table manager
( memberID int not null,
  managerTier int not null,
  record varchar(30) not null,
  background varchar(50) not null,
  roleNo int not null,
  CONSTRAINT  manPK PRIMARY KEY (memberID, managerTier),
  CONSTRAINT  manFrK FOREIGN KEY (memberID) REFERENCES member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

create table player
   (backNumber int NOT NULL,
    MemberID int NOT NULL,
    numberOfHR int,
    battingAvg DECIMAL(6,2),
    errRate	DECIMAL(3,1),
    offense DECIMAL(3,1),
    defence	DECIMAL(3,1),
    tierroleNo int,
	CONSTRAINT  playPK PRIMARY KEY (backNumber, MemberID)
);
create table Trains
	(Location				VARCHAR(50) NOT NULL,
    Course					VARCHAR(50) NOT NULL,
    TrainDate				DATE,
    teamRegistrationNo		INTEGER,
    teamName				VARCHAR(50),
    backNumber				INTEGER,
    coachingType			VARCHAR(20),
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    FOREIGN KEY (backNumber) REFERENCES player(backNumber) ON UPDATE CASCADE);
    
    
/* 상우씨 */


CREATE TABLE `MileStone`.`PlayerAssociation` (
  `name` VARCHAR(100) NOT NULL,
  `foundationDate` DATETIME NULL,
PRIMARY KEY (`name`));


CREATE TABLE `MileStone`.`Referee` (
  `idNumber` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NULL,
  `midInitial` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  PRIMARY KEY (`idNumber`, `name`),
  INDEX `_idx` (`name` ASC) VISIBLE,
  CONSTRAINT `name_fk`
    FOREIGN KEY (`name`)
    REFERENCES `MileStone`.`PlayerAssociation` (`name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

    
CREATE TABLE `MileStone`.`stadium` (
  `StadiumID` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`StadiumID`)
);

CREATE TABLE TicketBooth (
StadiumID int not null,
BoothID int not null,
TicketPrice double,
TypesOfTickets varchar(20),
NumberOfTicket int,
SeatNumber int,
primary key (StadiumID, BoothID),
foreign key (StadiumID) references Stadium(StadiumID)
on delete cascade
on update cascade
);

CREATE TABLE `MileStone`.`Spectator` (
  `SeatNumber` INT NOT NULL,
  `StadiumID` INT NOT NULL,
  `CheeringTeam` VARCHAR(45) NULL,
  PRIMARY KEY (`SeatNumber`, `StadiumID`),
  INDEX `StadiumID_fk_idx` (`StadiumID` ASC) VISIBLE,
  CONSTRAINT `StadiumID_fk`
    FOREIGN KEY (`StadiumID`)
    REFERENCES `MileStone`.`Stadium` (`StadiumID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `SeatNumber_fk`
    FOREIGN KEY (`SeatNumber`)
    REFERENCES `MileStone`.`TicketBooth` (`StadiumID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE GameSchedule(
Name Varchar(100) not null,
GameNo int not null,
StadiumID int,
date date,
TeamMatching varchar (100),
primary key (Name, GameNo,date),
foreign key (Name) references PlayerAssociation(Name),
foreign key (StadiumID) references Stadium(StadiumID)
on delete cascade
on update cascade
);

CREATE TABLE `broadcast` (
  `broadcastID` int NOT NULL AUTO_INCREMENT,
  `NameOfBroadcast` varchar(50) NOT NULL,
  `BroadcastFee` int NOT NULL,
  `StadiumID` int DEFAULT NULL,
  PRIMARY KEY (`broadcastID`),
  KEY `StadiumID` (`StadiumID`),
  CONSTRAINT `broadcast_ibfk_1` FOREIGN KEY (`StadiumID`) REFERENCES `stadium` (`StadiumID`) ON UPDATE CASCADE
);
/*11 19일 상우씨 수정건 */

/*플랜 테이블 만들었습니다. */
CREATE TABLE `MileStone`.`Plans` (
  `name` VARCHAR(20) NOT NULL,
  `gameNo` INT NOT NULL,
  `date` date,
  PRIMARY KEY (`name`, `gameNo`));



