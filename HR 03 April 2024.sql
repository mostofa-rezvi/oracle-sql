SELECT last_name, salary, department_id
FROM employees
WHERE salary IN 
        (SELECT MIN(salary)
            FROM employees
            GROUP BY department_id)
ORDER BY DEPARTMENT_ID;

SELECT MIN(salary)
FROM employees
GROUP BY department_id
ORDER BY DEPARTMENT_ID;


-- Multiple-Row Subqueries

SELECT last_name, salary, department_id
FROM employees
WHERE SALARY IN (2500, 4200, 4400, 6000, 7000, 8300, 8600, 17000)
ORDER BY SALARY;


-- Using the ANY Operator in Multiple-Row Subqueries

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY
                (SELECT salary
                    FROM employees
                    WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';


SELECT salary, JOB_ID
FROM employees
WHERE job_id = 'IT_PROG';
--WHERE job_id <> 'IT_PROG';



-- Using the ALL Operator in Multiple-Row Subqueries.

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ALL
                (SELECT salary
                    FROM employees
                    WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';



SELECT FIRST_NAME, DEPARTMENT_ID, SALARY
FROM EMPLOYEES
WHERE (SALARY, department_id)
    IN
        (SELECT MIN(SALARY), DEPARTMENT_ID
            FROM EMPLOYEES
            GROUP BY DEPARTMENT_ID)
ORDER BY DEPARTMENT_ID;

SELECT MIN(SALARY), DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;



SELECT last_name 
FROM employees
WHERE employee_id 
    NOT IN
        (SELECT manager_id
            FROM employees
            WHERE manager_id IS NOT NULL);

SELECT manager_id
FROM employees
WHERE manager_id IS NOT NULL;

