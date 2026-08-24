SET SERVEROUTPUT ON;

DECLARE
    v_celsius NUMBER := 31; -- Roll 06 MOD 20 + 25
    v_fahrenheit NUMBER;
    v_kelvin NUMBER;
    v_f NUMBER := 98.6;
    v_c2 NUMBER;
BEGIN
    v_fahrenheit := ROUND(v_celsius * 9 / 5 + 32, 1);
    v_kelvin := v_celsius + 273.15;
    v_c2 := ROUND((v_f - 32) * 5 / 9, 1);

    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Celsius    : ' || v_celsius || ' C');
    DBMS_OUTPUT.PUT_LINE('Fahrenheit : ' || v_fahrenheit || ' F');
    DBMS_OUTPUT.PUT_LINE('Kelvin     : ' || v_kelvin || ' K');
    DBMS_OUTPUT.PUT_LINE('98.6 F back to Celsius: ' || v_c2 || ' C');
    -- Multiplication and division have the same precedence and are evaluated left-to-right,
    -- so C*9/5+32 and C*(9/5)+32 give the same mathematical result in this case.
END;
/
