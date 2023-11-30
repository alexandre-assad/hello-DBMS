

select matchid, player from goal where teamid = 'GER' ;

select id, stadium, team1, team2 grom game where id = 1012 ;

select go.player, go.teamid, ga.stadium, ga.mdate from game ga left join goal go on ga.id = go.matchid where go.teamid = 'GER' ;

select ga.team1, ga.team2, go.player from game ga left join goal go on ga.id = go.matchid where go.player = 'Mario' ;

select * from goal go inner join eteam e on goal.teamid = eteam.id ;

select go.player, go.teamid, e.coach, go.gtime from goal go inner join eteam e on goal.teamid = eteam.id where go.gtime < 10;

select ga.mdate, ga.team1 from game ga inner join etam e on ga.team1 = e.id where e.coach = 'Fernando Santos' ;

select go.player from goal inner join game ga on ga.id = go.matchid where ga.stadium = 'National Stadium, Warsaw' ;

#TODO test this

select count(*) from goal group by teamid ;

select ga.stadium, count(*) from goal go inner join game ga go.matchid = ga.id group by ga.stadium ; 

select ga.id, ga.mdate, count(*) from goal go inner join game ga on ga.id = go.matchid where go.teamid = 'FRA'