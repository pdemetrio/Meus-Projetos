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
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where CONSTRAINT_SCHEMA = "first_example";

desc person;

insert into person values ('5', 'Maria', 'Graças', 'F', '1959-05-02', 'rua tal', 'Santo Andre', 'SP', 'Brasil', '09172-570'),
						  ('1', 'Paulo', 'Demetrio', 'M', '1982-11-26', 'rua Manuel', 'Santo Andre', 'SP', 'Brasil', '09172-730'),
                          ('2', 'Meire', 'Oliveira', 'F', '1986-01-19', 'rua Manuel', 'Santo Andre', 'SP', 'Brasil', '09172-730'),
                          ('4', 'Milena', 'Dantas', 'F', '2019-11-29', 'rua Manuel', 'Santo Andre', 'SP', 'Brasil', '09172-730');
select * from person;

delete from person where person_id = 3;

desc favorite_food;

insert into favorite_food values (1,'Pizza'),
                                 (2, 'Strogonoff'),
                                 (4, 'Salsicha'),
                                 (5, 'Feijoada');
								
select * from favorite_food;
                                   