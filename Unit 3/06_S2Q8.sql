-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT issue_id,book_id,issue_date FROM book_issue WHERE return_date IS NULL; v_count NUMBER:=0;
BEGIN FOR r IN c LOOP v_count:=v_count+1; DBMS_OUTPUT.PUT_LINE(r.issue_id||' - Book '||r.book_id||' - '||TO_CHAR(r.issue_date,'DD-MON-YYYY')); END LOOP; IF v_count=0 THEN DBMS_OUTPUT.PUT_LINE('All books returned'); END IF; END;
/