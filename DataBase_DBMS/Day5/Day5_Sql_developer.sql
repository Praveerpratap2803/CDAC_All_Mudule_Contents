--Class Practise

--Windows Function
select * from emp;
select deptno,count(sal) from emp group by deptno;
select empno,deptno,count(sal) over() from emp;--here the whole table will be divided into  
-- a single window
select empno,deptno,count(sal) over(partition by deptno) from emp;-- here table will be  
-- dividede into window based on deptno  



--PLSQL
create or replace procedure display_i(empnu in number,salval out number)
as
begin
	select sal into salval
	from emp 
	where empno=empnu;
DBMS_OUTPUT.PUT_LINE(salval+5);
end;

variable a NUMBER;
execute display_i(7944,:a);
print a;
