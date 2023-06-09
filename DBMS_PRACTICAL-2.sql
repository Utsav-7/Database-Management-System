CREATE TABLE JOB
(
    Job_id VARCHAR2(15),
    Job_title VARCHAR2(30),
    Min_sal NUMBER(7,2),
    Max_sal NUMBER(7,2)
);

INSERT INTO JOB VALUES('it_prog','Programmer',4000,10000);
INSERT INTO JOB VALUES('mk_mgr','Marketing manager',9000,15000);
INSERT INTO JOB VALUES('fi_mgr','Finance manager',8200,12000);
INSERT INTO JOB VALUES('fi_acc','Account',4200,9000);
INSERT INTO JOB VALUES('lec','Lecturer',6000,17000);
INSERT INTO JOB VALUES('comp_op','Computer Operator',1500,3000);
SELECT * FROM JOB;



CREATE TABLE EMPLOYEE
(
    emp_no NUMBER(3), 
    emp_name VARCHAR2(30), 
    emp_sal NUMBER(8,2), 
    emp_comm NUMBER(6,1), 
    dept_no NUMBER(3), 
    l_name VARCHAR2(30), 
    dept_name VARCHAR2(30), 
    job_id VARCHAR2(15), 
    location VARCHAR2(15),
    manager_id NUMBER(5), 
    hiredate Date
);

INSERT INTO EMPLOYEE VALUES(101,'Smith',800,NULL,20,'shah','machine learning','fi_mgr','toronto',105,'09-aug-96');
INSERT INTO EMPLOYEE VALUES(102,'Snehal',1600,300,25,'gupta','data science','lec','las vegas',NULL,'14-mar-96');
INSERT INTO EMPLOYEE VALUES(103,'Adama',1100,0,20,'wales','machine learning','mk_mgr','ontario',105,'30-nov-95');
INSERT INTO EMPLOYEE VALUES(104,'Aman',3000,NULL,15,'sharma','virtual reality','comp_op','mexico',12,'02-oct-97');
INSERT INTO EMPLOYEE VALUES(105,'Anita',5000,50000,10,'patel','big data analytics','comp_op','germany',107,'01-jan-98');
INSERT INTO EMPLOYEE VALUES(106,'Sneha',2450,24500,10,'joseph','big data analytics','fi_acc','melbourne',105,'26-sep-97');
INSERT INTO EMPLOYEE VALUES(107,'Anamika',2975,NULL,30,'jha','artificial intelligence','it_prog','new york',NULL,'15jul-97');
SELECT * FROM EMPLOYEE;


CREATE TABLE DEPOSIT
(
    a_no VARCHAR2(5),
    cname VARCHAR2(15),
    bname VARCHAR2(10),
    amount NUMBER(7,2),
    a_date Date
);

INSERT INTO DEPOSIT VALUES(101,'Anil','andheri',7000,'01-jan-06');
INSERT INTO DEPOSIT VALUES(102,'sunil','virar',5000,'15-jul-06');
INSERT INTO DEPOSIT VALUES(103,'jay','villeparle',6500,'12-mar-06');
INSERT INTO DEPOSIT VALUES(104,'vijay','andheri',8000,'17-sep-06');
INSERT INTO DEPOSIT VALUES(105,'keyur','dadar',7500,'19-nov-06');
INSERT INTO DEPOSIT VALUES(106,'mayur','borivali',5500,'21-dec-06');
SELECT * FROM DEPOSIT;


CREATE TABLE BORROW
(   
    loanno VARCHAR2(5), 
    cname VARCHAR2(15), 
    bname VARCHAR2(10), 
    amount VARCHAR(7,2)
);

-----------------------------------------------QUERIES------------------------------------------------
1. SELECT * FROM EMPLOYEE;
   SELECT * FROM JOB;
   SELECT * FROM DEPOSIT;
2. SELECT a_no, amount FROM DEPOSIT WHERE a_date>'01-jan-06' AND a_date<'25-jul-06';
3. SELECT Job_title,min_sal FROM JOB WHERE min_sal>4000;
4. SELECT emp_name AS NAME,emp_sal AS SALARY FROM EMPLOYEE WHERE dept_no=20;
5. SELECT emp_no,emp_name,dept_no,dept_name FROM EMPLOYEE WHERE dept_no>10 AND dept_no<20;
6. SELECT * FROM EMPLOYEE WHERE emp_comm IS NOT NULL AND manager_id IS NOT NULL;
7. SELECT a_no,cname FROM DEPOSIT WHERE amount!=8000;
8. SELECT * FROM JOB WHERE min_sal=2000 OR min_sal=4000;

-----------------------------------------------QUERIES------------------------------------------------
1. SELECT emp_name FROM EMPLOYEE WHERE emp_name LIKE 'A_a%';
2. SELECT emp_no,emp_name,emp_sal FROM EMPLOYEE WHERE emp_name LIKE 'Ani__';
3. SELECT * FROM EMPLOYEE WHERE emp_name LIKE '_m%' OR emp_name LIKE '_n%';
4. SELECT * FROM DEPOSIT WHERE bname='andheri' OR bname='dadar' OR bname='virar';
5. SELECT Job_title FROM JOB WHERE Job_id LIKE 'fi_%';
6. SELECT Job_title FROM JOB WHERE Job_title LIKE '%mgr' AND max_sal>12000;
7. SELECT * FROM EMPLOYEE WHERE emp_comm IS NOT NULL AND manager_id IS NOT NULL AND emp_name LIKE '_n___';
8. SELECT * FROM EMPLOYEE WHERE emp_comm IS NULL AND manager_id IS NULL AND emp_name LIKE '__a%';
9. SELECT * FROM JOB WHERE Job_id LIKE '%\_%'ESCAPE'\';
