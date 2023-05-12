SELECT * FROM DEPOSIT;
SELECT * FROM CUSTOMERS;
--------------------------------------------JOIN-------------------------------------
SELECT * FROM DEPOSIT JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME;

--------------------------------------FULL OUTER JOIN--------------------------------
SELECT * FROM DEPOSIT FULL OUTER JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME;

--------------------------------------LEFT OUTER JOIN--------------------------------
SELECT * FROM DEPOSIT LEFT OUTER JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME;

--------------------------------------RIGHT OUTER JOIN--------------------------------
SELECT * FROM DEPOSIT RIGHT OUTER JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME;
--------------------------------------PRACTICAL-5 --------------------------------
1. SELECT * FROM DEPOSIT JOIN CUSTOMERS 
   ON DEPOSIT.CNAME=CUSTOMERS.CNAME JOIN BORROW 
   ON DEPOSIT.CNAME=BORROW.CNAME WHERE DEPOSIT.CNAME='ANIL';
2. SELECT CNAME FROM DEPOSIT JOIN CUSTOMERS 
   ON DEPOSIT.CNAME=CUSTOMERS.CNAME JOIN BORROW 
   ON DEPOSIT.CNAME=BORROW.CNAME WHERE CUSTOMERS.CITY='NAGPUR';
3. SELECT CITY FROM DEPOSIT JOIN BRANCH 
   ON DEPOSIT.BNAME=BRANCH.BNAME JOIN BORROW 
   ON DEPOSIT.BNAME=BORROW.BNAME; 
4. SELECT dept_no,dept_name,l_name FROM EMPLOYEE;
5. SELECT JOB_ID,JOB_TITLE,LOCATION FROM EMPLOYEE JOIN JOB
   ON EMPLOYEE.JOB_ID=JOB.JOB_ID
   WHERE EMPLOYEE.DEPT_NO=30;
6. SELECT EMP_NAME,DEPT_NO, DEPT_NAME FROM EMPLOYEE WHERE LOCATION='new york';
7. SELECT EMP_NO,L_NAME,MANAGER_ID AS "MGR#" FROM EMPLOYEE;
8. SELECT EMP_NAME,HIREDATE FROM EMPLOYEE WHERE HIREDATE>'09-AUG-96';