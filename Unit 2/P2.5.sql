SET SERVEROUTPUT ON;
DECLARE
    v_n NUMBER := 5+MOD(6,8); v_a NUMBER := 0; v_b NUMBER := 1; v_c NUMBER;
    v_last NUMBER; v_count NUMBER := 0; v_x NUMBER; v_y NUMBER; v_r NUMBER; v_sum NUMBER := 0;
    v_perfect NUMBER := 28;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Part A - Fibonacci ('||v_n||' numbers)');
    FOR i IN 1..v_n LOOP DBMS_OUTPUT.PUT_LINE(v_a); v_c:=v_a+v_b; v_a:=v_b; v_b:=v_c; END LOOP;
    v_a:=0; v_b:=1; FOR i IN 1..v_n LOOP v_c:=v_a+v_b; v_a:=v_b; v_b:=v_c; END LOOP; v_last:=v_a;
    v_x:=v_last; v_y:=2; IF v_x < 2 THEN DBMS_OUTPUT.PUT_LINE('Nth Fibonacci is not prime'); ELSE WHILE v_y <= FLOOR(SQRT(v_x)) LOOP IF MOD(v_x,v_y)=0 THEN DBMS_OUTPUT.PUT_LINE('Nth Fibonacci is not prime'); EXIT; END IF; v_y:=v_y+1; END LOOP; IF v_y > FLOOR(SQRT(v_x)) THEN DBMS_OUTPUT.PUT_LINE('Nth Fibonacci is prime'); END IF; END IF;
    DBMS_OUTPUT.PUT_LINE('Part C - Primes 1 to 100');
    FOR n IN 2..100 LOOP v_y:=2; WHILE v_y <= FLOOR(SQRT(n)) AND MOD(n,v_y)<>0 LOOP v_y:=v_y+1; END LOOP; IF v_y > FLOOR(SQRT(n)) THEN DBMS_OUTPUT.PUT(n||' '); v_count:=v_count+1; END IF; END LOOP; DBMS_OUTPUT.NEW_LINE; DBMS_OUTPUT.PUT_LINE('Prime Count: '||v_count);
    v_x:=84; v_y:=30; WHILE v_y<>0 LOOP v_r:=MOD(v_x,v_y); v_x:=v_y; v_y:=v_r; END LOOP; DBMS_OUTPUT.PUT_LINE('Part D - GCD(84,30): '||v_x);
    FOR d IN 1..FLOOR(v_perfect/2) LOOP IF MOD(v_perfect,d)=0 THEN v_sum:=v_sum+d; END IF; END LOOP; IF v_sum=v_perfect THEN DBMS_OUTPUT.PUT_LINE('Part E - '||v_perfect||' is a perfect number'); ELSE DBMS_OUTPUT.PUT_LINE('Part E - '||v_perfect||' is not a perfect number'); END IF;
END;
/