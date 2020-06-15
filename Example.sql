DECLARE

FNAME rational_doors.first_name%TYPE;
SNAME FNAME%TYPE;
MID rational_doors.manager_id%TYPE;

BEGIN

SELECT FIRST_NAME, SECOND_NAME, MANAGER_ID
INTO FNAME, SNAME, MID
FROM RATIONAL_DOORS
WHERE emp_id = &ENTER_EMPLOYEE_ID;

DBMS_OUTPUT.PUT_LINE ('ManagerID of ' ||FNAME || ' is ' || MID );

exception
 when no_data_found then
    DBMS_OUTPUT.PUT_LINE('INVALID ENTRY');

END;