SET SERVEROUTPUT ON;

DECLARE
    v_p NUMBER := 6000; -- Roll 06 * 1000
    v_r NUMBER := 6.5;  -- May (birth month 5) * 0.5 + 4
    v_t NUMBER := 3;
    v_si NUMBER;
    v_ci NUMBER;
    v_si_amount NUMBER;
    v_ci_amount NUMBER;
    v_diff_pct NUMBER;
BEGIN
    v_si := v_p * v_r * v_t / 100;
    v_ci := v_p * POWER(1 + v_r / 100, v_t) - v_p;
    v_si_amount := v_p + v_si;
    v_ci_amount := v_p + v_ci;
    v_diff_pct := (v_ci - v_si) / v_si * 100;

    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Principal: Rs.' || TO_CHAR(v_p, '99,99,999.00'));
    DBMS_OUTPUT.PUT_LINE('Rate: ' || v_r || '% | Years: ' || v_t);
    DBMS_OUTPUT.PUT_LINE('Simple Interest: Rs.' || TO_CHAR(v_si, '99,99,999.00'));
    DBMS_OUTPUT.PUT_LINE('Compound Interest: Rs.' || TO_CHAR(v_ci, '99,99,999.00'));
    DBMS_OUTPUT.PUT_LINE('SI Final Amount: Rs.' || TO_CHAR(v_si_amount, '99,99,999.00'));
    DBMS_OUTPUT.PUT_LINE('CI Final Amount: Rs.' || TO_CHAR(v_ci_amount, '99,99,999.00'));
    DBMS_OUTPUT.PUT_LINE('CI-SI Difference: ' || ROUND(v_diff_pct, 2) || '%');
    IF v_diff_pct > 10 THEN
        DBMS_OUTPUT.PUT_LINE('Tip: FD is better than savings account for this amount.');
    END IF;
END;
/
