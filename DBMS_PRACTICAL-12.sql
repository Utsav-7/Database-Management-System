-- 1.

DECLARE
      CURSOR C1 IS SELECT * FROM EMPLOYEE;
      V C1 % ROWTYPE;
      

BEGIN
    OPEN C1;
    LOOP
        FETCH C1 INTO V;
        EXIT WHEN C1 % NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V.EMP_SAL ||'--'|| V.EMP_NAME);
    END LOOP;
   CLOSE C1;
END

-- 2.


DECLARE
      CURSOR C1 IS SELECT * FROM EMPLOYEE;
      V C1 % ROWTYPE;
      ID NUMBER := 10;
      

BEGIN
    OPEN C1;
    LOOP
        FETCH C1 INTO V;
        EXIT WHEN C1 % NOTFOUND;
        IF V.DEPT_NO = ID AND V.EMP_SAL<10000 THEN
             DBMS_OUTPUT.PUT_LINE(V.L_NAME || 'DUE FOR RAISE');
        ELSE 
             DBMS_OUTPUT.PUT_LINE(V.L_NAME || 'DUE FOR NOT RAISE');
        END IF;
        END LOOP;
        CLOSE C1;

END
