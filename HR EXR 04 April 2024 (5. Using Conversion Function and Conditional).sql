-- Using Conversion Function and Conditional

-- 1.
SELECT LAST_NAME ||' earns '||TO_CHAR(SALARY, 'fm$999999.00') || ' monthly but wants '||TO_CHAR(SALARY*3, 'fm$999999.00')||'.' "Dream Salaries"
FROM EMPLOYEES;

-- 2.
SELECT LAST_NAME, HIRE_DATE, 
TO_CHAR(NEXT_DAY(ADD_MONTHS(HIRE_DATE, 6), 'Monday'), 'fmDAY, "the" DDspth "of" MONTH, YYYY')
FROM employees;

SELECT LAST_NAME, HIRE_DATE,
TO_CHAR(NEXT_DAY(ADD_MONTHS(HIRE_DATE, 6), 'Monday'), 'fm Day, "the" Ddspth "of" Month, YYYY')
FROM employees;

SELECT LAST_NAME, HIRE_DATE,
NEXT_DAY(ADD_MONTHS(HIRE_DATE, 6), 'Monday')
FROM employees;

