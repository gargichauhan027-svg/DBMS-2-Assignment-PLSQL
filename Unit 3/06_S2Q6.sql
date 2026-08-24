-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT book_id,title,price,stock FROM book; v_total NUMBER:=0; v_value NUMBER;
BEGIN FOR r IN c LOOP v_value:=r.price*r.stock; v_total:=v_total+v_value; DBMS_OUTPUT.PUT_LINE(r.title||' = Rs.'||v_value); END LOOP; DBMS_OUTPUT.PUT_LINE('Grand Total = Rs.'||v_total); END;
/