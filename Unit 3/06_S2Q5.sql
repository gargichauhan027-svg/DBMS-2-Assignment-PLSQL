-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c IS SELECT member_name,course,semester FROM lib_member; v_no NUMBER:=0;
BEGIN FOR r IN c LOOP v_no:=v_no+1; DBMS_OUTPUT.PUT_LINE(v_no||'. '||UPPER(r.member_name)||' ('||r.course||' - Sem '||r.semester||')'); END LOOP; END;
/