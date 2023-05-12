---------------------------------------------IF ELSE EXAMPLE-------------------------------------
DECLARE
     AGE NUMBER := 18;
BEGIN
     IF AGE<=10 THEN
         DBMS_OUTPUT.PUT_LINE('YOUR ARE BELOW 10');
     ELSIF AGE<=20 AND AGE>=10 THEN
         DBMS_OUTPUT.PUT_LINE('YOUR ARE BELOW 20');
     ELSE
         DBMS_OUTPUT.PUT_LINE('YOUR ARE ABOVE 20');
     END IF;
END;
-------------------------------PRACTICAL:-10 (1) -------------------------------
DECLARE
     A NUMBER := 3;
     B NUMBER := 4;
     C NUMBER := 9;
     SUM1 NUMBER;
     AVG1 NUMBER;
BEGIN
     SUM1 := A+B+C;
     AVG1 := SUM1/3;
     DBMS_OUTPUT.PUT_LINE('SUM IS: '|| SUM1);
     DBMS_OUTPUT.PUT_LINE('AVERAGE IS: '|| AVG1);
END;
-------------------------------PRACTICAL:-10 (2) -------------------------------
