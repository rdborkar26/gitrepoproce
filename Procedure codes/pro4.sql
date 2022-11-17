drop procedure if exists pro4;
delimiter $
create procedure pro4(in x int, in y int, out z int)
begin
set z = x + y;
end $
delimiter ;