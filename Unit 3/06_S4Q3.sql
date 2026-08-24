-- Gargi Chauhan | Roll No. 06
-- The loop prints rows where price > 600. c%ROWCOUNT counts successful FETCHes; after the final failed FETCH, it is one higher than the last printed row.
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT title FROM book WHERE price>600; v_title book.title%TYPE;
BEGIN OPEN c; LOOP FETCH c INTO v_title; EXIT WHEN c%NOTFOUND; DBMS_OUTPUT.PUT_LINE(c%ROWCOUNT||' : '||v_title); END LOOP; DBMS_OUTPUT.PUT_LINE('Final ROWCOUNT = '||c%ROWCOUNT); CLOSE c; END;
/