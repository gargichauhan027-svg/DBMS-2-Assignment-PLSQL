SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(100) := 'Gargi Chauhan';
    v_roll NUMBER := 6;
    v_dob DATE := DATE '2008-05-27';
    v_upper VARCHAR2(100);
    v_first VARCHAR2(50);
    v_last VARCHAR2(50);
    v_id VARCHAR2(30);
    v_age NUMBER;
    v_display_name VARCHAR2(100);
BEGIN
    v_upper := UPPER(v_name);
    v_first := SUBSTR(v_upper, 1, INSTR(v_upper, ' ') - 1);
    v_last := SUBSTR(v_upper, INSTR(v_upper, ' ') + 1);
    v_id := 'LJICA' || TO_CHAR(v_dob, 'YYYY') || LPAD(v_roll, 3, '0');
    v_age := TRUNC(MONTHS_BETWEEN(SYSDATE, v_dob) / 12);

    IF LENGTH(v_upper) > 20 THEN
        v_display_name := v_first || ' ' || SUBSTR(v_last, 1, 1) || '.';
    ELSE
        v_display_name := v_upper;
    END IF;

    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE(RPAD('LJICA STUDENT ID CARD', 32));
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE(RPAD('Name', 15) || ': ' || v_display_name);
    DBMS_OUTPUT.PUT_LINE(RPAD('First Name', 15) || ': ' || v_first);
    DBMS_OUTPUT.PUT_LINE(RPAD('Student ID', 15) || ': ' || v_id);
    DBMS_OUTPUT.PUT_LINE(RPAD('Roll No', 15) || ': ' || LPAD(v_roll, 3, '0'));
    DBMS_OUTPUT.PUT_LINE(RPAD('DOB', 15) || ': ' || TO_CHAR(v_dob, 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE(RPAD('Age', 15) || ': ' || v_age);
    DBMS_OUTPUT.PUT_LINE('================================');
END;
/
