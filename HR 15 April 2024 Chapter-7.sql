-- Chapter 7

SELECT * FROM locations;

SELECT * FROM countries;

SELECT * FROM departments;

SELECT * FROM locations;

SELECT * FROM employees;

SELECT * FROM job_grades;

--ORDER BY LAST_NAME;

-- Task 1
SELECT LOCATION_ID, STREET_ADDRESS, CITY, STATE_PROVINCE, COUNTRY_NAME
FROM locations
NATURAL JOIN countries;

-- Task 2
SELECT LAST_NAME, DEPARTMENT_ID, DEPARTMENT_NAME
FROM employees
NATURAL JOIN DEPARTMENTS;

-- Task 3
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, DEPARTMENT_NAME
FROM employees
NATURAL JOIN departments;

SELECT E.LAST_NAME, E.JOB_ID, E.DEPARTMENT_ID, D.DEPARTMENT_NAME, L.CITY
FROM employees E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN LOCATIONS L ON L.LOCATION_ID = D.LOCATION_ID
WHERE L.CITY = 'Toronto';

-- Task 4
SELECT E.LAST_NAME "Employee", E.EMPLOYEE_ID "Emp#", M.LAST_NAME "Manager", M.EMPLOYEE_ID "Mgr#"
FROM employees E
JOIN employees M ON E.EMPLOYEE_ID = M.MANAGER_ID;
--JOIN employees M ON M.EMPLOYEE_ID = E.MANAGER_ID;

-- Task 5
SELECT E.LAST_NAME "Employee", E.EMPLOYEE_ID "Emp#", M.LAST_NAME "Manager", M.EMPLOYEE_ID "Mgr#"
FROM employees E
LEFT OUTER JOIN employees M ON M.EMPLOYEE_ID = E.MANAGER_ID;

SELECT E.LAST_NAME "Employee", E.EMPLOYEE_ID "Emp#", M.LAST_NAME "Manager", M.EMPLOYEE_ID "Mgr#"
FROM employees E
JOIN employees M ON M.EMPLOYEE_ID = E.MANAGER_ID
WHERE M.MANAGER_ID IS NULL;

SELECT LAST_NAME "Employee", EMPLOYEE_ID "Emp#", LAST_NAME "Manager", EMPLOYEE_ID "Mgr#"
FROM employees 
WHERE MANAGER_ID IS NULL;

-- Task 6
SELECT E.LAST_NAME, E.DEPARTMENT_ID, ES.LAST_NAME
FROM employees E
JOIN employees ES ON E.DEPARTMENT_ID = ES.DEPARTMENT_ID
WHERE E.EMPLOYEE_ID <> ES.EMPLOYEE_ID
ORDER BY E.DEPARTMENT_ID;

-- Task 7