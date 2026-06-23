create database if not exists m3_c0326g1;
use m3_c0326g1;
create table james(
 username varchar(50) primary key,
 password varchar(50)
);
create table classes(
id int primary key auto_increment,
name varchar(50)
);
create table students(
id int primary key auto_increment,
name varchar(50),
birthday date,
gender boolean,
email varchar(50),
score float,
username varchar(50),
class_id int,
foreign key(username) references james(username),
foreign key(class_id) references classes(id)
);
create table phone_number(
phone_number varchar(50) primary key,
student_id int,
foreign key(student_id) references students(id)
);
create table instructors(
id int primary key auto_increment,
name varchar(50),
birthday date,
salary double
);

create table instructors_classes(
instructor_id int,
class_id int,
primary key (instructor_id,class_id),
start_time date,
end_time date,
foreign key(instructor_id) references instructors(id),
foreign key(class_id) references classes(id)
)