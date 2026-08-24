SET SERVEROUTPUT ON;

DECLARE
    c_gst CONSTANT NUMBER := 18;
    v_plan NUMBER := 399; -- (Roll 06 MOD 4) + 1 => 3rd plan
    v_gst NUMBER;
    v_total NUMBER;
BEGIN
    v_gst := v_plan * c_gst / 100;
    v_total := v_plan + v_gst;

    DBMS_OUTPUT.PUT_LINE('==============================');
    DBMS_OUTPUT.PUT_LINE('       JIO RECHARGE RECEIPT');
    DBMS_OUTPUT.PUT_LINE('==============================');
    DBMS_OUTPUT.PUT_LINE(RPAD('Plan Name:', 15) || 'Jio 399 Plan');
    DBMS_OUTPUT.PUT_LINE(RPAD('Base Price:', 15) || TO_CHAR(v_plan, '99,999.99'));
    DBMS_OUTPUT.PUT_LINE(RPAD('GST @18%:', 15) || TO_CHAR(v_gst, '99,999.99'));
    DBMS_OUTPUT.PUT_LINE(RPAD('Total:', 15) || TO_CHAR(v_total, '99,999.99'));
    DBMS_OUTPUT.PUT_LINE(RPAD('Validity:', 15) || TO_CHAR(SYSDATE + 28, 'DD-MON-YYYY'));
END;
/
