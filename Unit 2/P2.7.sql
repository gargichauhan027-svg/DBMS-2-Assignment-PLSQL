SET SERVEROUTPUT ON;
DECLARE
    v_att NUMBER := 85; v_theory NUMBER := 55; v_practical NUMBER := 24; v_assignment NUMBER := 8;
    v_total NUMBER; v_pct NUMBER; v_grade VARCHAR2(10); v_result VARCHAR2(30); v_remark VARCHAR2(100);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    IF v_att < 40 THEN v_result:='DETAINED'; v_remark:='Attendance below 40%';
    ELSIF v_theory < 28 THEN v_result:='FAIL in Theory'; v_remark:='Theory marks below passing limit';
    ELSIF v_practical < 12 THEN v_result:='FAIL in Practical'; v_remark:='Practical marks below passing limit';
    ELSE
        v_total:=v_theory+v_practical+LEAST(v_assignment,10); v_pct:=v_total/1.2;
        CASE WHEN v_pct>=90 THEN v_grade:='A+'; WHEN v_pct>=80 THEN v_grade:='A'; WHEN v_pct>=70 THEN v_grade:='B'; WHEN v_pct>=60 THEN v_grade:='C'; WHEN v_pct>=50 THEN v_grade:='D'; ELSE v_grade:='F'; END CASE;
        v_result:='PASS'; v_remark:='All components cleared';
    END IF;
    DBMS_OUTPUT.PUT_LINE('Attendance: '||v_att||'%'); DBMS_OUTPUT.PUT_LINE('Theory: '||v_theory||'/70'); DBMS_OUTPUT.PUT_LINE('Practical: '||v_practical||'/30'); DBMS_OUTPUT.PUT_LINE('Assignment counted: '||LEAST(v_assignment,10)||'/10');
    IF v_result='PASS' THEN DBMS_OUTPUT.PUT_LINE('Total: '||v_total); DBMS_OUTPUT.PUT_LINE('Percentage: '||ROUND(v_pct,2)||'%'); DBMS_OUTPUT.PUT_LINE('Grade: '||v_grade); END IF;
    DBMS_OUTPUT.PUT_LINE('Result: '||v_result); DBMS_OUTPUT.PUT_LINE('Remark: '||v_remark);
END;
/