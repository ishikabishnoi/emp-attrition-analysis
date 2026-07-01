SELECT CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS age_group, COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
FROM why_people_r_quitting GROUP BY age_group ORDER BY attrition_rate DESC;

-- insights-
-- young people tend to have higher attrition rate.