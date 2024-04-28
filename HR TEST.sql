-- Create a table and name using your ID preceded by emp (as emp 106588), which have 5 fields as eid, ename, salary, hire_date and address 
-- with appropriate data types and create primary key on eid.
CREATE TABLE emp_1281332(
eid NUMBER(4) NOT NULL,
ename VARCHAR2(30) NOT NULL,
salary NUMBER(8,2),
hire_date DATE NOT NULL, 
address VARCHAR2(40),
CONSTRAINT CONST_EMP_1281332_EID PRIMARY KEY(ID)
);


-- Add two new columns named 'department_id', 'dept_name' alter table command.
ALTER TABLE emp_1281332
ADD (department_id NUMBER(4), dept_name VARCHAR2(30));


-- Insert values to the table.
INSERT INTO EMPLOYEE_1281332 (eid, ename, salary, hire_date, address)
    SELECT E.EMPLOYEE_ID, E.LAST_NAME, E.SALARY, E.HIRE_DATE, L.STREET_ADDRESS
      FROM employees E, locations L;
      

-- Create a view that which contains ename, dept_name and salary in department 80.
CREATE VIEW view_emp_1281332
AS
SELECT ename, dept_name, salary
FROM emp_1281332
WHERE eid = 80;


-- Create a sequence?
CREATE SEQUENCE emp_sequence
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- Give an appropriate example of insert data from subqueries.
INSERT INTO EMPLOYEE_1281332 (eid, ename, salary, hire_date, address)
    SELECT EMPLOYEE_ID, LAST_NAME, SALARY, HIRE_DATE
      FROM employees E
      WHERE salary between 5000 and 12000;