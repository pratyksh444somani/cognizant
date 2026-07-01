SET SERVEROUTPUT ON;

DECLARE
    sal NUMBER := 45000;
    bonus NUMBER;
BEGIN
    IF sal >= 50000 THEN
        bonus := sal * 0.20;
    ELSIF sal >= 30000 THEN
        bonus := sal * 0.10;
    ELSE
        bonus := sal * 0.05;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary : ' || sal);
    DBMS_OUTPUT.PUT_LINE('Bonus : ' || bonus);
END;
/