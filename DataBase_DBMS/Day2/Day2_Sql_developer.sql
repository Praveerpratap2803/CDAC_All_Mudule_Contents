
--Practise

--Concatenation
select 'Hello' || 'Hi ' || 'Praveer ' || ename good from emp;--only single quotes
select concat(ename,empno) from emp;
select distinct job from emp;--o/p like a set
select * from emp;
select * from emp order by ename desc;
--group by
select job,count(sal) from emp group by job;
select deptno,job,count(sal) from emp where job='ANALYST' group by deptno,job;
select deptno,count(job) from emp where job='ANALYST' group by deptno;
select mgr,count(mgr) from emp where job='MANAGER' group by mgr; 

--Single row function
--number function
select abs(-9) from dual;
select sqrt(9) from dual;
select round(9.2323,2) from dual;
--string function
--Date function
select add_months(sysdate,4) from dual;
select next_day(sysdate,'monday') from dual;
select current_date from dual; 
select current_timestamp from dual;

--Conversion of data type
select to_char(sysdate,'dd/mm/yyyy') from dual;
select to_number('123234','1,21,212') from dual;
select to_date('03/10/2023','dd/mm/yyyy') from dual;


--Assignment 2

--Practise DQL queries
--1
select * from emp where sal>1500 and job='MANAGER';
--2
select * from emp where sal>1200 and sal<2000;
--3
select * from emp where sal in (1600,800,1900);
--4
 select * from emp where ename like '%R_';
--5
select * from emp where ename like 'A%N';

--Q2

--1
select * from emp where sal>1250 and deptno=30;
--2
select * from emp where sal>=1250 and sal<=3000;
--3
select * from emp where sal>1250 and sal<3000;
--4
select * from emp where sal in (3000,1250,2500);
--5
select * from emp where ename='SMITH';
--6
select * from emp where ename like 'S%';
select * from emp where regexp_like(ename,'^S');
--7
select * from emp where ename like '%S';
select * from emp where regexp_like(ename,'S$');
--8
select * from emp where ename like '.I%';
select * from emp where regexp_like(ename,'^.T');
--9
select * from emp where ename like 'A%L%N';
select * from emp where regexp_like(ename,'^A.*L.*N$');
--10
select * from emp where ename like 'A_B%P_';
select * from emp where regexp_like(ename,'^A.B.*P.$');
--11
select * from emp where ename like 'A%' or ename like 'S%' or ename like 'W%';
select * from emp where regexp_like(ename,'^[ASW]');

--practise aggregate function
--12
select job, max(sal),min(sal) from emp group by job;
--13
select count(*) from emp where comm is null;
--14
select sum(sal) from emp where deptno=10;
--15
select deptno,job,max(sal),avg(sal) from emp group by deptno,job order by deptno;
--16
select deptno,max(sal) from emp group by deptno having deptno>15 order by deptno;
--17
select deptno,sum(sal) from emp group by deptno having sum(sal)>3000;

--18
select deptno from emp group by deptno having count(*)>5;
--19
 select job,count(sal) from emp where sal>2000 group by job;
--20
select lower(ename) from emp;
--21
select rpad(ename,15,' '),rpad(job,15,' ') from emp;
--22
select mgr,max(sal),min(sal),avg(sal) from emp group by mgr;
--23
select sum(sal+nvl(comm,0)) total_salary,avg(sal+nvl(comm,0)) avg_salary from emp where sal>2000 and deptno in (10,20);
--24
select * from emp where extract(year from hiredate)=1980 and extract(month from hiredate)=8 and sal>1500 and sal<2500;
--25
select * from emp where extract(month from hiredate)=5 and extract(month from hiredate)=8 and extract(month from hiredate)=12;
--26
select ename,to_char(hiredate,'dd/mm/yy') from emp where job='CLERK' and comm is not null;
--27
select concat(substr(ename,3,5),substr(job,length(job)-1,length(job))),empno,ename,job from emp;
--28
select to_char(nvl(comm,0),'$9,99,999') from emp where regexp_like(ename,'^A.*N$');
--29

--30









