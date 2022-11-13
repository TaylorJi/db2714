create database MileStone;
create table LeagueTeam
	(teamRegistrationNo		INTEGER, 
    teamName				VARCHAR(50), 
    ranking					INTEGER, 
    location				VARCHAR(50), 
    logo					VARCHAR(100), 
    foundationDate			DATE, 
    PAName					VARCHAR(50),
    PRIMARY KEY				(teamRegistrationNo),
    PRIMARY KEY				(teamName));

create table member
	(MemberID	INTEGER,
    PRIMARY KEY (MemberID));




create table movie
	(movieID	INTEGER,
    title	CHAR(20),
    year	INTEGER,
    PRIMARY KEY (movieID));