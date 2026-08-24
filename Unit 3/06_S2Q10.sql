-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT book_id,title,stock FROM book WHERE stock<5; v_count NUMBER:=0;
BEGIN FOR r IN c LOOP v_count:=v_count+1; DBMS_OUTPUT.PUT_LINE(r.book_id||' - '||r.title||' - Stock '||r.stock||' REORDER'); END LOOP; DBMS_OUTPUT.PUT_LINE('Reorder count: '||v_count); END;
/