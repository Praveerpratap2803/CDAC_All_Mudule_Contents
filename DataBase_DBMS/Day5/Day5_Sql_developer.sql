--Class Practise

--Windows Function
select * from emp;
select deptno,count(sal) from emp group by deptno;
select empno,deptno,count(sal) over() from emp;--here the whole table will be divided into  
-- a single window
select empno,deptno,count(sal) over(partition by deptno) from emp;-- here table will be  
-- dividede into window based on deptno  



