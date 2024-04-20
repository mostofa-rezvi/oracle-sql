-- Create View
-- Display job id of jobs that were done by more than 3 employees for more than 100 days.
CREATE VIEW view_emp_100_days
AS
SELECT DISTINCT(JOB_ID)
FROM employees
WHERE current_date - hire_date > 100
GROUP BY JOB_ID
HAVING COUNT(employee_id) > 3;

SELECT * 
FROM view_emp_100_days;
    
SELECT DISTINCT(JOB_ID)
FROM employees;

-- don't use this syntex.
SELECT owner, view_name
FROM all_views;
-- no.

