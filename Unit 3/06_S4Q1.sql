-- Gargi Chauhan | Roll No. 06
-- Cause: c_book is a parameterised cursor used by a cursor FOR loop. Oracle opens and closes it automatically.
-- Therefore c_book%ROWCOUNT after the FOR loop is invalid; the failing reference is IF c_book%ROWCOUNT = 0.
-- Correct approach: use a BOOLEAN flag inside the loop.
SET SERVEROUTPUT ON;
DECLARE CURSOR c_book(p_cat VARCHAR2) IS SELECT book_id,title FROM book WHERE category=p_cat; v_found BOOLEAN:=FALSE;
BEGIN FOR r IN c_book('Database') LOOP v_found:=TRUE; DBMS_OUTPUT.PUT_LINE(r.book_id||' - '||r.title); END LOOP; IF NOT v_found THEN DBMS_OUTPUT.PUT_LINE('No books found'); END IF; END;
/