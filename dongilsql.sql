create table members
   (memberID VARCHAR(30) NOT NULL,
    teamRegistrationNo	VARCHAR(30) NOT NULL,
    teamName VARCHAR(50) NOT NULL,
    firstName VARCHAR(30) NOT NULL,
    midInitial	VARCHAR(30),
    lastName VARCHAR(30) NOT NULL,
    address	VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    height DECIMAL(4,1),
    weight DECIMAL(3,1),
    dob DATE,
    email VARCHAR(15),
	PRIMARY KEY	(memberID),
    FOREIGN KEY (teamRegistrationNo) REFERENCES leagueTeam (teamRegistrationNo) ON UPDATE CASCADE,
    FOREIGN KEY (teamName) REFERENCES leagueTeam(TeamName) ON UPDATE CASCADE
    );


marketingTeam [departmentNo, regionID website, cs]
marketingTeam.departmentNo references department.departmentNo

create table marketingTeam
( departmentNo int not null,
  regionID int not null,
  website varchar(50),
  cs varchar(30),
  PRIMARY KEY (departmentNO, regionID),
  FOREIGN KEY (departmentNo) REFERENCE department (departmentNo) on UPDATE CASCADE
);


leagalTeam [departmentID, lawyerLicence, contracID, regulation]
legalTeam.deaprtmentNo references department.departmentNo

create table marketingTeam
( departmentNo int not null,
  regionID int not null,
  website varchar(50),
  cs varchar(30),
  FOREIGN KEY (departmentNo) REFERENCE department (departmentNo) on UPDATE CASCADE
);

member [memberID, teamRegistrationNo,]

staff [memberID, roleNo]
staff.memberID references member.memberID

create table staff
( memberID int not null,
  roleNo int not null,
  PRIMARY KEY (memberID, roleNo),
  FOREIGN KEY (memberID) REFERENCE member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

member [memberID, teamRegistrationNo,]
staff [memberID, roleNo]

coach [memberID, coachingType, roleNo]
coach.memberID references member.memberID
coach.roleNo references staff.roleNo

create table coach
( memberID int not null,
  coachingType varchar(30) not null,
  roleNo int not null,
  PRIMARY KEY (memberID, coachingType),
  FOREIGN KEY (memberID) REFERENCE member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE,
  FOREIGN KEY (roleNo) REFERENCE member (roleNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);


manager [memberID, managerTier, record, background, roleNo]

manager.roleNo reference staff.roleNo
manager.memberID references member.memberID

staff [memberID, roleNo]
member [memberID, teamRegistrationNo,]

create table manager
( memberID int not null,
  managerTier int not null,
  record varchar(30) not null,
  background varchar(50) not null,
  roleNo int not null

  PRIMARY KEY (memberID, managerTier),
  FOREIGN KEY (memberID) REFERENCE member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE,
  FOREIGN KEY (roleNo) REFERENCE member (roleNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

player [backNumber, MemberID,  numberOfHR, battingAvg, errRate, offense, defence, tier]

create table player
   (backNumber int NOT NULL,
    MemberID int NOT NULL,
    numberOfHR int,
    battingAvg DECIMAL(6,2),
    errRate	DECIMAL(3,1),
    offense DECIMAL(3,1),
    defence	DECIMAL(3,1),
    tier DECIMAL(10,2),
	PRIMARY KEY (backNumber, MemberID)
);

