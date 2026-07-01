select EnvironmentSatisfaction, count(*) as emp_count, SUM(Attrition = 'Yes') AS employees_left, 
    ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
FROM why_people_r_quitting
GROUP BY EnvironmentSatisfaction ORDER BY EnvironmentSatisfaction;

-- insight-
-- people who're not satisfied with their job environment currently, have higher attrition rates.

select JobRole, count(*) as emp_counts, SUM(Attrition = 'Yes') AS employees_left,
 ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate from why_people_r_quitting group by JobRole ORDER BY attrition_rate DESC;
 
-- insights-
-- Sales Executives have highest attrition rate.
-- Research Director have lowest attrition rate.