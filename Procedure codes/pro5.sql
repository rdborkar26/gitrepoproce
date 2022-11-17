drop procedure if exists pro5;
delimiter $
create procedure pro5(x int, y int)
begin
select deptno, ename, f1(x,y), job, sal, hiredate from emp where deptno = f1(x,y);
end $
delimiter ;
