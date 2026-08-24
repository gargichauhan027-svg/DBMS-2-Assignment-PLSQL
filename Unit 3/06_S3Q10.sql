-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c(p_days NUMBER) IS SELECT issue_id,book_id,issue_date FROM book_issue WHERE return_date IS NULL AND issue_date < TRUNC(SYSDATE)-p_days; v_total NUMBER:=0; v_fine NUMBER;
BEGIN FOR r IN c(30) LOOP v_fine:=(TRUNC(SYSDATE)-TRUNC(r.issue_date))*2; v_total:=v_total+v_fine; DBMS_OUTPUT.PUT_LINE(r.issue_id||' - Book '||r.book_id||' - Fine Rs.'||v_fine); END LOOP; DBMS_OUTPUT.PUT_LINE('Total fine payable: Rs.'||v_total); END;
/