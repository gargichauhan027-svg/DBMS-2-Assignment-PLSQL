-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c(p_country VARCHAR2) IS SELECT pub_name,city FROM publisher WHERE UPPER(country)=UPPER(p_country); v_found BOOLEAN:=FALSE;
BEGIN FOR r IN c('India') LOOP v_found:=TRUE; DBMS_OUTPUT.PUT_LINE(r.pub_name||' - '||r.city); END LOOP; IF NOT v_found THEN DBMS_OUTPUT.PUT_LINE('No publisher found in India'); END IF; -- After a cursor FOR loop ends, its implicit cursor is closed, so %ROWCOUNT cannot safely be checked there.
END;
/