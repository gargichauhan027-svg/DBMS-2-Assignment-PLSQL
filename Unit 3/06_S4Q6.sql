-- Gargi Chauhan | Roll No. 06
/* %FOUND, %NOTFOUND and %ROWCOUNT require the explicit cursor to be open; otherwise ORA-01001 occurs. %ISOPEN is the exception: it can be checked while closed and returns FALSE rather than raising ORA-01001.
Example: IF c%FOUND THEN ... after OPEN/FETCH; IF c%NOTFOUND THEN ... after FETCH; DBMS_OUTPUT.PUT_LINE(c%ROWCOUNT) after OPEN/FETCH; IF c%ISOPEN THEN ... even before OPEN.
*/
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT title FROM book;
BEGIN DBMS_OUTPUT.PUT_LINE('ISOPEN before OPEN = '||CASE WHEN c%ISOPEN THEN 'TRUE' ELSE 'FALSE' END); END;
/