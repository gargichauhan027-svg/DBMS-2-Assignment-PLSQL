-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT book_id,title,price FROM book;
BEGIN FOR r IN c LOOP DBMS_OUTPUT.PUT_LINE(r.book_id||' - '||r.title||' - Rs.'||r.price); END LOOP; -- FOR loop automatically declares, opens, fetches and closes the cursor.
END;
/