drop procedure if exists pro7;
delimiter $
create procedure pro7(para1 int)
begin
declare flag boolean default false;
select distinct true into flag from emp where deptno = para1;
if flag then
select deptno, ename, job, sal from emp where deptno = para1;
else
select "invalid input";
end if;
end $
delimiter ;