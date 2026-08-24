SET SERVEROUTPUT ON;

DECLARE
    v_fname employees.first_name%TYPE;
    v_sal employees.salary%TYPE;
    v_id NUMBER := 106; -- 100 + (Roll 06 MOD 7)
    PROCEDURE fetch_employee(p_id NUMBER) IS
    BEGIN
        SELECT first_name, salary
        INTO v_fname, v_sal
        FROM employees
        WHERE employee_id = p_id;
        DBMS_OUTPUT.PUT_LINE('Employee: ' || v_fname || ' earns Rs.' || v_sal || ' per month.');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Employee not found — check the ID.');
    END;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Valid ID Test:');
    fetch_employee(v_id);
    DBMS_OUTPUT.PUT_LINE('Non-existent ID Test:');
    fetch_employee(6);
END;
/
