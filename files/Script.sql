create table professions(id int, name VARCHAR (255));

insert into professions(id, name)
values (1, 'student'), 
	   (2, 'admin'),
	   (3, 'devops');

insert into professions(id, name)
values (4, 'student2'), 
	   (2, 'admin2'),
	   (3, 'devops2');

truncate professions;

alter table professions 
	alter column id set not null,
	alter column name set not null;

insert into professions(id, name)
values (5, 'student2'), 
	   (6, 'admin2'),
	   (7, 'devops2');

alter table professions 
	add constraint uniq_prod_id unique (id);

insert into professions(id, name)
values (14, 'student3'), 
	   (12, 'admin2'),
	   (13, 'devops5'),
	   (11, 'student2'), 
	   (21, 'admin2'),
	   (97, 'devops2');

create table Persons(
	PersonId int primary key,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	age int check(age>18),
	Prof_id int,
	foreign key (Prof_id) references professions(id)
	);

insert into Persons (PersonId, FirstName, LastName,	age, Prof_id)
	values (1, 'Egor', 'Letov', 22, 6);

select *from persons;

