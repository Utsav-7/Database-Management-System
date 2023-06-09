--------------------------------------Practical:8------------------------------
SELECT * FROM DEPOSIT;
1. UPDATE DEPOSIT SET AMOUNT = (AMOUNT+AMOUNT*0.1);
2. UPDATE DEPOSIT SET AMOUNT = (AMOUNT+AMOUNT*0.1) WHERE BNAME = 'VRCE';
3. UPDATE DEPOSIT SET AMOUNT = (AMOUNT+AMOUNT*(0.1)) WHERE CNAME IN(SELECT CNAME FROM CUSTOMERS WHERE CITY='NAGPUR') AND BNAME IN(SELECT BNAME FROM BRANCH WHERE CITY='BOMBAY');
4. UPDATE EMPLOYEE SET DEPT_NO = (SELECT DEPT_NO FROM EMPLOYEE WHERE EMP_NO = 7844) WHERE EMP_NO = 7788;
5. UPDATE DEPOSIT SET AMOUNT = AMOUNT - 10 WHERE CNAME = 'ANIL' AND BNAME = (SELECT BNAME FROM DEPOSIT WHERE CNAME = 'SUNIL'); 
   UPDATE DEPOSIT SET AMOUNT = AMOUNT + 10 WHERE CNAME = 'SUNIL' AND BNAME = (SELECT BNAME FROM DEPOSIT WHERE CNAME = 'ANIL');
6. UPDATE DEPOSIT SET AMOUNT = AMOUNT + 100 WHERE AMOUNT IN(SELECT MAX(AMOUNT) FROM DEPOSIT GROUP BY BNAME);
7. DELETE FROM DEPOSIT WHERE BNAME IN (SELECT BNAME FROM DEPOSIT GROUP BY BNAME HAVING COUNT(BNAME) BETWEEN 1 AND 3);
8. DELETE FROM DEPOSIT WHERE CNAME = 'VIJAY';
9. DELETE FROM BORROW WHERE AMOUNT < 1000;
