--SELECT * FROM employee;

SET SERVEROUTPUT ON;

DECLARE

cursor test_1 is
Select * from employee where dno = 4;

emprec employee%rowtype;

BEGIN

open test_1;

Loop
fetch test_1 into emprec;
exit when test_1%NOTFOUND;

update employee
set emprec.salary = salary + 1000;

DBMS_OUTPUT.PUT_LINE ('Salary of ' || emprec.fname || ' updated to $' || emprec.salary);

END LOOP;
close test_1;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Invalid entry');
END;