// Day1 practise code in class
select * from emp;
select * from dept;
select empno,ename,job from emp;
select empno,ename,job from emp where job='CLERK';
SELECT * FROM EMP WHERE HIREDATE='17-12-80';
select * from emp where sal>1000 and sal<2000;
select * from emp where sal not between 2000 and 3000;
select * from emp where deptno=10 or deptno=20;
select * from emp where comm is not null and comm!=0; //it will show the records which is not null and 0
select * from emp where ename like 'M%';
select * from emp where regexp_like(ename,'^M');// here '^M' and '^M.*' both are equal
select * from emp where ename like '%S';
select * from emp where regexp_like(ename,'S$');
select * from emp where ename like 'M%N';
select * from emp where regexp_like(ename,'^M.*N$');
select * from emp where ename like '%E_';
select * from emp where regexp_like(ename,'E.$');
select * from emp where ename like 'A%N' or ename like 'A%R' or ename like 'M%N' or ename like 'M%R';
select * from emp where regexp_like(ename,'^[AM].*[NR]$');
select * from emp where ename like '_N%' or ename like '__N%';
select * from emp where regexp_like(ename,'^..?N');




// Assignment (Day1)

--Database Assignment 1
--Note : Use Emp, dept and salgrade table
--1. To list all records with sal > 2000 and comm>200
--2. To list all record with job=�Clerk� or sal>2000
--3. To list all the record with sal=1250 or 1100 or 2850
--4. To list all employees with sal>1250 and <2850
--5. To list all employees with name ends with AS
--6. To list all employees with job starts with C and ends with K
--7. To list all employees with job contains L at third position and
--M at third last position
--8. To list all the record with sal not equal to 1250 or 1100 or 2850
--9. To list all employees with salnot >1250 and <2850
--10. To list all employees with job starts with C , E at 3rd position and ends with K
--11. To list all rows with comm is null
--12. To list all employees with sal is null and name starts with �S�
--13. To list all employees with job contains 5 characters
--14. To list all employees with name contain �A� at 1 position and job
--Contains 5 characters
--Q2. Solve the following
--1. Retrieve the details (Name, Salary and dept no) of the emp who are working in
--department code 20, 30 and 40.
--2. Display the total salary of all employees . Total salary will be calculated as
--sal+comm+sal*0.10
--
--3. List the Name and job of the emp who have joined before 1 jan 1986 and whose
--salary range is between 1200and 2500. Display the columns with user defined Column
--headers.
--4. List the empno, name, and department number of the emp works under manager
--with id 7698
--
--5. List the name, job, and salary of the emp who are working in departments 10 and
--30.
--
--6. Display name concatenated with dept code separated by comma and space. Name
--the column as �Emp info�.
--
--7. Display the emp details who do not have manager.
--
--8. Write a query which will display name, department no and date of joining of all
--employee who were joined January 1, 1981 and March 31, 1983. Sort it based on date of
--joining (ascending).
--
--9. Display the employee details where the job contains word �AGE� anywhere in the Job
--
--11. List the details of the employee , whose names start with �A� and end with �S� or
--whose names contains N as the second or third character, and ending with either �N� or �S�.
--
--12. List the names of the emp having �_� character in their name.
--
--Group functions
--1. Display the Highest, Lowest, Total & Average salary of all employee. Label the columns
--Maximum, Minimum, Total and Average respectively for each Department. Also round the
--result to the nearest whole number.
--2. Display Department no and number of managers working in that department. Label the
--column as �Total Number of Managers� for each department.
--3. Get the Department number, and sum of Salary of all non managers where the sum is
--greater than 20000.

select * from emp;

--Q1
--1
select * from emp where sal>2000 and comm>200;
--2
select * from emp where job='CLERK' and sal>2000;
--3
select * from emp where sal in (1250,1100,2850);
--4
select * from emp where sal >1250 and sal < 2850;
--5
select * from emp where regexp_like(ename,'AS$');
--6
select * from emp where regexp_like(job,'^C.*K$');
--7
select * from emp where regexp_like(job,'..L.*M..');
--8
select * from emp where sal not in (1250,1100,2850);
--9
select * from emp where sal not between 1250 and 2850;
--10
select * from emp where regexp_like(job,'^C..E.*k$');
--11
select * from emp where comm is null;// is operator is used with null
--12
select * from emp where sal = null and regexp_like(ename,'^S');
--13
select * from emp where regexp_like(job,'.....');
select * from emp where regexp_like(job,'.{5}');
--14
select * from emp where regexp_like(job,'^A.{4}');

--Q2. Solve the following
--1. Retrieve the details (Name, Salary and dept no) of the emp who are working in
--department code 20, 30 and 40.
--2. Display the total salary of all employees . Total salary will be calculated as
--sal+comm+sal*0.10
--
--3. List the Name and job of the emp who have joined before 1 jan 1986 and whose
--salary range is between 1200and 2500. Display the columns with user defined Column
--headers.
--4. List the empno, name, and department number of the emp works under manager
--with id 7698
--
--5. List the name, job, and salary of the emp who are working in departments 10 and
--30.
--
--6. Display name concatenated with dept code separated by comma and space. Name
--the column as �Emp info�.
--
--7. Display the emp details who do not have manager.
--
--8. Write a query which will display name, department no and date of joining of all
--employee who were joined January 1, 1981 and March 31, 1983. Sort it based on date of
--joining (ascending).
--
--9. Display the employee details where the job contains word �AGE� anywhere in the Job
--
--11. List the details of the employee , whose names start with �A� and end with �S� or
--whose names contains N as the second or third character, and ending with either �N� or �S�.
--
--12. List the names of the emp having �_� character in their name.
--
--Group functions
--1. Display the Highest, Lowest, Total & Average salary of all employee. Label the columns
--Maximum, Minimum, Total and Average respectively for each Department. Also round the
--result to the nearest whole number.
--2. Display Department no and number of managers working in that department. Label the
--column as �Total Number of Managers� for each department.
--3. Get the Department number, and sum of Salary of all non managers where the sum is
--greater than 20000.

select * from emp;

--Q1
--1
select * from emp where sal>2000 and comm>200;
--2
select * from emp where job='CLERK' and sal>2000;
--3
select * from emp where sal in (1250,1100,2850);
--4
select * from emp where sal >1250 and sal < 2850;
--5
select * from emp where regexp_like(ename,'AS$');
--6
select * from emp where regexp_like(job,'^C.*K$');
--7
select * from emp where regexp_like(job,'..L.*M..');
--8
select * from emp where sal not in (1250,1100,2850);
--9
select * from emp where sal not between 1250 and 2850;
--10
select * from emp where regexp_like(job,'^C..E.*k$');
--11
select * from emp where comm is null;// is operator is used with null
--12
select * from emp where sal = null and regexp_like(ename,'^S');
--13
select * from emp where regexp_like(job,'.....');
select * from emp where regexp_like(job,'.{5}');
--14
select * from emp where regexp_like(job,'^A.{4}');

--Q2
--1
select ename,sal,deptno from emp where deptno in (10,20,30);
--2
select sal+nvl(comm,0)+sal*0.1 tot_sal from emp;
--3
select ename NAME,job U_JOB from emp where hiredate<'1-JAN-1986' AND SAL BETWEEN 1200 AND 2500;
--4
SELECT EMPNO,ENAME,DEPTNO FROM EMP WHERE MGR=7698;
--5
SELECT EMPNO,JOB,SAL FROM EMP WHERE DEPTNO IN (10,30);

--6
SELECT CONCAT(ENAME,DEPTNO) FROM EMP;
--7
SELECT * FROM EMP WHERE MGR IS NULL;
--8
SELECT ENAME,DEPTNO,HIREDATE FROM EMP WHERE HIREDATE='01-JAN-1981' AND HIREDATE='31-MAR-1983' ORDER BY HIREDATE;
--9
SELECT * FROM EMP WHERE REGEXP_LIKE(JOB,'AGE');
--11
SELECT * FROM EMP WHERE ENAME LIKE 'A%S' or ((ENAME LIKE '_N%' or ENAME LIKE '__N%') AND (ENAME LIKE '%N' or ENAME LIKE '%S'));
SELECT * FROM EMP WHERE REGEXP_LIKE(ENAME,'^A.*S$|^..?N.*[NS]$');

--12
SELECT * FROM EMP WHERE REGEXP_LIKE(ENAME,'_');


--Group functions
--1
SELECT DEPTNO,MAX(SAL) Maximum,MIN(SAL),SUM(SAL),AVG(SAL) FROM EMP GROUP BY DEPTNO ;
--2
SELECT DEPTNO,count(MGR) Total_Number_of_Managers FROM EMP GROUP BY DEPTNO;
--3
SELECT DEPTNO,SUM(SAL) FROM EMP WHERE JOB !='MANAGER' GROUP BY DEPTNO HAVING SUM(SAL)>20000;



-- For PPT date function
select * from emp;
select * from emp where hiredate>'16-Dec-81';
select * from emp where hiredate>'16-Dec-81 10:00:00';
desc emp;


















