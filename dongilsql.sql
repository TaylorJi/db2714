create table members
   (memberID VARCHAR(30) NOT NULL,
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
    email VARCHAR(15),
	CONSTRAINT  empPK PRIMARY KEY(memberID),
    CONSTRAINT  empTeamFK FOREIGN KEY (teamRegistrationNo) REFERENCES leagueTeam (teamRegistrationNo) ON UPDATE CASCADE,
    CONSTRAINT  empNameFK FOREIGN KEY (teamName) REFERENCES leagueTeam(TeamName) ON UPDATE CASCADE
);

insert into members (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value ("1",1,"toronto","dong","","kwon","643 toronto",4553223.12,190.2,87.4,2022-11-03,"dikwon79@naver.com");
insert into members (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value ("2",2,"yangkids","shinsu","","chu","232 new yourk",88877667.12,200.2,99.4,2021-11-03,"alsdqld@google.com");
insert into members (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value ("3",3,"minesota twins","nash","","baek","111 minesota",6554223.33,198.2,90.4,2020-11-03,"major50@google.com");
insert into members (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value ("4",4,"huston","tylor","","ji","67 huston",7567654.34,188.2,86.4,2021-10-23,"superman@google.com");
insert into members (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value ("5",5,"LA","chanho","","Park","11 losangeles",9554223.67,177.2,89.4,2022-06-03,"applepie@google.com");


marketingTeam [departmentNo, regionID website, cs]
marketingTeam.departmentNo references department.departmentNo

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
 
insert into marketingTeam (departmentNo,regionID,website,cs) value (1,20,"www.boston.com","service");
insert into marketingTeam (departmentNo,regionID,website,cs) value (2,30,"www.toronto.com","servicekim");
insert into marketingTeam (departmentNo,regionID,website,cs) value (3,40,"www.la.com","telservice");
insert into marketingTeam (departmentNo,regionID,website,cs) value (4,50,"www.naver.com","jservice");
insert into marketingTeam (departmentNo,regionID,website,cs) value (5,60,"www.base.com","pareservice");


leagalTeam [departmentID, lawyerLicence, contracID, regulation]
legalTeam.deaprtmentNo references department.departmentNo

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

insert into leagalteam (departmentNo,lawyerLicence,contractID,regulation) value (1,123123,"id_443","gedulation1");
insert into leagalteam (departmentNo,lawyerLicence,contractID,regulation) value (2,123124,"id_888","gedulation2");
insert into leagalteam (departmentNo,lawyerLicence,contractID,regulation) value (3,123125,"id_777","gedulation3");
insert into leagalteam (departmentNo,lawyerLicence,contractID,regulation) value (4,123126,"id_666","gedulat4");
insert into leagalteam (departmentNo,lawyerLicence,contractID,regulation) value (5,123127,"id_555","gedulat567");

member [memberID, teamRegistrationNo,]

staff [memberID, roleNo]
staff.memberID references member.memberID

create table staff
( memberID varchar(30) not null,
  roleNo int not null,
  CONSTRAINT  stfPK  PRIMARY KEY (memberID, roleNo),
  CONSTRAINT  stfFrK FOREIGN KEY (memberID) REFERENCES members(memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE
);
insert into staff (memberID, roleNo) value ("11",1);
insert into staff (memberID, roleNo) value ("21",2);
insert into staff (memberID, roleNo) value ("31",3);
insert into staff (memberID, roleNo) value ("41",4);
insert into staff (memberID, roleNo) value ("51",5);

member [memberID, teamRegistrationNo,]
staff [memberID, roleNo]

coach [memberID, coachingType, roleNo]
coach.memberID references member.memberID
coach.roleNo references staff.roleNo

//에러좀 찾아주세요...
create table coach
( memberID varchar(30) not null,
  coachingType varchar(30) not null,
  roleNo int not null,
  CONSTRAINT  coaPK PRIMARY KEY (memberID, coachingType),
  CONSTRAINT  coaFrK FOREIGN KEY (memberID) REFERENCES members (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE,
  CONSTRAINT  coaroleFrK FOREIGN KEY (roleNo) REFERENCES staff (roleNo) 
  on DELETE CASCADE
  on UPDATE CASCADE
);



manager [memberID, managerTier, record, background, roleNo]

manager.roleNo reference staff.roleNo
manager.memberID references member.memberID

staff [memberID, roleNo]
member [memberID, teamRegistrationNo,]

//missing index for constraint

create table manager
( memberID varchar(30) not null,
  managerTier int not null,
  record varchar(30) not null,
  background varchar(50) not null,
  roleNo int not null,
  CONSTRAINT  manPK PRIMARY KEY (memberID, managerTier),
  CONSTRAINT  manFrK FOREIGN KEY (memberID) REFERENCES members (memberID) 
  on DELETE CASCADE
  on UPDATE CASCADE,
  CONSTRAINT  manrFrK FOREIGN KEY (roleNo) REFERENCES staff(roleNo) 
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

insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tier)
value (111,121,98,6458,3.1,1.6,2.3,123233.22);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tier)
value (101,101,34,3492,3.6,1.9,2.3,3827.12);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tier)
value (121,204,54,6782,4.2,2.1,1.5,387261.13);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tier)
value (333,431,23,8721,2.4,1.9,2.4,33432.44);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tier)
value (222,102,104,2346,4.5,3.3,1.3,23211.34);