-- Gargi Chauhan | Roll No. 06
/* Comparison:
Implicit cursor: Oracle declares/opens/closes it automatically; not reusable with user-supplied values; best for single DML or SELECT INTO.
Explicit simple cursor: programmer declares, opens, fetches and closes; fixed query, reusable for repeated processing; best for row-by-row processing of one query.
Parameterised cursor: programmer declares and controls it, parameters are supplied at OPEN/FOR-loop time; reusable with different values; best when the same query must run for different criteria.
*/
SET SERVEROUTPUT ON;
BEGIN DBMS_OUTPUT.PUT_LINE('Comparison answer recorded above for Gargi Chauhan, Roll No. 06.'); END;
/