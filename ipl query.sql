CREATE DATABASE ipl_project;
USE ipl_project;
CREATE TABLE batsmen_2018 (
Player VARCHAR(100),
Team VARCHAR(100),
Mat INT,
Inns INT,
NO INT,
Runs INT,
HS VARCHAR(20),
`100s` INT,
`50s` INT,
Avg DECIMAL(10,2),
`S/R` DECIMAL(10,2),
`4s` INT,
`6s` INT
);
CREATE TABLE bowlers_2018 (
Player VARCHAR(100),
Team VARCHAR(100),
Mat INT,
Overs DECIMAL(10,1),
Mdns INT,
Runs INT,
Wkts INT,
Avg DECIMAL(10,2),
`E/R` DECIMAL(10,2),
`S/R` DECIMAL(10,2),
`4w` INT
);

CREATE TABLE batsmen_2019 (
    Player VARCHAR(100),
    Team VARCHAR(100),
    Mat INT,
    Inns INT,
    NO INT,
    Runs INT,
    HS VARCHAR(20),
    `100s` INT,
    `50s` INT,
    Avg DECIMAL(10,2),
    `S/R` DECIMAL(10,2),
    `4s` INT,
    `6s` INT
);

CREATE TABLE bowlers_2019 (
    Player VARCHAR(100),
    Team VARCHAR(100),
    Mat INT,
    Overs DECIMAL(10,1),
    Mdns INT,
    Runs INT,
    Wkts INT,
    Avg DECIMAL(10,2),
    `E/R` DECIMAL(10,2),
    `S/R` DECIMAL(10,2),
    `4w` INT
);

SHOW TABLES;
DESC batsmen_2019;
DESC bowlers_2019;
SELECT COUNT(*) FROM batsmen_2018;
SELECT COUNT(*) FROM bowlers_2018;
SELECT COUNT(*) FROM batsmen_2019;
SELECT COUNT(*) FROM bowlers_2019;

/*1.Which bowler took the most wickets in 2018*/
SELECT Player, Team, Wkts
FROM bowlers_2018
ORDER BY Wkts DESC
LIMIT 1;

/*2.Which batsmen scored the most runs in 2018 with strike rate ≥ 130?*/

SELECT Player, Team, Runs, `S/R`
FROM batsmen_2018
WHERE `S/R` >= 130
ORDER BY Runs DESC;

/*3.Which bowlers took the most wickets with economy < 7?*/
SELECT Player, Team, Wkts, `E/R`
FROM bowlers_2018
WHERE `E/R` < 7
ORDER BY Wkts DESC;

/*4.Which batsmen scored the most runs across both seasons?*/

SELECT Player,
SUM(Runs) AS Total_Runs
FROM
(
SELECT Player,Runs FROM batsmen_2018

UNION ALL

SELECT Player,Runs FROM batsmen_2019
) AS Combined
GROUP BY Player
ORDER BY Total_Runs DESC;

/*5.Which batsman hit the most boundaries in 2018?*/

SELECT Player,
(`4s` + `6s`) AS Total_Boundaries
FROM batsmen_2018
ORDER BY Total_Boundaries DESC
LIMIT 1;

/*6.Bowlers with a 4-wicket haul in 2019*/
SELECT Player, Team, `4w`
FROM bowlers_2019
WHERE `4w` > 0
ORDER BY `4w` DESC;

/*7.Name 5 such bowlers who bowled the least number of overs in 2018.*/
 SELECT Player, Team, Overs
FROM bowlers_2018
ORDER BY Overs ASC
LIMIT 5;

/*Team that scored the most runs in 2019*/
SELECT Team,
SUM(Runs) AS Total_Runs
FROM batsmen_2019
GROUP BY Team
ORDER BY Total_Runs DESC
LIMIT 1;

 /*9.Name the Batsmen who has hit maximum half centuries, both the years combined*/
SELECT Player,
SUM(`50s`) AS Total_Fifties
FROM
(
SELECT Player, `50s`
FROM batsmen_2018

UNION ALL

SELECT Player, `50s`
FROM batsmen_2019
) AS Combined
GROUP BY Player
ORDER BY Total_Fifties DESC
LIMIT 1;


SELECT
b.Player,
b.Team,
b.Runs,
bo.Wkts
FROM batsmen_2018 b
INNER JOIN bowlers_2018 bo
ON b.Team = bo.Team
LIMIT 20;


SELECT
Team AS Team_Name,
SUM(Runs) AS Total_Runs
FROM batsmen_2019
GROUP BY Team
ORDER BY Total_Runs DESC;
