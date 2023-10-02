--Practise
--nested query
--simple nested query
select * from emp;
select * from emp where sal between (select sal from emp where ename='SMITH') and (select sal from emp where ename='MILLER') ;
--corelated nested query
select * from emp e1 where sal >(select avg(sal) from emp e2 where e2.deptno=e1.deptno);
select deptno,avg(sal) from emp group by deptno;

select * from emp e1 where sal>( select avg(sal) from emp e2 where e1.mgr=e2.mgr);

--Exists, not exists
select * from emp;
select * from emp e1 where exists( select * from emp e2 where e1.empno=e2.mgr);

--Joints
--inner joints
select * from emp;
select * from dept;
select empno,ename,emp.deptno e_deptno,dept.deptno d_deptno,dname from emp ,dept  where emp.deptno=dept.deptno;



--create table using existing table
create table demo_2 as select * from demo_1 where 1=2;
create table demo_3 as select * from demo_1;

select * from demo_2;
select * from demo_3;
--case
select ename ,case when comm is null then 'need improvement' when comm >0 then 'good' end from emp;
--view
select * from emp;
create view emp11 as select * from emp where deptno=10;
insert into emp11 values(1,'a','j',10,'01-02-23',100,10,10);
insert into emp11 values(1,'a','j',10,'01-02-23',100,10,20);
select * from emp12;
desc emp;
create view emp12 as select * from emp where deptno=20 with check option;
insert into emp12 values(1,'a','j',10,'01-02-23',100,10,20);
create view emp13 as select * from emp where deptno=20 with read only;
insert into emp13 values(1,'a','j',10,'01-02-23',100,10,20);
select * from emp;

--top n analysis
select rownum,empno,ename,ename,sal from (select * from emp order by sal desc) where rownum<5; 
delete from emp where ename='a';
--union,intersection,minus
select * from emp union select * from emp12;
select * from emp INTERSECT select * from emp12;
select * from emp minus select * from emp12;
delete from emp where empno=1;


