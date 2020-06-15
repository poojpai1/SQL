DECLARE

l_name employee.lname%TYPE;
v_salary employee.salary%TYPE;
D_no  employee.dno%TYPE;

BEGIN

SELECT lname, salary, dno
INTO l_name, v_salary, D_no
FROM employee
WHERE dno = &ENTER_The_DepartmentNo;

IF (D_no = 4) THEN
  UPDATE employee
  SET superssn = 223332445;
  DBMS_OUTPUT.PUT_LINE('Supervisor SSN updated');
  
ELSE
  DBMS_OUTPUT.PUT_LINE('No action required');

END IF;

EXCEPTION
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE ('Department number entered fetches multiple result');
    
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Enter a valid Department number');
    
END;

