drop procedure if exists pro6;
delimiter $
create procedure pro6(para1 varchar(20))
begin
select deptno, ename, job, sal, hiredate from emp where job = para1;
end $
delimiter ;