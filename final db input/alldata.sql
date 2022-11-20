
INSERT INTO LeagueTeam (teamRegistrationNo, teamName, ranking, location, logo, foundationDate, PAName) 
				VALUES (1, 'Toronto Blue Jays', 2, 'Toronto', 'TBJ', '1977-11-11', 'American League');
INSERT INTO LeagueTeam (teamRegistrationNo, teamName, ranking, location, logo, foundationDate, PAName) 
				VALUES (2, 'Vancouver Canadians', 4, 'Vancouver', 'VC', '2000-12-10', 'High-A West');
INSERT INTO LeagueTeam (teamRegistrationNo, teamName, ranking, location, logo, foundationDate, PAName) 
				VALUES (3, 'Winnipeg Goldeyes', 3, 'Winnipeg', 'WG', '1994-01-20', 'American League');
INSERT INTO LeagueTeam (teamRegistrationNo, teamName, ranking, location, logo, foundationDate, PAName) 
				VALUES (4, 'Ottawa Titans', 1, 'Ottawa', 'OT', '2020-09-01', 'Frontier League');
INSERT INTO LeagueTeam (teamRegistrationNo, teamName, ranking, location, logo, foundationDate, PAName) 
				VALUES (5, 'Quebec Capitals', 5, 'Quebec', 'QC', '1999-03-15', 'Frontier League');


insert into member (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value (100,1,"Toronto Blue Jays","dong","","kwon","643 toronto",4553223.12,190.2,87.4,"2022-11-03","dikwon79@naver.com");
insert into member (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value (101,2,"Vancouver Canadians","shinsu","","chu","232 new yourk",88877667.12,200.2,99.4,"2021-11-03","alsdqld@google.com");
insert into member (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value (102,3,"Winnipeg Goldeyes","nash","","baek","111 minesota",6554223.33,198.2,90.4,"2020-11-03","major50@google.com");
insert into member (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value (103,4,"Ottawa Titans","tylor","","ji","67 huston",7567654.34,188.2,86.4,"2021-10-23","superman@google.com");
insert into member (memberID,teamRegistrationNo,teamName,firstName,midInitial,lastName,address,salary,height,weight,dob,email)
value (104,5,"Quebec Capitals","chanho","","Park","11 losangeles",9554223.67,177.2,89.4,"2022-06-03","applepie@google.com");


/* Adding the data for emergencyContact */
INSERT INTO emergencyContact (ePhone, eName, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-123-4567', 'James Gibbson', 1, 'Toronto Blue Jays', 100);
INSERT INTO emergencyContact (ePhone, eName, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-556-9573', 'Lukas Berra', 2, 'Vancouver Canadians', 101);
INSERT INTO emergencyContact (ePhone, eName, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-967-2241', 'Patrick Garcia', 3, 'Winnipeg Goldeyes', 102);
INSERT INTO emergencyContact (ePhone, eName, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-442-9674', 'Darren Smith', 4, 'Ottawa Titans', 103);
INSERT INTO emergencyContact (ePhone, eName, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-233-5662', 'Bruce Bonsar', 5, 'Quebec Capitals', 104);

/* Adding the data for memberPhoneNum */
INSERT INTO memberPhoneNum (phoneNumber, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-363-4923', 1, 'Toronto Blue Jays', 100);
INSERT INTO memberPhoneNum (phoneNumber, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-243-9675', 2, 'Vancouver Canadians', 101);
INSERT INTO memberPhoneNum (phoneNumber, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-384-2833', 3, 'Winnipeg Goldeyes', 102);
INSERT INTO memberPhoneNum (phoneNumber, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-253-2984', 4, 'Ottawa Titans', 103);
INSERT INTO memberPhoneNum (phoneNumber, teamRegistrationNo, teamName, MemberID)
				VALUES ('778-533-9753', 5, 'Quebec Capitals', 104);                
           

/* Adding the data for sponsor */
INSERT INTO sponsor (sponsor, teamRegistrationNo, teamName)
				VALUES ('Magna International', 1, 'Toronto Blue Jays');
INSERT INTO sponsor (sponsor, teamRegistrationNo, teamName)
				VALUES ('TD Bank', 2, 'Vancouver Canadians');
INSERT INTO sponsor (sponsor, teamRegistrationNo, teamName)
				VALUES ('Enbridge', 3, 'Winnipeg Goldeyes');
INSERT INTO sponsor (sponsor, teamRegistrationNo, teamName)
				VALUES ('Canadian Pacific', 4, 'Ottawa Titans');
INSERT INTO sponsor (sponsor, teamRegistrationNo, teamName)
				VALUES ('Tellus', 5, 'Quebec Capitals');    
                
/* Adding the data for department */
INSERT INTO Department (DepartmentNo, Budget)
				VALUES (1, 300000);
INSERT INTO Department (DepartmentNo, Budget)
				VALUES (2, 200000);
INSERT INTO Department (DepartmentNo, Budget)
				VALUES (3, 100000);
INSERT INTO Department (DepartmentNo, Budget)
				VALUES (4, 400000);
INSERT INTO Department (DepartmentNo, Budget)
				VALUES (5, 500000);                
                
                

                

insert into marketingTeam (departmentNo,regionID,website,cs) value (1,20,"www.boston.com","service");
insert into marketingTeam (departmentNo,regionID,website,cs) value (2,30,"www.toronto.com","servicekim");
insert into marketingTeam (departmentNo,regionID,website,cs) value (3,40,"www.la.com","telservice");
insert into marketingTeam (departmentNo,regionID,website,cs) value (4,50,"www.naver.com","jservice");
insert into marketingTeam (departmentNo,regionID,website,cs) value (5,60,"www.base.com","pareservice");

insert into legalteam (departmentNo,lawyerLicence,contractID,regulation) value (1,1223111219,"id443","law");
insert into legalteam (departmentNo,lawyerLicence,contractID,regulation) value (2,1124111287,"id888","contract");
insert into legalteam (departmentNo,lawyerLicence,contractID,regulation) value (3,1125112762,"id777","HR");
insert into legalteam (departmentNo,lawyerLicence,contractID,regulation) value (4,1126276554,"id666","Design");
insert into legalteam (departmentNo,lawyerLicence,contractID,regulation) value (5,1127265512,"id555","salary");


insert into staff (memberID, roleNo) value (101,1);
insert into staff (memberID, roleNo) value (102,2);
insert into staff (memberID, roleNo) value (103,3);
insert into staff (memberID, roleNo) value (104,4);
insert into staff (memberID, roleNo) value (100,5);


insert into coach (memberID,coachingType,roleNo) value (100,"Pitcher",1);
insert into coach (memberID,coachingType,roleNo) value (101,"catcher",2);
insert into coach (memberID,coachingType,roleNo) value (102,"medical",3);
insert into coach (memberID,coachingType,roleNo) value (103,"stamina",4);
insert into coach (memberID,coachingType,roleNo) value (104,"left-handed batter",5);


insert into manager (memberID,managerTier,record,background,roleNo) value ("100","1","3.4","pitcher",1);
insert into manager (memberID,managerTier,record,background,roleNo) value ("101","2","4.1","batter",5);
insert into manager (memberID,managerTier,record,background,roleNo) value ("102","3","3.9","batter",5);
insert into manager (memberID,managerTier,record,background,roleNo) value ("103","4","4.2","catcher",2);
insert into manager (memberID,managerTier,record,background,roleNo) value ("104","5","3.8","pitcher",1);

insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tierroleNo) 
	value (13,100,45,4.23,1.3,0.3,1.3,7);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tierroleNo) 
	value (7,101,35,3.23,1.9,0.2,1.2,7);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tierroleNo) 
	value (23,102,25,2.13,2.1,0.4,1.8,8);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tierroleNo) 
	value (5,103,15,3.22,1.4,0.5,1.5,8);
insert into player (backNumber,MemberID,numberOfHR,battingAvg,errRate,offense,defence,tierroleNo) 
	value (11,104,5,3.51,2.6,0.3,2.3,9);

   
  
  
insert into PlayerAssociation values ('MLB', '1875-04-22');
insert into PlayerAssociation values ('Minor League Baseball', '1901-09-05');

insert into referee values (1, 'MLB', 'James', '', 'Park');
insert into referee values (2, 'MLB', 'Jeremy', 'S', 'Taylor');
insert into referee values (3, 'MLB', 'Tom', '', 'Hanks');
insert into referee values (4, 'MLB', 'Charlie', 'J', 'Puth');
insert into referee values (5, 'MLB', 'Arthur', 'P', 'King');

insert into Stadium values (1, 'American Family Field', "Milwaukee, Wisconsin", 41900);
insert into Stadium values (2, 'Angel Stadium', "Anaheim, California", 45517);
insert into Stadium values (3, 'Busch Stadium', "St.Louis, Missouri", 45494);
insert into Stadium values (4, 'Chase Field', "Phoenix, Arizona", 48405);
insert into Stadium values (5, 'Citi Field', "Queens, New York", 41922);
insert into Stadium values (6, 'Citizens Bank Park', "Philadelphia, Pennsylvania", 42792);
insert into Stadium values (7, 'Comerica Park', "Detroit, Michigan", 41083);
insert into Stadium values (8, 'Coors Field', "Denver, Colorado", 50144);
insert into Stadium values (9, 'Dodger Stadium', "Los Angeles, California", 56000);
insert into Stadium values (10, 'Fenway Park', "Boston, Massachesetts", 40300);

/* Adding the data for broadCast */
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BroadcastFee, StadiumID)
				VALUES (1, 'BNN', 100000, 1);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BroadcastFee, StadiumID)
				VALUES (2, 'CMT', 150000, 2);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BroadcastFee, StadiumID)
				VALUES (3, 'CTV', 100000, 3);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BroadcastFee, StadiumID)
				VALUES (4, 'CBC', 120000, 4);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BroadcastFee, StadiumID)
				VALUES (5, 'CNN', 130000, 5); 
insert into TicketBooth values (1, 1, 22.32, 'Regular', 1500, 1);
insert into TicketBooth values (1, 2, 35.4, '2nd', 800, 2);
insert into TicketBooth values (1, 3, 75.32, '1st', 200, 3);
insert into TicketBooth values (1, 4, 350.12, 'VIP Booth', 15, 4);
insert into TicketBooth values (2, 1, 24.52, 'Regular', 1500, 1);
insert into TicketBooth values (2, 2, 40.52, '2nd', 700, 2);
insert into TicketBooth values (2, 3, 84.32, '1st', 150, 3);
insert into TicketBooth values (2, 4, 450, 'VIP Booth', 20, 4);
insert into TicketBooth values (3, 1, 23.23, 'Regular', 300, 1);
insert into TicketBooth values (3, 2, 38.23, '2nd', 700, 2);


insert into GameSchedule values ('MLB', 1, 1, '2022-11-23', 'HOU vs PIT');
insert into GameSchedule values ('MLB', 2, 1, '2022-11-30', 'HOU vs PIT');
insert into GameSchedule values ('MLB', 3, 4, '2022-11-30', 'SD vs NYM');
insert into GameSchedule values ('MLB', 4, 2, '2022-12-01', 'LAD vs SF');
insert into GameSchedule values ('MLB', 5, 6, '2022-12-03', 'MIL vs ARI');
insert into GameSchedule values ('MLB', 6, 7, '2022-12-05', 'WISH vs LAA');
insert into GameSchedule values ('MLB', 7, 5, '2022-12-05', 'CIN vs ATL');
insert into GameSchedule values ('MLB', 8, 9, '2022-12-05', 'BOS vs TB');
insert into GameSchedule values ('MLB', 9, 7, '2022-12-05', 'KC vs TEX');
insert into GameSchedule values ('MLB', 10, 3, '2022-12-31', 'SD vs PHI');



insert into Spectator values (1, 1, 'HOU');
insert into Spectator values (1, 2, 'PIT');
insert into Spectator values (1, 3, 'KC');
insert into Spectator values (2, 1, 'SEA');
insert into Spectator values (2, 2, 'CLE');

insert into Plans values ('MLB', 1, "2022-11-23");
insert into Plans values ('MLB', 2, "2022-11-30");
insert into Plans values ('MLB', 3, "2022-11-30");
insert into Plans values ('MLB', 4, "2022-12-01");
insert into Plans values ('MLB', 5, "2022-12-03");


insert into trains values ('Vancouver', 'Pitching', "2022-12-03", 1, 'Toronto Blue Jays', 13, 'pitcher');
insert into trains values ('Toronto', 'Hitting', "2022-12-03", 2, 'Vancouver Canadians', 7, 'hitter');
insert into trains values ('Montréal', 'Catching', "2022-12-03", 3, 'Winnipeg Goldeyes', 23, 'catcher');
insert into trains values ('Ottawa', 'Outfielding', "2022-12-03", 4, 'Ottawa Titans', 5, 'outfielder');
insert into trains values ('Calgary', 'Infielding', "2022-12-03", 5, 'Quebec Capitals', 11, 'infielder');
