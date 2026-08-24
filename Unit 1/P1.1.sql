SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(50) := 'Gargi Chauhan';
    v_roll NUMBER := 6;
    v_message VARCHAR2(100) := 'Welcome to PL/SQL!';
    v_lucky NUMBER;
BEGIN
    v_lucky := MOD(v_roll, 7) + 1;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Roll No: ' || v_roll);
    DBMS_OUTPUT.PUT_LINE(v_message);
    DBMS_OUTPUT.PUT_LINE('Lucky Number: ' || v_lucky);
END;
/
