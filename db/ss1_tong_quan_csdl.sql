create database if not exists c0326g1;
use c0326g1;

-- tạo bảng
create table students (
id int primary key auto_increment,
`name` varchar(50),
gender boolean default (false),
age int,
check (age>18)
);
-- thêm dữ liệu
      insert into students(name,gender,age)values('chánh1',true,19);
      insert into students(name,gender,age)values('chánh1',true,17);
      insert into students(name,age)values('chánh1',20);

-- đọc
select * from students;
select * from students where id =1;
select id,name as student_name from students;
-- chỉnh sửa;
update students set name ='chánh3' where id =3;
delete from students where id =3;

alter table students add primary key(id);

drop table students;
drop database c0326g1;

