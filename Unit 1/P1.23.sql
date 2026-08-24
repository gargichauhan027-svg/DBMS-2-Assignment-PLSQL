SET SERVEROUTPUT ON;

DECLARE
    -- Bug 1 fixed: assignment uses := instead of =.
    -- Bug 2 fixed: VARCHAR2(5) was too small for the full name.
    v_name VARCHAR2(50) := 'Gargi Chauhan';
    -- Bug 3 fixed: a CONSTANT must be initialized at declaration.
    c_bonus_rate CONSTANT NUMBER := 0.1;
    v_sal NUMBER := 26000; -- Roll 06 * 1000 + 20000
    v_bonus NUMBER;
    v_fname employees.first_name%TYPE;
BEGIN
    -- Bug 4 fixed: declaration statements require semicolons.
    v_bonus := v_sal * c_bonus_rate;

    -- Bug 5 fixed: SELECT inside PL/SQL requires an INTO clause.
    SELECT first_name
    INTO v_fname
    FROM employees
    WHERE employee_id = 100;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Employee ID: 100');
    DBMS_OUTPUT.PUT_LINE('Fetched First Name: ' || v_fname);
    DBMS_OUTPUT.PUT_LINE('Salary: Rs.' || v_sal);
    DBMS_OUTPUT.PUT_LINE('Bonus: Rs.' || v_bonus);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee 100 not found.');
END;
/
