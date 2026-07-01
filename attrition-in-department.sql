SELECT Department, COUNT(*) AS total_emp,
SUM(Attrition = 'Yes') AS employees_left,
ROUND( SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
FROM why_people_r_quitting GROUP BY Department ORDER BY attrition_rate DESC;

-- insights
-- people in sales has the highest attrition_rate.