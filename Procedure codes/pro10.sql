/*drop procedure if exists pro10;
delimiter $
create procedure pro10()
begin
select "Hello World!!";
end $
delimiter ;

drop procedure if exists pro11;
delimiter $
create procedure pro11()
BEGIN
declare x int default 0;
declare y int default 0;
declare z int;
set x := 100;
set y := 200;
set z = x + y;
select x, y, z;
end $
delimiter ;

drop procedure if exists pro12;
delimiter $
create procedure pro12(x int, y int)
BEGIN
declare z int;
set z = x + y;
select x, y, z;
end $
delimiter ;

drop procedure if exists pro13;
delimiter $
create procedure pro13(in x int, in y int, out z int)
BEGIN
set z = x + y;
end $
delimiter ;

drop procedure if exists pro14;
delimiter $
create procedure pro14(para1 int)
BEGIN
declare flag boolean default false;
declare exit handler for 1146 select "table not found";
select true into flag from dept where deptno = para1;
if flag then
select * from dept where deptno = para1;
ELSE
select "Record not found";
end if;
end $
delimiter ;

drop procedure if exists pro15;
delimiter $
create procedure pro15()
BEGIN
declare x int default 10;
create table t1(c1 int);
label : LOOP
		
		if x between 10 and 15 THEN
		select x;
		insert into t1 values(x);
		ELSE
		leave label;
		end if;
		set x := x + 1;
		end loop label;
		select * from t1;
end $
delimiter ;

drop procedure if exists pro16;
delimiter $
create procedure pro16(x int)
BEGIN
declare i int default 1;
drop table  if exists padha;
create table padha(c1 int, c2 int, c3 int);
label: LOOP
insert into padha values(x, i, (x*i));
		if i >= 10 THEN
		leave label;
		end if;
		
		set i := i + 1;
		end loop label;
		select * from padha;
end $
delimiter ;
*/
