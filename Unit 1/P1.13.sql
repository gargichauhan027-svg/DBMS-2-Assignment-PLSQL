SET SERVEROUTPUT ON;

DECLARE
    v_amount NUMBER := 1822; -- Roll 06 * 137 + 1000
    v_rem NUMBER;
    v_n500 NUMBER;
    v_n200 NUMBER;
    v_n100 NUMBER;
BEGIN
    v_n500 := TRUNC(v_amount / 500);
    v_rem := MOD(v_amount, 500);
    v_n200 := TRUNC(v_rem / 200);
    v_rem := MOD(v_rem, 200);
    v_n100 := TRUNC(v_rem / 100);
    v_rem := MOD(v_rem, 100);

    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Withdrawal Amount: Rs.' || v_amount);
    DBMS_OUTPUT.PUT_LINE('Rs.500 notes: ' || v_n500);
    DBMS_OUTPUT.PUT_LINE('Rs.200 notes: ' || v_n200);
    DBMS_OUTPUT.PUT_LINE('Rs.100 notes: ' || v_n100);
    DBMS_OUTPUT.PUT_LINE('Undispensed amount: Rs.' || v_rem);
END;
/
