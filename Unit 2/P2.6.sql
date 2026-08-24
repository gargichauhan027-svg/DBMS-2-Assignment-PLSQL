SET SERVEROUTPUT ON;
DECLARE
    v_food NUMBER := 450; v_distance NUMBER := 6; v_rain BOOLEAN := TRUE; v_late BOOLEAN := FALSE; v_festival BOOLEAN := TRUE; v_peak BOOLEAN := FALSE; v_first BOOLEAN := TRUE;
    v_base NUMBER; v_rain_s NUMBER:=0; v_late_s NUMBER:=0; v_fest_s NUMBER:=0; v_peak_s NUMBER:=0; v_discount NUMBER:=0; v_final NUMBER; v_grand NUMBER;
BEGIN
    IF v_food > 499 THEN v_base:=0; ELSE IF v_distance < 3 THEN v_base:=0; ELSIF v_distance <= 8 THEN v_base:=29; ELSIF v_distance <=15 THEN v_base:=49; ELSE v_base:=79; END IF; END IF;
    CASE WHEN v_rain THEN v_rain_s:=v_base*0.20 ELSE v_rain_s:=0 END CASE;
         WHEN v_late THEN v_late_s:=v_base*0.15 ELSE v_late_s:=0 END CASE;
         WHEN v_festival THEN v_fest_s:=v_base*0.10 ELSE v_fest_s:=0 END CASE;
         WHEN v_peak THEN v_peak_s:=v_base*0.10 ELSE v_peak_s:=0 END CASE;
    END CASE;
    v_final:=v_base+v_rain_s+v_late_s+v_fest_s+v_peak_s;
    IF v_food > 499 THEN v_discount:=v_final; ELSIF v_first THEN v_discount:=v_final*0.50; END IF;
    v_final:=v_final-v_discount; v_grand:=v_food+v_final;
    DBMS_OUTPUT.PUT_LINE('Name: Gargi Chauhan | Roll No: 06');
    DBMS_OUTPUT.PUT_LINE('Food Total: Rs.'||v_food); DBMS_OUTPUT.PUT_LINE('Base Delivery: Rs.'||ROUND(v_base));
    DBMS_OUTPUT.PUT_LINE('Rain Surcharge: Rs.'||ROUND(v_rain_s)); DBMS_OUTPUT.PUT_LINE('Late Night: Rs.'||ROUND(v_late_s));
    DBMS_OUTPUT.PUT_LINE('Festival: Rs.'||ROUND(v_fest_s)); DBMS_OUTPUT.PUT_LINE('Peak Hour: Rs.'||ROUND(v_peak_s));
    DBMS_OUTPUT.PUT_LINE('Discount: Rs.'||ROUND(v_discount)); DBMS_OUTPUT.PUT_LINE('Final Delivery: Rs.'||ROUND(v_final)); DBMS_OUTPUT.PUT_LINE('Grand Total: Rs.'||ROUND(v_grand));
END;
/