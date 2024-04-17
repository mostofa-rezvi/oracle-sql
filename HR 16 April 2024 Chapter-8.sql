-- Chapter 8

-- Task 2
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES)
ORDER BY SALARY;

-- Task 3
SELECT EMPLOYEE_ID, LAST_NAME
FROM employees
WHERE DEPARTMENT_ID IN 
            (SELECT DEPARTMENT_ID
                FROM employees
                WHERE LAST_NAME LIKE '%u%');

-- Task 4
SELECT E.LAST_NAME, D.DEPARTMENT_ID, E.JOB_ID
FROM employees E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE D.LOCATION_ID = '1700'
ORDER BY E.DEPARTMENT_ID;

DESCRIBE DEPARTMENTS;

-- Task 5
SELECT LAST_NAME, SALARY
FROM employees
WHERE MANAGER_ID IN 
            (SELECT MANAGER_ID
                FROM employees
                WHERE LAST_NAME = 'King');
                
--            (SELECT EMPLOYEE_ID
--                FROM employees
--                WHERE LAST_NAME = 'King');    
                
-- Task 6
SELECT DEPARTMENT_ID, LAST_NAME, JOB_ID
FROM employees
WHERE DEPARTMENT_ID IN 
            (SELECT DEPARTMENT_ID
                FROM departments
                WHERE DEPARTMENT_NAME = 'Executive');
                
DESCRIBE departments;

-- Task 7
SELECT LAST_NAME, SALARY
FROM employees
WHERE SALARY > 
        (SELECT MIN(SALARY)
            FROM employees
            WHERE DEPARTMENT_ID = 60);
            
-- Task 8
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM employees
WHERE SALARY > 
        (SELECT AVG(SALARY) 
            FROM employees)
AND DEPARTMENT_ID IN
        (SELECT DEPARTMENT_ID
            FROM employees
            WHERE LAST_NAME LIKE '%u%');