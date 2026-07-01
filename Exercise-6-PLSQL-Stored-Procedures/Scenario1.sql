SET SERVEROUTPUT ON;

CREATE TABLE Employee(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30),
    salary NUMBER
);

INSERT INTO Employee VALUES(101,'Pratyksh',30000);
INSERT INTO Employee VALUES(102,'Somani',45000);
INSERT INTO Employee VALUES(103,'Praty',50000);

COMMIT;

CREATE OR REPLACE PROCEDURE showEmp(p_id NUMBER)
IS
    n Employee.name%TYPE;
    s Employee.salary%TYPE;
BEGIN
    SELECT name, salary
    INTO n, s
    FROM Employee
    WHERE id = p_id;

    DBMS_OUTPUT.PUT_LINE('ID : ' || p_id);
    DBMS_OUTPUT.PUT_LINE('Name : ' || n);
    DBMS_OUTPUT.PUT_LINE('Salary : ' || s);
END;
/

BEGIN
    showEmp(102);
END;
/