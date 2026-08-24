SET SERVEROUTPUT ON;

DECLARE
    v_marks NUMBER := 420;
    v_total NUMBER := 500;
    v_percentage NUMBER;
BEGIN
    v_percentage := (v_marks / v_total) * 100;

    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan');
    DBMS_OUTPUT.PUT_LINE('Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Last Semester Marks: ' || v_marks || '/' || v_total);
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || TO_CHAR(v_percentage, '990.00') || '%');
END;
/
