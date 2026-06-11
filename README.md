# 🏏 IPL Hidden Match-Winners: SQL Analytics Case Study

## Project Overview

This project analyzes IPL 2018 and 2019 batting and bowling performance data using MySQL Workbench.

The objective was to move beyond basic leaderboards and identify the players, teams, and performance patterns that contributed most to success.

Using SQL, I explored player efficiency, team dominance, consistency across seasons, and performance trends to generate actionable insights from historical cricket data.

---

## Business Questions

1. Which bowler took the most wickets in IPL 2018?
2. Which batsmen combined high run-scoring with elite strike rates?
3. Which bowlers balanced wicket-taking with low economy rates?
4. Which players remained consistent across multiple seasons?
5. Which batsmen generated the most boundary impact?
6. Which teams built the strongest batting lineups?
7. How significant was the toss advantage?
8. Did chasing become a stronger strategy?
9. Which players consistently delivered match-winning performances?

---

## Dataset

### Tables Used

| Table        | Records |
| ------------ | ------- |
| batsmen_2018 | 142     |
| bowlers_2018 | 108     |
| batsmen_2019 | 148     |
| bowlers_2019 | 112     |

### Key Attributes

**Batting**

* Player
* Team
* Runs
* Average
* Strike Rate
* Fours
* Sixes
* Half Centuries

**Bowling**

* Player
* Team
* Overs
* Wickets
* Economy Rate
* Average
* Four-Wicket Hauls

---

## SQL Concepts Demonstrated

### Data Aggregation

* GROUP BY
* SUM()
* MAX()
* COUNT()

### Dataset Stitching

* UNION ALL
* Derived Tables

### Advanced Filtering

* WHERE
* HAVING
* Multiple Conditions

### Ranking Analysis

* ORDER BY
* LIMIT

### Calculated Metrics

* Total Boundaries = 4s + 6s

### Relational Analysis

* INNER JOIN

---

## Key Insights

### 🎯 Highest Wicket Taker (2018)

Andrew Tye emerged as the leading wicket-taker with 24 wickets.

### 🏏 Most Consistent Run Scorer (2018–2019)

KL Rahul accumulated the highest total runs across both seasons.

### 🔥 Boundary King

Rishabh Pant generated the highest number of boundaries during IPL 2018.

### 📈 Strongest Batting Unit

Kings XI Punjab scored the highest aggregate runs in IPL 2019.

### ⚡ Efficiency Over Volume

Filtering batsmen with strike rates above 130 revealed elite performers capable of scoring quickly while maintaining consistency.

---

## Visualizations Included

* Team Run Comparison (2019)
* Top Run Scorers (2018–2019)
* Strike Rate Analysis
* Chasing vs Defending Comparison
* Toss Impact Analysis
* SQL Skills Demonstrated

---

## Sample Query

```sql
SELECT Player,
SUM(Runs) AS Total_Runs
FROM (
SELECT Player, Runs FROM batsmen_2018
UNION ALL
SELECT Player, Runs FROM batsmen_2019
) Combined
GROUP BY Player
ORDER BY Total_Runs DESC;
```

---

## Project Workflow

CSV Files
→ MySQL Database Creation
→ Data Import
→ Exploratory SQL Analysis
→ Aggregation & Filtering
→ Insight Generation
→ Data Storytelling

---

## Tools Used

* MySQL Workbench
* SQL
* Excel
* PowerPoint / Canva

---

## Author

**Srishti Shaw**




