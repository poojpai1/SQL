--SELECT * FROM EMPLOYEE;

SET SERVEROUTPUT ON;

DECLARE

F_NAME EMPLOYEE.FNAME%TYPE;
L_NAME F_NAME%TYPE;
vSSN EMPLOYEE.SSN%TYPE;
DOB EMPLOYEE.BDATE%TYPE;
birth_month VARCHAR2(20);
message VARCHAR2(50);


BEGIN

SELECT FNAME, LNAME, SSN, BDATE
INTO F_NAME, L_NAME, vSSN, DOB
FROM EMPLOYEE
WHERE ssn = '&enter_ssn';

birth_month := TO_CHAR(DOB, 'MON');

--DBMS_OUTPUT.PUT_LINE('Employee '|| F_NAME || ' born in the month of '|| birth_month);

CASE birth_month
  WHEN 'JAN' then --message := 'born in jan';
   DBMS_OUTPUT.PUT_LINE ('born in jan');
  WHEN 'OCT' then --message := 'born in oct';
  DBMS_OUTPUT.PUT_LINE ('born in oct');
  WHEN 'DEC' then --message := 'born in dec';
  DBMS_OUTPUT.PUT_LINE ('born in dec');
  ELSE 
    DBMS_OUTPUT.PUT_LINE('no data found');

END CASE;

EXCEPTION
  WHEN OTHERS THEN
  DBMS_OUTPUT.PUT_LINE('invalid entry');

END;




