-- Workshop 2 Volume 1 Chapter 3

SELECT *
FROM sales_reps
ORDER BY ID;

-- SEWUENCE DOESN'T SUPPORT ROLLBACK
ROLLBACK;

CREATE SEQUENCE SALES_REPS_ID
INCREMENT BY 1
START WITH 205
MAXVALUE 99999
NOCACHE
NOCYCLE;

SELECT SALES_REPS_ID.nextval
FROM DUAL;

SELECT SALES_REPS_ID.CURRVAL
FROM DUAL;

INSERT INTO SALES_REPS 
VALUES (SALES_REPS_ID.NEXTVAL, 'PERSON', 12589, 0.01);
-- 206 ID No.

INSERT INTO SALES_REPS 
VALUES (SALES_REPS_ID.CURRVAL, 'PERON', 12500, 0.15);
-- 207 ID No.

