-- Create Sequence
CREATE SEQUENCE STUDENT_ID
INCREMENT BY 1
START WITH 1
MAXVALUE 9999
NOCACHE
NOCYCLE;

-- after create sequence than create table
CREATE TABLE STUDENT1(
ID NUMBER(4) DEFAULT STUDENT_ID.NEXTVAL CONSTRAINT SYS_STUDENT_ID PRIMARY KEY,
NAME VARCHAR2(30) NOT NULL ,
EMAIL VARCHAR2(60) NOT NULL CONSTRAINT STUDENT_EMAIL_UNIQUE UNIQUE
);

-- then insert data on table
INSERT INTO STUDENT1
VALUES(DEFAULT, 'Rezvi', 'rezvi@gmail.com');

SELECT *
FROM STUDENT1;

-- Show all Sequence list
SELECT * FROM USER_SEQUENCES;

-- Remove sequences
DROP SEQUENCE STUDENT_ID;
DROP SEQUENCE STUDENTS;
DROP SEQUENCE STUDENT;