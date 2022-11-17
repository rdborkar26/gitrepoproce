drop procedure if exists pro8;
delimiter $
create procedure pro8(p1 int, p2 varchar(30), p3 varchar(30),p4 varchar(30), p5 varchar(30))
begin
if p1 >= 0 and p1 <= 100 then
insert into dept values(p1, p2, p3, p4, p5);
table dept;
ELSE
SELECT "out of bounds";
end IF;
end $
delimiter ;