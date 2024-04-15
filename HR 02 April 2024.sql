SELECT *
FROM EMPLOYEES;

SELECT *
FROM JOBS;

SELECT *
FROM JOB_HISTORY;



SELECT *
FROM employees
WHERE HIRE_DATE > 
    (select hire_date 
    from employees 
    where FIRST_NAME = 'David' 
    FETCH FIRST 1 ROWS ONLY);

select hire_date from employees where FIRST_NAME = 'David' FETCH FIRST 1 ROWS ONLY;

select FIRST_NAME, hire_date from employees where FIRST_NAME = 'David';



SELECT LAST_NAME, HIRE_DATE
FROM employees
WHERE HIRE_DATE > (select hire_date from employees where LAST_NAME = 'Austin')
order by hire_date;



SELECT *
FROM EMPLOYEES
WHERE LAST_NAME = 'Taylor';

SELECT JOB_ID
FROM employees
WHERE LAST_NAME = 'Taylor';



SELECT LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID = 
        (SELECT JOB_ID
            FROM EMPLOYEES
            WHERE LAST_NAME = 'Taylor'
            FETCH FIRST 1 ROWS ONLY)
AND SALARY > 
        (SELECT SALARY
            FROM EMPLOYEES
            WHERE LAST_NAME = 'Taylor'
            FETCH FIRST 1 ROWS ONLY);



SELECT DEPARTMENT_ID, MIN(SALARY), COUNT(DEPARTMENT_ID)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MIN(SALARY) > 
        (SELECT MIN(salary)
            FROM EMPLOYEES
            WHERE DEPARTMENT_ID =30)
    ORDER BY DEPARTMENT_ID;

SELECT MIN(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

