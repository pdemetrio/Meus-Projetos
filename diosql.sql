show databases;
create database if not exists first_example;
use first_example;
CREATE TABLE person(
	person_id smallint unsigned,
	fname varchar(20),
	lname varchar (20),
	gender enum('M','F'),
	birth_date DATE,
	street varchar(30),
	city varchar (20),
	state varchar (20),
	country varchar (20),
	postal_code varchar (20),
    constraint pk_person primary key (person_id)
);
desc person;

create table favorite_food (
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_person_id foreign key (person_id)
    references person (person_id)
);
desc favorite_food;
show databases;
desc information_schema.table_constraints
where CONSTRAINT_SCHEMA = "first_example";

desc person;

