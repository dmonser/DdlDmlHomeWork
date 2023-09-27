create table netology.films(
    id bigserial primary key,
    title varchar(255) not null,
    length int not null,
    rating int not null,
    release_year int not null
);

insert into netology.films (title, "length", rating, release_year)
values ('Batman', 120, 8, 2021),
        ('Spider-Man', 130, 7, 2021),
        ('Чебурашка', 120, 9, 2023);

select title, length 
from netology.films 
where "length" <= (select avg("length") from netology.films);

insert into netology.films (title, "length", rating, release_year)
values ('Iron man', 120, 8, 2023);

select rating, count(*)
from netology.films
group by rating
order by rating desc;

select rating, avg(length) as avg_length
from netology.films
where release_year = 2023
group by rating
having avg(length) < 120;

insert into netology.films (title, "length", rating, release_year)
values ('Superman', 115, 8, 2023);
