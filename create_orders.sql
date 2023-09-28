create table netology.ORDERS(
    id bigserial primary key,
    "date" varchar(255),
    customer_id int not null references customers (id),
    product_name varchar(255) not null,
    amount int not null
);


