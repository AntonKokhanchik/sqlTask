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
    gener enum('male','female') not null,
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
