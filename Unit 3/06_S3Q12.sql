-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
ACCEPT p_letter CHAR PROMPT 'Enter first letter: '
DECLARE CURSOR c(p_letter CHAR) IS SELECT member_name,course,semester FROM lib_member WHERE UPPER(member_name) LIKE UPPER(p_letter)||'%';
BEGIN FOR r IN c('&p_letter') LOOP DBMS_OUTPUT.PUT_LINE(r.member_name||' - '||r.course||' - Sem '||r.semester); END LOOP; END;
/