--SELECT * FROM EMPLOYEE;

CREATE VIEW Test_emp AS
SELECT fname, ssn, salary 
FROM employee
WHERE dno = 5;

--query to display the content of the view
SELECT * FROM test_emp;