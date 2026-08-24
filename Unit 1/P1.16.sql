SET SERVEROUTPUT ON;

DECLARE
    v_id NUMBER := 90; -- ((Roll 06 + 2) MOD 11 + 1) * 10
    v_dname departments.department_name%TYPE;
    v_loc departments.location_id%TYPE;
BEGIN
    SELECT department_name, location_id
    INTO v_dname, v_loc
    FROM departments
    WHERE department_id = v_id;

    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Dept ' || v_id || ': ' || v_dname || ' at location ' || v_loc);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Department ' || v_id || ' not found.');

    -- %TYPE anchors the PL/SQL variable to the database column definition.
    -- If the DBA changes department_name from VARCHAR2(30) to VARCHAR2(60),
    -- v_dname automatically follows the new column datatype/size without editing this block.
END;
/
