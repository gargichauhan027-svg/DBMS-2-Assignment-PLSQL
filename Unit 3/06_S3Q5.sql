-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c(p_cat VARCHAR2 DEFAULT 'Database') IS SELECT title,price FROM book WHERE UPPER(category)=UPPER(p_cat);
BEGIN DBMS_OUTPUT.PUT_LINE('Default:'); FOR r IN c LOOP DBMS_OUTPUT.PUT_LINE(r.title||' - Rs.'||r.price); END LOOP; DBMS_OUTPUT.PUT_LINE('Networking:'); FOR r IN c('Networking') LOOP DBMS_OUTPUT.PUT_LINE(r.title||' - Rs.'||r.price); END LOOP; END;
/