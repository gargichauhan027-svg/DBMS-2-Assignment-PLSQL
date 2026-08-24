SET SERVEROUTPUT ON;
DECLARE
    v_roll NUMBER := 6;
    v_num NUMBER := MOD(v_roll,9)+2;
    v_height NUMBER := 5+MOD(v_roll,5);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Part A - Table of '||v_num);
    FOR i IN 1..20 LOOP DBMS_OUTPUT.PUT_LINE(v_num||' x '||i||' = '||(v_num*i)); END LOOP;
    DBMS_OUTPUT.PUT_LINE('Part B - Tables 2 to 5');
    FOR n IN 2..5 LOOP FOR i IN 1..10 LOOP DBMS_OUTPUT.PUT_LINE(LPAD(n||' x '||i||' = '||(n*i),18)); END LOOP; END LOOP;
    DBMS_OUTPUT.PUT_LINE('Part C - Star Triangle');
    FOR r IN 1..v_height LOOP DBMS_OUTPUT.PUT_LINE(RPAD('*',r,'*')); END LOOP;
    DBMS_OUTPUT.PUT_LINE('Part D - Number Pyramid');
    FOR r IN 1..6 LOOP DBMS_OUTPUT.PUT_LINE(RPAD(LTRIM(TO_CHAR(r,'9')),r,'123456789')); END LOOP;
    DBMS_OUTPUT.PUT_LINE('Part E - Reverse Triangle');
    FOR r IN REVERSE 1..v_height LOOP DBMS_OUTPUT.PUT_LINE(RPAD('*',r,'*')); END LOOP;
END;
/