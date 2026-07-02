CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
IS
BEGIN

    UPDATE Employees
    SET Salary = Salary + (Salary * 0.10)
    WHERE Department = 'IT';

    COMMIT;

END;
/