-- 1 Write a program to calculate the AREA of a circle and store that value in the table.
-- C_AREA (RADIUS NUMBER (5), AREA NUMBER (14,2)).
DECLARE
    radius number(5);
    area number(14,2);
BEGIN 
    radius := &radius;
    area := 3.14 * radius * radius;
    insert into c_area values (radius, area);
    commit;
END;
/




-- 2 Write a program that accepts a value from the user then print that value with and 
-- without using third variable.
SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    one number(5);
    two number(5);
BEGIN
    one := &one;
    two := &two;
    one := one + two;
    two := one - two;
    dbms_output.put_line('Value of one is ' || one);
    dbms_output.put_line('Value of two is ' || two);
END;



-- 4 Write a program that prints value 1 to 100 numbers using FOR LOOP.
DECLARE 
    i number(5);
BEGIN
    FOR i IN 1..100 LOOP
        dbms_output.put_line(i);
    END LOOP;
END;
-- Write a program that prints value 1 to 100 number using LOOP Command.
DECLARE 
    i number(5);
BEGIN
    i := 1;
    LOOP
        dbms_output.put_line(i);
        i := i + 1;
        EXIT WHEN i > 100;
    END LOOP;
END;
-- Write a program that prints value 1 to 100 number using WHILE LOOP Command.
DECLARE 
    i number(5);
BEGIN
    i := 1;
    WHILE i <= 100 LOOP
        dbms_output.put_line(i);
        i := i + 1;
    END LOOP;
END;
-- 5 Write a program that displays the use of %TYPE variable. This program stores the 
-- values of the columns in the memory variables using %TYPE and %ROWTYPE variables.
DECLARE
    empno emp.empno%TYPE;
    ename emp.ename%TYPE;
    job emp.job%TYPE;
    mgr emp.mgr%TYPE;
    hiredate emp.hiredate%TYPE;
    sal emp.sal%TYPE;
    comm emp.comm%TYPE;
    deptno emp.deptno%TYPE;
BEGIN
    SELECT * INTO empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp WHERE empno = 7369;
    dbms_output.put_line('Empno ' || empno);
    dbms_output.put_line('Ename ' || ename);
    dbms_output.put_line('Job ' || job);
    dbms_output.put_line('Mgr ' || mgr);
    dbms_output.put_line('Hiredate ' || hiredate);
    dbms_output.put_line('Sal ' || sal);
    dbms_output.put_line('Comm ' || comm);
    dbms_output.put_line('Deptno ' || deptno);
END;

-- 6 Write a simple procedure without any parameter that updates the values in the EMP 
-- table.
CREATE OR REPLACE PROCEDURE update_emp
IS
BEGIN
    UPDATE emp SET sal = sal + 1000;
    COMMIT;
END;
/
-- 7 Write a simple procedure that increases by the salary of employees for the given 
-- department no by percentage inputted by the user using IN parameter.

CREATE OR REPLACE PROCEDURE 
RAISE_SAL2 (VDEPT IN EMP.DEPTNO%TYPE, VPER IN NUMBER)
IS 
    BEGIN UPDATE EMP SET SAL = SAL + SAL*(VPER/100) WHERE DEPTNO=VDEPT; 
END;
-- 8 Write a procedure that search‟s whether the given employee number is present or not 
-- in the table. (Use both IN and OUT mode variables) and also Write a PL/SQL block to 
-- call the SEARCH_EMP procedure.
CREATE PROCEDURE exist_emp(empno IN NUMBER(5),exits varchar2(5))


-- 9 Write a function that returns the square of the given number. Execute this function
-- using separate PL/SQL block and also without using PL/SQL block on command line.

-- 10 Write a function that returns balance for given account number.
-- 11 Write a trigger to insert the existing values of the EMP table into NEWEMP table when 
-- the record is deleted from EMP table.
-- 12 Write a trigger to insert the existing values of the EMP table into NEWEMP table when 
-- the record is updated in EMP table.
-- 13 Write a trigger to insert the values into the NEWEMP table when the records are 
-- inserted into the EMP table.
-- 14 Write a trigger that restricts the entry of record if salary is greater than Rs.50000.
-- 15 Write a trigger that identifies the gender of the employee and according to the gender 
-- sets MR. in front of MALE employees and MS. in front of FEMALE employee.
-- 16 Write a trigger to restrict user form using the table on Sunday.