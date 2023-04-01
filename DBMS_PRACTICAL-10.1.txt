DECLARE
     A NUMBER := 5;
     B NUMBER := 10;
     C NUMBER := 15;
     SUMA NUMBER;
     AVGA NUMBER;
BEGIN 
     SUMA := A+B+C;
     AVGA := SUMA/3;
DBMS_OUTPUT.PUT_LINE('SUM IS:' || SUMA);
DBMS_OUTPUT.PUT_LINE('AVG IS:' || AVGA);

END;

   

