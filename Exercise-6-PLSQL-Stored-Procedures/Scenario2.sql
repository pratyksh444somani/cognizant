SET SERVEROUTPUT ON;

CREATE TABLE Employee(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30),
    salary NUMBER
);

INSERT INTO Employee VALUES(101,'Pratyksh',30000);
INSERT INTO Employee VALUES(102,'Somani',45000);

COMMIT;

CREATE OR REPLACE PROCEDURE addEmp(
    p_id NUMBER,
    p_name VARCHAR2,
    p_sal NUMBER
)
IS
BEGIN
    INSERT INTO Employee
    VALUES(p_id,p_name,p_sal);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Employee Added');
END;
/

BEGIN
    addEmp(103,'Praty',50000);
END;
/

SELECT * FROM Employee;