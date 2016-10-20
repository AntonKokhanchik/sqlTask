create database university;
use university;

create table cities
(
    city_id int(20) auto_increment,
    city_name varchar(15) not null,
    city_country varchar(15) not null,
    primary key(city_id)
);
create table students
(
    student_id int(20) auto_increment,
    name varchar(15) not null,
    surname varchar(15),
    course tinyint(5),
    gener enum('male','female') not null,
    city_id int(20),
    primary key(student_id),
    foreign key(city_id) references cities(city_id)
);
