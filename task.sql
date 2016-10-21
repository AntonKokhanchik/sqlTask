create database university;
use university;

create table cities
(
    city_id smallint auto_increment,
    city_name varchar(15) not null,
    city_country varchar(15) not null,
    primary key(city_id)
);
create table students
(
    student_id smallint auto_increment,
    name varchar(15) not null,
    surname varchar(15) not null,
    course tinyint(1) not null,
    gender enum('male','female') not null,
    city_id smallint not null,
    primary key(student_id),
    foreign key(city_id) references cities(city_id)
);


insert into cities (city_name, city_country) values
    ('Erfurt', 'Germany'),
    ('San-Francisco', 'USA'),
    ('Capetown', 'South Africa'),
    ('Beijing(Pekin)', 'China'),
    ('Essen', 'Germany'),
    ('Hamburg', 'Germany'),
    ('Atlanta', 'USA');

insert into students (name, surname, course, gender, city_id) values
    ('Mark', 'Schmidt', '3','male', '1'),
    ('Helen', 'Hunt', '2', 'female', '2'),
    ('Matumba', 'Zuko', '4', 'male', '3'),
    ('Rin', 'Kupo', '4', 'female','3'),
    ('Zhen', 'Chi Bao', '2', 'male', '4'),
    ('Peter', 'Zimmer', '3', 'male', '5'),
    ('Hanz', 'Mueller', '4', 'male', '6'),
    ('Alisa', 'Kepler', '4', 'female', '1'),
    ('Anna', 'Madavie', '2', 'female', '7');

#1)
select max(student_id) from students;
#2)в конце пишет сколько строк выбрано
select course from students where gender='female';
#3)забавно получилось, так и оставлю
select count(students.name), cities.city_country
from students, cities where students.city_id=cities.city_id and city_country='Germany';
