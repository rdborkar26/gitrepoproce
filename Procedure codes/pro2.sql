drop procedure if exists pro2;
delimiter $
create procedure pro2()
begin
declare x int default 0;
declare y int;
declare z int;
set x := 200;
set y := 100;
set z := x + y;
select x, y, z;
end $
delimiter ;