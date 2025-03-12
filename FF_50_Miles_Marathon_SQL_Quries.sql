-- How many states were represented in the race? -- 
SELECT
COUNT(DISTINCT(state)) as distinct_count
FROM ff_race

-- What was the average time for men compared to women? --
SELECT
gender,
ROUND(AVG(total_minutes),2) as avg_time
FROM ff_race
GROUP BY gender

-- What were the ages of the youngest and oldest participants in the race? -- 
SELECT
Gender,
MIN(age) as youngest,
MAX(age) as oldest
FROM ff_race
GROUP BY gender

-- What was the average time for each age group? -- 
WITH age_groups as (
SELECT
total_minutes,
CASE 
WHEN age < 30 THEN 'age_20-29'
WHEN age < 40 THEN 'age_30-39'
WHEN age < 50 THEN 'age_40-49'
WHEN age < 60 THEN 'age_50-59'
ELSE 'age_60+' END AS age_group
FROM ff_race)

SELECT age_group, ROUND(avg(total_minutes),2) as avg_run_time
FROM age_groups 
GROUP BY age_group

-- Who were the top 3 male and female participants? -- 

WITH gender_rank AS (
SELECT
fullname,
gender,
total_minutes,
rank() OVER (PARTITION BY Gender ORDER BY total_minutes ASC) as gender_rank
FROM ff_race)

SELECT
*
FROM gender_rank
WHERE gender_rank <= 3
ORDER BY total_minutes 

SELECT *
FROM ff_race
