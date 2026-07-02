-- ATTRITION BCZ OF YEARS SPENT AT THE COMPANY?

-- max(YearsAtCompany) = 40 , min is 0
-- max(YearsInCurrentRole) = 18, min is 0
-- max(YearsSinceLastPromotion) = 15, min is 0

select case
        WHEN YearsAtCompany BETWEEN 0 AND 4 THEN '0-4 years'
		WHEN YearsAtCompany BETWEEN 5 AND 10 THEN '5-10 years'
        WHEN YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 years'
        WHEN YearsAtCompany BETWEEN 21 AND 25 THEN '21-25 years' 
        WHEN YearsAtCompany BETWEEN 26 AND 29 THEN '26-29 years' 
        WHEN YearsAtCompany BETWEEN 30 AND 40 THEN '30-40 years' -- attrition rates of 30-35 and 36-40 were similar thats why merged them. same with 11-15 ans 16-20.
        end as years_at_company,
count(*) as total_emps,  sum(Attrition = 'Yes') as emps_left,
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate from why_people_r_quitting 
group by years_at_company order by attrition_rate desc;

-- insights-
-- No clear trend is observed when combining these three variables.
-- The large number of category combinations makes the results difficult to interpret.
-- however analysing them 1 by 1 shows that employees in the 30-40 year tenure group and the 0-4 year tenure group
-- show higher attrition rates than the middle tenure groups.

-- employees from the 26-29 time bracket has 0.00 attrition rate but there're only 8 employees in that time bracket. 
select count(*) as total_emps, sum(Attrition = 'Yes') as emp_left from why_people_r_quitting where YearsAtCompany between 26 and 29;


-- ATTRITION BCZ OF YEARS SPENT FOR A PARTICULAR ROLE AT THE COMPANY?

select case
        WHEN YearsInCurrentRole BETWEEN 0 AND 3 THEN '0-3 years'
		when YearsInCurrentRole BETWEEN 4 AND 12 THEN '4-12 years' -- 4-6 and 7-12 role-tenure brackets had almost similar attrition rates that's why merged them together
        WHEN YearsInCurrentRole BETWEEN 13 AND 18 THEN '13-18 years' 
        end as years_in_current_role, 
        count(*) as total_emps,  sum(Attrition = 'Yes') as emps_left,
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate from why_people_r_quitting 
group by years_in_current_role order by attrition_rate desc;

-- employees who'd spent less time (just 0-3 years) in their current role tend to have higher attrition rates.


-- ARE EMPLOYEES LEAVING BCZ OF NOT GETTING PROMOTIONS?

SELECT case
        WHEN YearsSinceLastPromotion BETWEEN 0 AND 2 THEN '0-2 years'
        WHEN YearsSinceLastPromotion BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN YearsSinceLastPromotion BETWEEN 6 AND 9 THEN '6-9 years' 
        WHEN YearsSinceLastPromotion BETWEEN 10 AND 12 THEN '10-12 years'
        WHEN YearsSinceLastPromotion BETWEEN 13 AND 15 THEN '13-15 years'
        end as years_since_last_prom,
count(*) as total_emps,  sum(Attrition = 'Yes') as emps_left,
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate from why_people_r_quitting 
group by years_since_last_prom order by attrition_rate desc;

-- attrition rates are almost similar (almost 19) in 6-9 and 13-15 time brackets. 
-- surprisingly there isn't much gap in attrition rate of the above mentioned time brackets and 0-2 years of time bracket. (its almost 17)