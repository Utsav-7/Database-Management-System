------------------------------------------------------------PRACTICAL-7-----------------------------------------------------------
-------------------------------------------------------------QUERIES--------------------------------------------------------------
1. SELECT L_NAME ,HIREDATE FROM EMPLOYEE WHERE DEPT_NAME=(SELECT DEPT_NAME FROM EMPLOYEE WHERE EMP_NAME='Smith');
2. SELECT CNAME FROM DEPOSIT JOIN BRANCH ON DEPOSIT.BNAME=BRANCH.BNAME WHERE CITY=(SELECT CITY FROM BRANCH JOIN DEPOSIT ON BRANCH.BNAME=DEPOSIT.BNAME WHERE CNAME='SUNIL');
3. UPDATE CUSTOMERS SET CNAME='PRMOD' WHERE CNAME='PRAMOD';
   SELECT * FROM DEPOSIT JOIN BORROW ON DEPOSIT.CNAME=BORROW.CNAME JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME WHERE CITY=(SELECT CITY FROM CUSTOMERS WHERE CNAME='PRMOD');
4. SELECT EMP_NO,L_NAME FROM EMPLOYEE WHERE EMP_SAL>(SELECT AVG(EMP_SAL) FROM EMPLOYEE);
5. SELECT CNAME FROM DEPOSIT JOIN BRANCH ON DEPOSIT.BNAME=BRANCH.BNAME WHERE CITY=(SELECT CITY FROM BRANCH JOIN DEPOSIT ON BRANCH.BNAME=DEPOSIT.BNAME WHERE CNAME='ANIL') AND AMOUNT>2000;
6. SKIP....
7. SELECT DEPT_NO,DEPT_NAME,JOB.JOB_ID,JOB.JOB_TITLE FROM EMPLOYEE JOIN JOB ON EMPLOYEE.JOB_ID=JOB.JOB_ID WHERE JOB_TITLE=(SELECT JOB_TITLE FROM JOB WHERE JOB_TITLE='Account');
8. SELECT BNAME FROM BRANCH GROUP BY BNAME HAVING COUNT(BNAME)=(SELECT MAX(COUNT(CNAME)) FROM DEPOSIT GROUP BY BNAME); 
