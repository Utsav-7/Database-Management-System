-----------------------------------------------PRACTICAL-9------------------------------------------------
-------------------------------------------------QUERIES------------------------------------------------
1. ALTER TABLE JOB ADD CONSTRAINT PK_JOB PRIMARY KEY(JOB_ID);
   DESC JOB;
2. ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEE FOREIGN KEY(JOB_ID) REFERENCES JOB(JOB_ID);
   DESC EMPLOYEE;
3. CREATE TABLE LOCK1(
       S_ID VARCHAR2(5),
       S_NAME VARCHAR2(30),
       S_AGE NUMBER(3),
       DIV NUMBER(2),
       CONSTRAINT PK_LOCK1 PRIMARY KEY(S_ID)
   );
   DESC LOCK1;
4. ALTER TABLE JOB DROP CONSTRAINT PK_JOB;
   DESC JOB;
5. ALTER TABLE EMPLOYEE DROP CONSTRAINT FK_EMPLOYEE;
   DESC EMPLOYEE;

















