-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT book_id,title FROM book; v_id book.book_id%TYPE; v_title book.title%TYPE; BEGIN IF c%ISOPEN THEN DBMS_OUTPUT.PUT_LINE('Cursor already open'); ELSE OPEN c; END IF; CLOSE c; DBMS_OUTPUT.PUT_LINE('Cursor open after close: '||CASE WHEN c%ISOPEN THEN 'TRUE' ELSE 'FALSE' END); END;
/