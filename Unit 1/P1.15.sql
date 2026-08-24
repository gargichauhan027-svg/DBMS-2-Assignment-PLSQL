SET SERVEROUTPUT ON;

DECLARE
    v_dept NUMBER := 10; -- (Roll 06 MOD 6 + 1) * 10
    v_cnt NUMBER;
    v_avg NUMBER;
    v_max NUMBER;
BEGIN
    SELECT COUNT(*), ROUND(AVG(salary), 2), MAX(salary)
    INTO v_cnt, v_avg, v_max
    FROM employees
    WHERE department_id = v_dept;

    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Department ID : ' || v_dept);
    DBMS_OUTPUT.PUT_LINE('Employee Count: ' || v_cnt);
    DBMS_OUTPUT.PUT_LINE('Average Salary: ' || NVL(TO_CHAR(v_avg), 'NULL'));
    DBMS_OUTPUT.PUT_LINE('Maximum Salary: ' || NVL(TO_CHAR(v_max), 'NULL'));

    -- COUNT(*) always returns one aggregate row, even when no employees match.
    -- Therefore SELECT INTO does not raise NO_DATA_FOUND for COUNT(*).
END;
/
