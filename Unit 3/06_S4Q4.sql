-- Gargi Chauhan | Roll No. 06
-- A parameterised cursor without a DEFAULT argument requires an argument at OPEN time, so omitting it causes PLS-00306: wrong number or types of arguments in call. This is a compile-time error for an explicit OPEN statement.
-- With DEFAULT, the cursor can be opened without an argument and the default value is used.
SET SERVEROUTPUT ON;
DECLARE CURSOR c_book(p_cat VARCHAR2 DEFAULT 'Database') IS SELECT title FROM book WHERE category=p_cat;
BEGIN FOR r IN c_book LOOP DBMS_OUTPUT.PUT_LINE(r.title); END LOOP; END;
/