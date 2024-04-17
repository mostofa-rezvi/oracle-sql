-- DML (Data Manipulation Language)
-- INSERT / UPDATE / DELETE

-- To delete a table (syntax)
--DROP TABLE SALES_REPS;

-- To change table name (syntax)
-- ALTER TABLE SALES_REP RENAME TO SALES_REPS;


-- Insert Statement
-- Create Table and Data input



-- Create New Table
CREATE TABLE SALES_REPS(
ID NUMBER(4) NOT NULL,
NAME VARCHAR2(30) NOT NULL,
SALARY NUMBER(8,2),
COMMISSION_PCT NUMBER(2,2),
CONSTRAINT CONST_SALES_REPS_ID PRIMARY KEY(ID)
);



-- Insert Data from another Table
INSERT INTO SALES_REPS (ID, NAME, SALARY, COMMISSION_PCT)
    SELECT employee_id, last_name, salary, COMMISSION_PCT
      FROM employees
      WHERE JOB_ID LIKE '%REP%';


-- Commit data to save     
COMMIT;
      
DESCRIBE SALES_REPS;

SELECT * FROM SALES_REPS
ORDER BY ID;



-- Update Statement
-- Table Data Change
UPDATE SALES_REPS 
SET NAME = 'Faa', commission_pct = 0.2, salary = 7000
WHERE ID = 202;

ROLLBACK;



-- Updating two columns with a subquery
UPDATE employees
SET (JOB_ID, SALARY) =
    (SELECT JOB_ID, SALARY
        FROM EMPLOYEES
        WHERE EMPLOYEE_ID = 205)
    WHERE EMPLOYEE_ID = 103;
    

UPDATE employees
SET department_id =
    (SELECT DEPARTMENT_ID
        FROM employees
        WHERE employee_id = 100)
WHERE JOB_ID =
    (SELECT JOB_ID
        FROM employees
        WHERE employee_id = 200);
        

SELECT * 
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (100, 200);

ROLLBACK;



-- Delete Statement
DESCRIBE SALES_REPS;
SELECT * FROM sales_reps;

DELETE FROM sales_reps
WHERE ID = 150;

DELETE FROM sales_reps;
-- Table's all data delete and ROLLBACK doesn't work.


ROLLBACK;


-- TRUNCATE Statement
TRUNCATE TABLE SALES_REPS;
-- Table's all data delete and ROLLBACK doesn't work.