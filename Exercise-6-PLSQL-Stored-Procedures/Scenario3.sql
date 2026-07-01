SET SERVEROUTPUT ON;

CREATE TABLE Employee(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30),
    salary NUMBER
);

INSERT INTO Employee VALUES(101,'Pratyksh',30000);
INSERT INTO Employee VALUES(102,'Somani',45000);

COMMIT;

CREATE OR REPLACE PROCEDURE updateSalary(
    p_id NUMBER,
    p_sal NUMBER
)
IS
BEGIN
    UPDATE Employee
    SET salary = p_sal
    WHERE id = p_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary Updated');
END;
/

BEGIN
    updateSalary(101,35000);
END;
/

SELECT * FROM Employee;