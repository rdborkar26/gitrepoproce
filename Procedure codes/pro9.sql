drop procedure if exists pro9;
delimiter $
create procedure pro9(p1 int)
begin
declare flag boolean default false;
select distinct true from dept where deptno = p1;
if p1 > 50 then
	if flag then
		delete from dept where deptno = p1;
		select * from dept;
		select "Record deleted"
	end IF;
else
	select "Access denied"
end if;
end $
delimiter ;