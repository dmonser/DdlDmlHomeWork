create table netology.CUSTOMERS(
    id bigserial primary key,
    "name" varchar(255) not null,
    surname varchar(255) not null,
    age int not null,
    phone_number varchar(15)
);


