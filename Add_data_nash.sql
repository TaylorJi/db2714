/* Adding the data for LeagueTeam */
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

/* Temporarly adding the data for member */
INSERT INTO member (memberID)
				VALUES (1);
INSERT INTO member (memberID)
				VALUES (2);
INSERT INTO member (memberID)
				VALUES (3);                
INSERT INTO member (memberID)
				VALUES (4);
INSERT INTO member (memberID)
				VALUES (5);
                
/* Temporarly adding the data for player */
INSERT INTO player (backNumber)
				VALUES (1);                
INSERT INTO player (backNumber)
				VALUES (2);
INSERT INTO player (backNumber)
				VALUES (3);
INSERT INTO player (backNumber)
				VALUES (4);
INSERT INTO player (backNumber)
				VALUES (5);
                
/* Adding the data for emergencyContact */
INSERT INTO emergencyContact (ePhone, eName)
				VALUES ('778-123-4567', 'James Gibbson');
INSERT INTO emergencyContact (ePhone, eName)
				VALUES ('778-556-9573', 'Lukas Berra');
INSERT INTO emergencyContact (ePhone, eName)
				VALUES ('778-967-2241', 'Patrick Garcia');
INSERT INTO emergencyContact (ePhone, eName)
				VALUES ('778-442-9674', 'Darren Smith');
INSERT INTO emergencyContact (ePhone, eName)
				VALUES ('778-233-5662', 'Bruce Bonsar');

/* Adding the data for memberPhoneNum */
INSERT INTO memberPhoneNum (phoneNumber)
				VALUES ('778-363-4923');
INSERT INTO memberPhoneNum (phoneNumber)
				VALUES ('778-243-9675');
INSERT INTO memberPhoneNum (phoneNumber)
				VALUES ('778-384-2833');
INSERT INTO memberPhoneNum (phoneNumber)
				VALUES ('778-253-2984');
INSERT INTO memberPhoneNum (phoneNumber)
				VALUES ('778-533-9753');                

/* Adding the data for sponsor */
INSERT INTO sponsor (sponsor)
				VALUES ('Magna International');
INSERT INTO sponsor (sponsor)
				VALUES ('TD Bank');
INSERT INTO sponsor (sponsor)
				VALUES ('Enbridge');
INSERT INTO sponsor (sponsor)
				VALUES ('Canadian Pacific');
INSERT INTO sponsor (sponsor)
				VALUES ('Tellus');                
                
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

/* Adding the data for broadCast */
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BoradcastFee)
				VALUES (1, 'BNN', 100000);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BoradcastFee)
				VALUES (2, 'CMT', 150000);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BoradcastFee)
				VALUES (3, 'CTV', 100000);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BoradcastFee)
				VALUES (4, 'CBC', 120000);
INSERT INTO BroadCast (broadcastID, NameOfBroadcast, BoradcastFee)
				VALUES (5, 'CNN', 130000);                