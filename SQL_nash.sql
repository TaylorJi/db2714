create database MileStone;
use MileStone;

/* 멤버 테이블이 없어서 일단 필요한 부분만 임시로 만들어 둠 */
create table member
	(MemberID	INTEGER,
    PRIMARY KEY (MemberID));

/* 멀티플 PK가 안되서 일단 teamRegistrationNo만 PK 지정하고
   PAName은 그냥 놔둠.
 */
create table LeagueTeam
	(teamRegistrationNo		INTEGER, 
    teamName				VARCHAR(50), 
    ranking					INTEGER, 
    location				VARCHAR(50), 
    logo					VARCHAR(100), 
    foundationDate			DATE, 
    PAName					VARCHAR(50),
    PRIMARY KEY				(teamRegistrationNo));
    
create table emergencyContact
	(ePhone					VARCHAR(30),
    eName					VARCHAR(50),
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo),
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName),
    FOREIGN KEY (memberID) REFERENCES member(memberID),
    PRIMARY KEY 			(eName));

create table memberPhoneNum
	(phoneNumbers			VARCHAR(30),
    FOREIGN KEY (teamRegistrationNo) REFERENCES LeagueTeam(teamRegistrationNo),
    FOREIGN KEY (teamName) REFERENCES LeagueTeam(teamName),
    FOREIGN KEY (memberID) REFERENCES member(memberID),
    PRIMARY KEY				(phoneNumbers));
    



