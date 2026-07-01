-- IF TRAVELLING'S CAUSING PEOPLE TO LEAVE?

-- SELECT BusinessTravel, Attrition, COUNT(*) as emp_count
-- FROM why_people_r_quitting
-- GROUP BY BusinessTravel, Attrition;

SELECT
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
FROM why_people_r_quitting
GROUP BY BusinessTravel;

-- Insights:
-- Employees who travel frequently have the highest attrition rate (~25%),
-- compared to employees who travel rarely (~15%).
-- This suggests that frequent business travel may contribute to employee attrition.
