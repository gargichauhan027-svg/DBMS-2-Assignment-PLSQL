SET SERVEROUTPUT ON;

DECLARE
    v_n NUMBER := 7; -- Roll 06 MOD 12 + 1
    v_today DATE := SYSDATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Today         : ' || TO_CHAR(v_today, 'Day, DDth Month YYYY'));
    DBMS_OUTPUT.PUT_LINE('After ' || v_n || ' months: ' || TO_CHAR(ADD_MONTHS(v_today, v_n), 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE('Last day      : ' || TO_CHAR(LAST_DAY(v_today), 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE('Next Monday   : ' || TO_CHAR(NEXT_DAY(v_today, 'MONDAY'), 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE('Days left     : ' || TRUNC(LAST_DAY(v_today) - v_today));
END;
/
