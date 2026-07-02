CREATE OR REPLACE PROCEDURE TransferFunds(
    fromAcc NUMBER,
    toAcc NUMBER,
    amt NUMBER
)
IS
BEGIN

    UPDATE Accounts
    SET Balance = Balance - amt
    WHERE AccountID = fromAcc;

    UPDATE Accounts
    SET Balance = Balance + amt
    WHERE AccountID = toAcc;

    COMMIT;

END;
/