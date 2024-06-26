-- create 2 table
-- one primary key
CREATE TABLE EMPLOYEE3(
    EMP_ID NUMBER(10) PRIMARY KEY,
    EMP_NAME VARCHAR2(20),
    SALARY NUMBER(5),
    GENDER VARCHAR2(6),
    JOINDATE DATE
    -- ,
    -- DEPT_ID NUMBER(5) REFERENCES DEPARTMENT(DEPT_ID)
);


INSERT INTO DEPARTMENT(
    10,
    'CODING'
);
-- second foreign key
CREATE TABLE DEPARTMENT(
    DEPT_ID NUMBER(5) PRIMARY KEY,
    DEPT_NAME VARCHAR2(20)
);

INSERT INTO EMPLOYEE3 VALUES (
    1,
    'VINAY DANIDHARIYA',
    20000,
    'MALE',
    '12-SEP-98'
);

INSERT INTO EMPLOYEE3 VALUES(
    02,
    'RAHUL GONDALIYA',
    30000,
    'MALE',
    '12-SEP-98'
);
septemeber
january


 select * from employee3
 where TRIM(TO_CHAR(joindate,'MON'))= 'AUG';


INSERT INTO EMPLOYEE3 VALUES(
    03,
    'DHRUV KANJIYA',
    40000,
    'MALE',
    '12-AUG-98'
);

INSERT INTO EMPLOYEE2 VALUES(
    04,
    'JAY SITAPARA',
    20000,
    'FEMALE'
);

INSERT INTO EMPLOYEE(
    05,
    'VRAJ SARVAIYA',
    20000,
    30
);

-- join
-- count f male employe

SET SERVEROUTPUT ON
DECLARE
    COUNT1 NUMBER(5);
BEGIN
    SELECT COUNT(*) INTO COUNT1 FROM employee2 
    WHERE GENDER='FEMALE';
    DBMS_OUTPUT.PUT_LINE('NUMBER OF FELMALE EMP IS '||COUNT1);
END;
/    

-- date filter






-- join
-- 23. List our employees with their department names.
SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.NAME        AS DEPARTMENT_NAME
FROM
    EMPLOYEE   E
    INNER JOIN DEPARTMENT D
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- select


-- plsql

-- select insert

CREATE TABLE CATEGORY (
    CATEGORYID NUMBER(5) PRIMARY KEY,
    CATEGORYNAME VARCHAR2(20),
    DESCRIPTION VARCHAR2(20)
);

INSERT INTO CATEGORY VALUES(
    1,
    'Beverages',
    'Soft drinks'
);

INSERT INTO CATEGORY VALUES(
    2,
    'Condiments',
    'Sweet '
);

INSERT INTO CATEGORY VALUES(
    3,
    'Confections',
    'Desserts'
);

CREATE TABLE PRODUCT (
    PRODUCTID NUMBER(5) PRIMARY KEY,
    PRODUCTNAME VARCHAR2(20),
    CATEGORYID NUMBER(5) REFERENCES CATEGORY(CATEGORYID),
    PRICE NUMBER(5)
);

INSERT INTO PRODUCT VALUES(
    1,
    'Chais',
    1,
    18
);

INSERT INTO PRODUCT VALUES(
    2,
    'Chang',
    1,
    19
);

INSERT INTO PRODUCT VALUES(
    3,
    'Aniseed Syrup',
    2,
    10
);

SELECT
    PRODUCTID,
    PRODUCTNAME,
    C.CATEGORYID,
    PRICE,
    CATEGORYNAME,
    DESCRIPTION
FROM
    PRODUCT P,
    CATEGORY C
WHERE
    C.CATEGORYID=P.CATEGORYID;

SELECT
    PRODUCTID,
    PRODUCTNAME,
    C.CATEGORYID,
    P.CATEGORYID,
    PRICE,
    CATEGORYNAME,
    DESCRIPTION
FROM PRODUCT P 
INNER JOIN CATEGORY C
ON C.CATEGORYID=P.CATEGORYID;


