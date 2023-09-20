create schema netology;

create table netology.PERSON(
    first_name varchar(255) not null ,
    surname varchar(255) not null ,
    age int not null ,
    phone_number varchar(20),
    city_of_living varchar(255) default 'MOSCOW',
    primary key (first_name, surname, age)
);
