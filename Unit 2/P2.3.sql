SET SERVEROUTPUT ON;
DECLARE
    v_balance NUMBER := 8000;
    v_choice NUMBER := 1;
    v_withdraw NUMBER := 1000;
    v_txns NUMBER := 0;
    v_total NUMBER := 0;
BEGIN
    FOR i IN 1..4 LOOP
        IF v_choice = 3 OR v_balance = 0 THEN EXIT; END IF;
        IF v_withdraw <= 0 THEN DBMS_OUTPUT.PUT_LINE('Error: Withdrawal must be greater than 0.');
        ELSIF MOD(v_withdraw,100) <> 0 THEN DBMS_OUTPUT.PUT_LINE('Error: Withdrawal must be a multiple of 100.');
        ELSIF v_withdraw > 10000 THEN DBMS_OUTPUT.PUT_LINE('Error: Maximum withdrawal per transaction is Rs.10000.');
        ELSIF v_withdraw > v_balance THEN DBMS_OUTPUT.PUT_LINE('Error: Insufficient balance.');
        ELSE
            v_balance := v_balance-v_withdraw; v_total := v_total+v_withdraw; v_txns := v_txns+1;
            DBMS_OUTPUT.PUT_LINE('Receipt: Withdrawn Rs.'||v_withdraw||' | Balance Rs.'||v_balance);
        END IF;
        v_withdraw := CASE i WHEN 1 THEN 1500 WHEN 2 THEN 500 WHEN 3 THEN 1000 ELSE 700 END;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Transactions Done: '||v_txns);
    DBMS_OUTPUT.PUT_LINE('Total Withdrawn: Rs.'||v_total);
    DBMS_OUTPUT.PUT_LINE('Closing Balance: Rs.'||v_balance);
END;
/