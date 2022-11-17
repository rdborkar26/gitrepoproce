drop procedure if exists pro3;
delimiter $
create procedure pro3(x int, y int)
begin
select x + y;
end $
delimiter ;