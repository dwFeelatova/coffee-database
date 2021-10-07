create schema test;

create table test.cities (
    id serial primary key,
    city_name text not null
)
;

create table test.coffee_shops (
    id serial primary key,
    city_id int not null,
    coffee_shop_name text not null,
    foreign key (city_id) references test.cities (id)
)
;

create table test.recruting (
    id serial primary key,
    coffee_shop_id int not null,
    recruting_quota int not null,
    check (recruting_quota >= 0),
    foreign key (coffee_shop_id) references test.coffee_shops(id)
)
;

create table test.positions (
    id serial primary key,
    position_name text not null
)
;

create table test.employees (
    id serial primary key,
    birthdate date not null,
    email text not null,
    employee_date date not null,
    fire_date date
)
;

create table test.employees_positions_coffee_shops (
    id serial primary key,
    employee_id int not null,
    coffee_shop_id int not null,
    position_id int not null,
    date_start date not null,
    date_end date,
    foreign key (employee_id) references test.employees(id),
    foreign key (coffee_shop_id) references test.coffee_shops(id),
    foreign key (position_id) references test.positions(id)
)
;