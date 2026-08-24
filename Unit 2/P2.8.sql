SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER := 50000; v_existing_emi NUMBER := 5000; v_loan NUMBER := 1500000; v_rate NUMBER := 10; v_tenure NUMBER := 60;
    v_r NUMBER; v_emi NUMBER; v_foir NUMBER; v_max_loan NUMBER; v_approved NUMBER; v_decision VARCHAR2(20);
BEGIN
    v_r := (v_rate/100)/12; v_foir:=v_salary*0.40; v_max_loan:=v_salary*60;
    IF v_salary < 25000 OR v_loan > v_max_loan THEN v_decision:='REJECTED'; v_approved:=0;
    ELSE
        v_emi:=v_loan*v_r*POWER(1+v_r,v_tenure)/(POWER(1+v_r,v_tenure)-1);
        v_approved:=v_loan;
        IF v_existing_emi+v_emi > v_foir THEN
            v_approved:=v_loan;
            WHILE v_approved > 0 LOOP
                v_emi:=v_approved*v_r*POWER(1+v_r,v_tenure)/(POWER(1+v_r,v_tenure)-1);
                EXIT WHEN v_existing_emi+v_emi <= v_foir;
                v_approved:=v_approved-10000;
            END LOOP;
            IF v_approved=0 THEN v_decision:='REJECTED'; ELSE v_decision:='CONDITIONAL'; END IF;
        ELSE v_decision:='APPROVED'; END IF;
    END IF;
    IF v_approved > 0 THEN v_emi:=v_approved*v_r*POWER(1+v_r,v_tenure)/(POWER(1+v_r,v_tenure)-1); END IF;
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Monthly Salary: Rs.'||v_salary); DBMS_OUTPUT.PUT_LINE('Existing EMI: Rs.'||v_existing_emi);
    DBMS_OUTPUT.PUT_LINE('Requested Loan: Rs.'||v_loan); DBMS_OUTPUT.PUT_LINE('Annual Rate: '||v_rate||'% | Tenure: '||v_tenure||' months');
    DBMS_OUTPUT.PUT_LINE('FOIR Limit: Rs.'||ROUND(v_foir)); DBMS_OUTPUT.PUT_LINE('Maximum Loan Limit: Rs.'||v_max_loan);
    DBMS_OUTPUT.PUT_LINE('Approved Amount: Rs.'||v_approved); DBMS_OUTPUT.PUT_LINE('Calculated EMI: Rs.'||ROUND(NVL(v_emi,0)));
    CASE v_decision WHEN 'APPROVED' THEN DBMS_OUTPUT.PUT_LINE('Decision: APPROVED'); WHEN 'CONDITIONAL' THEN DBMS_OUTPUT.PUT_LINE('Decision: CONDITIONAL'); ELSE DBMS_OUTPUT.PUT_LINE('Decision: REJECTED'); END CASE;
    DBMS_OUTPUT.PUT_LINE('Monthly Cost: Existing EMI Rs.'||v_existing_emi||' + New EMI Rs.'||ROUND(NVL(v_emi,0)));
END;
/