SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(50) := 'Gargi Chauhan';
    v_roll NUMBER := 6;
    v_dob DATE := DATE '2008-05-27';
    v_pnr VARCHAR2(30);
    v_jdate DATE;
    v_fare NUMBER;
    v_final_fare NUMBER;
    v_age NUMBER;
    PROCEDURE print_ticket(p_dob DATE) IS
    BEGIN
        v_pnr := 'GJ' || TO_CHAR(SYSDATE, 'YYMM') || LPAD(v_roll, 4, '0');
        v_jdate := SYSDATE + (MOD(v_roll, 30) + 1);
        v_fare := v_roll * 50 + 200;
        v_age := TRUNC(MONTHS_BETWEEN(SYSDATE, p_dob) / 12);
        v_final_fare := CASE WHEN v_age >= 60 THEN v_fare * 0.60 ELSE v_fare END;

        DBMS_OUTPUT.PUT_LINE('======================================');
        DBMS_OUTPUT.PUT_LINE('          IRCTC STYLE TICKET');
        DBMS_OUTPUT.PUT_LINE('======================================');
        DBMS_OUTPUT.PUT_LINE(RPAD('Passenger', 15) || ': ' || v_name);
        DBMS_OUTPUT.PUT_LINE(RPAD('PNR', 15) || ': ' || v_pnr);
        DBMS_OUTPUT.PUT_LINE(RPAD('Journey Date', 15) || ': ' || TO_CHAR(v_jdate, 'Day, DD-MON-YYYY'));
        DBMS_OUTPUT.PUT_LINE(RPAD('Age', 15) || ': ' || v_age);
        DBMS_OUTPUT.PUT_LINE(RPAD('Base Fare', 15) || ': Rs.' || TO_CHAR(v_fare, '999,999.00'));
        DBMS_OUTPUT.PUT_LINE(RPAD('Final Fare', 15) || ': Rs.' || TO_CHAR(v_final_fare, '999,999.00'));
        IF v_age >= 60 THEN
            DBMS_OUTPUT.PUT_LINE('Senior concession: 40%');
        END IF;
        DBMS_OUTPUT.PUT_LINE('======================================');
    END;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Normal student ticket:');
    print_ticket(v_dob);
    DBMS_OUTPUT.PUT_LINE('Senior citizen test:');
    print_ticket(DATE '1960-01-01');
END;
/
