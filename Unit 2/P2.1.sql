SET SERVEROUTPUT ON;

DECLARE
    v_m1 NUMBER := 78; v_m2 NUMBER := 82; v_m3 NUMBER := 74; v_m4 NUMBER := 69; v_m5 NUMBER := 88;
    v_total NUMBER; v_pct NUMBER; v_grade VARCHAR2(10); v_class VARCHAR2(30); v_result VARCHAR2(30);
BEGIN
    v_total := v_m1+v_m2+v_m3+v_m4+v_m5;
    v_pct := v_total/5;
    IF v_m1 < 35 OR v_m2 < 35 OR v_m3 < 35 OR v_m4 < 35 OR v_m5 < 35 THEN
        v_result := 'DETAINED';
        IF v_m1 < 35 THEN DBMS_OUTPUT.PUT_LINE('Failed Subject: Subject 1'); END IF;
        IF v_m2 < 35 THEN DBMS_OUTPUT.PUT_LINE('Failed Subject: Subject 2'); END IF;
        IF v_m3 < 35 THEN DBMS_OUTPUT.PUT_LINE('Failed Subject: Subject 3'); END IF;
        IF v_m4 < 35 THEN DBMS_OUTPUT.PUT_LINE('Failed Subject: Subject 4'); END IF;
        IF v_m5 < 35 THEN DBMS_OUTPUT.PUT_LINE('Failed Subject: Subject 5'); END IF;
    ELSE
        v_result := 'PASS';
        IF v_pct >= 75 THEN v_class := 'Distinction'; ELSIF v_pct >= 60 THEN v_class := 'First Class'; ELSIF v_pct >= 50 THEN v_class := 'Second Class'; ELSE v_class := 'Pass'; END IF;
    END IF;
    IF v_pct >= 90 THEN v_grade := 'A+'; ELSIF v_pct >= 80 THEN v_grade := 'A'; ELSIF v_pct >= 70 THEN v_grade := 'B'; ELSIF v_pct >= 60 THEN v_grade := 'C'; ELSIF v_pct >= 50 THEN v_grade := 'D'; ELSE v_grade := 'FAIL'; END IF;
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Marks: '||v_m1||', '||v_m2||', '||v_m3||', '||v_m4||', '||v_m5);
    DBMS_OUTPUT.PUT_LINE('Total: '||v_total||'/500'); DBMS_OUTPUT.PUT_LINE('Percentage: '||v_pct||'%');
    DBMS_OUTPUT.PUT_LINE('Grade: '||v_grade); DBMS_OUTPUT.PUT_LINE('Result: '||v_result);
    IF v_result = 'PASS' THEN DBMS_OUTPUT.PUT_LINE('Class: '||v_class); END IF;
END;
/