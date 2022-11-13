drop database MileStone;
create database MileStone;
use MileStone;

/* 멤버 테이블이 없어서 일단 필요한 부분만 임시로 만들어 둠 */
create table member
	(MemberID	INTEGER AUTO_INCREMENT,
    PRIMARY KEY (MemberID));

/* 멀티플 PK가 안되서 일단 teamRegistrationNo만 PK 지정하고
   PAName은 그냥 놔둠.
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
  
create table emergencyContact
	(ePhone					VARCHAR(30),
    eName					VARCHAR(50) NOT NULL,
    teamRegistrationNo		INTEGER,
    teamName				VARCHAR(50) NOT NULL, 
    MemberID				INTEGER AUTO_INCREMENT,
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    FOREIGN KEY (memberID) REFERENCES member(memberID) ON UPDATE CASCADE,
    PRIMARY KEY 			(eName));

create table memberPhoneNum
	(phoneNumbers			VARCHAR(30),
    teamRegistrationNo		INTEGER,
    teamName				VARCHAR(50) NOT NULL, 
    MemberID				INTEGER AUTO_INCREMENT,
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    FOREIGN KEY (memberID) REFERENCES member(memberID) ON UPDATE CASCADE,
    PRIMARY KEY				(phoneNumbers));
    
create table sponsor
	(sponsor				VARCHAR(50) NOT NULL,
    teamRegistrationNo		INTEGER,
    teamName				VARCHAR(50) NOT NULL, 
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName) ON UPDATE CASCADE,
    PRIMARY KEY				(sponsor));
    
create table Department
	(DepartmentNo			INTEGER AUTO_INCREMENT,
    Budget					BIGINT NOT NULL,
    PRIMARY KEY				(DepartmentNo));
    
create table BroadCast
	(broadcastID			INTEGER AUTO_INCREMENT, 
    NameOfBroadcast			VARCHAR(50) NOT NULL,
    BoradcastFee			INTEGER NOT NULL,
    PRIMARY KEY				(broadcastID));

create table Trains
	(Location				VARCHAR(50) NOT NULL,
    Course					VARCHAR(50) NOT NULL,
    TrainDate				DATE);
