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
	CONSTRAINT  empPK PRIMARY KEY(memberID),
    CONSTRAINT  empTeamFK FOREIGN KEY (teamRegistrationNo) REFERENCES leagueTeam (teamRegistrationNo) ON UPDATE CASCADE,
    CONSTRAINT  empNameFK FOREIGN KEY (teamName) REFERENCES leagueTeam(TeamName) ON UPDATE CASCADE
);


marketingTeam [departmentNo, regionID website, cs]
marketingTeam.departmentNo references department.departmentNo

create table marketingTeam
( departmentNo int not null,
  regionID int not null,
  website varchar(50),
  cs varchar(30),
  CONSTRAINT  mktPK PRIMARY KEY (departmentNO, regionID),
  CONSTRAINT  mktNoPK FOREIGN KEY (departmentNo) REFERENCE department (departmentNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);


leagalTeam [departmentID, lawyerLicence, contracID, regulation]
legalTeam.deaprtmentNo references department.departmentNo

create table leagalTeam
( departmentNo int not null,
  lawyerLicence int not null,
  contractID varchar(30),
  regulation  varchar(80),
  CONSTRAINT  lgtPK PRIMARY KEY (lawyerLicence),
  CONSTRAINT  lgtNoPK FOREIGN KEY (departmentNo) REFERENCE department (departmentNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);

member [memberID, teamRegistrationNo,]

staff [memberID, roleNo]
staff.memberID references member.memberID

create table staff
( memberID int not null,
  roleNo int not null,
  CONSTRAINT  stfPK  PRIMARY KEY (memberID, roleNo),
  CONSTRAINT  stfFrK FOREIGN KEY (memberID) REFERENCE member (memberID) 
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
  CONSTRAINT  coaPK PRIMARY KEY (memberID, coachingType),
  CONSTRAINT  coaFrK FOREIGN KEY (memberID) REFERENCE member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE,
  CONSTRAINT  coaroleFrK FOREIGN KEY (roleNo) REFERENCE member (roleNo) 
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

  CONSTRAINT  manPK PRIMARY KEY (memberID, managerTier),
  CONSTRAINT  manFrK FOREIGN KEY (memberID) REFERENCE member (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE,
  CONSTRAINT  manrFrK FOREIGN KEY (roleNo) REFERENCE member (roleNo) 
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
	CONSTRAINT  playPK PRIMARY KEY (backNumber, MemberID)
);

