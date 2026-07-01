select max(DistanceFromHome), min(DistanceFromHome) from why_people_r_quitting;

select CASE
        WHEN DistanceFromHome BETWEEN 1 AND 10 THEN '1-10 km'
        WHEN DistanceFromHome BETWEEN 11 AND 20 THEN '11-20 km'
        WHEN DistanceFromHome BETWEEN 21 AND 29 THEN '21-29 km'  -- created these broad categories bcz them divided into smaller chunks has similar attrition rates.
    END AS distance_group,
count(*) as emp_count, sum(Attrition = 'Yes') as employees_left, 
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate 
FROM why_people_r_quitting GROUP BY distance_group ORDER BY attrition_rate DESC;


-- insights-
-- -- Insight:
-- Employees who live farther from the office tend to have higher attrition rates.