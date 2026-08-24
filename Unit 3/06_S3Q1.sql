-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
ACCEPT p_cat CHAR PROMPT 'Enter category: '
DECLARE CURSOR c(p_category VARCHAR2) IS SELECT book_id,title,price FROM book WHERE UPPER(category)=UPPER(p_category);
BEGIN FOR r IN c('&p_cat') LOOP DBMS_OUTPUT.PUT_LINE(r.book_id||' - '||r.title||' - Rs.'||r.price); END LOOP; END;
/
-- Test with Database and Programming.