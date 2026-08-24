SET SERVEROUTPUT ON;
DECLARE
    v_gross NUMBER := 1000000; v_std NUMBER := 75000; v_taxable NUMBER; v_tax NUMBER := 0; v_tds NUMBER; v_takehome NUMBER;
BEGIN
    v_taxable := GREATEST(v_gross-v_std,0);
    v_tax := CASE
        WHEN v_taxable <= 300000 THEN 0
        WHEN v_taxable <= 700000 THEN (v_taxable-300000)*0.05
        WHEN v_taxable <= 1000000 THEN 20000+(v_taxable-700000)*0.10
        WHEN v_taxable <= 1200000 THEN 50000+(v_taxable-1000000)*0.15
        WHEN v_taxable <= 1500000 THEN 80000+(v_taxable-1200000)*0.20
        ELSE 140000+(v_taxable-1500000)*0.30
    END;
    v_tds := v_tax/12; v_takehome := (v_gross-v_tax)/12;
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Gross Salary: Rs.'||TO_CHAR(v_gross,'99,99,999'));
    DBMS_OUTPUT.PUT_LINE('Standard Deduction: Rs.'||TO_CHAR(v_std,'99,999'));
    DBMS_OUTPUT.PUT_LINE('Taxable Income: Rs.'||TO_CHAR(v_taxable,'99,99,999'));
    DBMS_OUTPUT.PUT_LINE('Total Tax: Rs.'||TO_CHAR(v_tax,'99,99,999'));
    DBMS_OUTPUT.PUT_LINE('Monthly TDS: Rs.'||TO_CHAR(v_tds,'99,999.00'));
    DBMS_OUTPUT.PUT_LINE('Monthly Take-home: Rs.'||TO_CHAR(v_takehome,'99,999.00'));
    IF v_tax=0 THEN DBMS_OUTPUT.PUT_LINE('No tax this year — save more with PPF/ELSS!'); END IF;
END;
/