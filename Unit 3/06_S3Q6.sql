-- Gargi Chauhan | Roll No. 06
SET SERVEROUTPUT ON;
DECLARE CURSOR c(p_member NUMBER) IS SELECT b.title,bi.issue_date FROM book_issue bi JOIN book b ON b.book_id=bi.book_id JOIN lib_member m ON m.member_id=bi.member_id WHERE m.member_id=p_member;
BEGIN FOR r IN c(2) LOOP DBMS_OUTPUT.PUT_LINE(r.title||' - '||TO_CHAR(r.issue_date,'DD-MON-YYYY')); END LOOP; END;
/