SET SERVEROUTPUT ON;

DECLARE
    v_qty NUMBER := 3;       -- Roll 06 MOD 5 + 2
    v_price NUMBER := 1000;  -- Roll 06 * 100 + 400
    v_coupon NUMBER;
    v_gross NUMBER;
    v_disc NUMBER;
    v_taxable NUMBER;
    v_cgst NUMBER;
    v_sgst NUMBER;
    v_total NUMBER;
    PROCEDURE print_bill(p_coupon NUMBER) IS
    BEGIN
        v_coupon := p_coupon;
        v_gross := v_qty * v_price;
        v_disc := v_gross * NVL(v_coupon, 0) / 100;
        v_taxable := v_gross - v_disc;
        v_cgst := v_taxable * 0.09;
        v_sgst := v_taxable * 0.09;
        v_total := ROUND(v_taxable * 1.18);

        DBMS_OUTPUT.PUT_LINE('------------------------------');
        DBMS_OUTPUT.PUT_LINE('       KIRANA STORE BILL');
        DBMS_OUTPUT.PUT_LINE('------------------------------');
        DBMS_OUTPUT.PUT_LINE('Qty x Price : ' || v_qty || ' x Rs.' || v_price);
        DBMS_OUTPUT.PUT_LINE('Gross       : Rs.' || TO_CHAR(v_gross, '99,999.00'));
        DBMS_OUTPUT.PUT_LINE(NVL2(v_coupon, 'Coupon applied: ' || v_coupon || '%', 'No coupon'));
        DBMS_OUTPUT.PUT_LINE('Discount    : Rs.' || TO_CHAR(v_disc, '99,999.00'));
        DBMS_OUTPUT.PUT_LINE('Taxable     : Rs.' || TO_CHAR(v_taxable, '99,999.00'));
        DBMS_OUTPUT.PUT_LINE('CGST @9%    : Rs.' || TO_CHAR(v_cgst, '99,999.00'));
        DBMS_OUTPUT.PUT_LINE('SGST @9%    : Rs.' || TO_CHAR(v_sgst, '99,999.00'));
        DBMS_OUTPUT.PUT_LINE('Final Total : Rs.' || TO_CHAR(v_total, '99,999'));
        DBMS_OUTPUT.PUT_LINE('------------------------------');
    END;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Bill 1 - NULL coupon:');
    print_bill(NULL);
    DBMS_OUTPUT.PUT_LINE('Bill 2 - 10% coupon:');
    print_bill(10);
END;
/
