/*
<1> Use case: As a staff of players association, I need to know the current ranking of each team by acending order.
SQL: SELECT * FROM LeagueTeam ORDER BY ranking ASC;
*/

/*
<2> Use case: As a general manager of department, I need to know the cheapest broadcast fee.
SQL: SELECT MIN(broadcastFee) AS ChepestFee FROM Broadcast;
*/

/*
<3>
Use case: As a manager of specific league team, I want to know the top three ranked teams.
SQL: SELECT * FROM LeagueTeam ORDER BY ranking ASC LIMIT 3;
*/

/*
<4>
Use case: As a marketing team member, I need to know the average budget of all departments.
SQL: SELECT AVG(Budget) FROM department;
*/

/*
<5>
Use case: As a staff of players association, I need to sort the team name by alphabetical order.
SQL: SELECT * from LeagueTeam ORDER BY teamName;
*/