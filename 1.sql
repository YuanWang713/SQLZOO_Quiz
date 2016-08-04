SELECT player, gtime
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' AND team2='GRE')