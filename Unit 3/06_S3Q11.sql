-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c(p_cat VARCHAR2) IS SELECT book_id,title,price FROM book WHERE UPPER(category)=UPPER(p_cat) FOR UPDATE OF price; v_old NUMBER;
BEGIN FOR r IN c('Database') LOOP v_old:=r.price; UPDATE book SET price=price*1.10 WHERE CURRENT OF c; DBMS_OUTPUT.PUT_LINE(r.title||' Old: Rs.'||v_old||' New: Rs.'||ROUND(v_old*1.10,2)); END LOOP; COMMIT; END;
/