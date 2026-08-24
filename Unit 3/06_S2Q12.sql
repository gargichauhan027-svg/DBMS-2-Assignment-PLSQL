-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT book_id,title,stock FROM book WHERE category='Database' FOR UPDATE OF stock; v_old NUMBER;
BEGIN FOR r IN c LOOP v_old:=r.stock; UPDATE book SET stock=stock+10 WHERE CURRENT OF c; DBMS_OUTPUT.PUT_LINE(r.title||' Old: '||v_old||' New: '||(v_old+10)); END LOOP; COMMIT; END;
/