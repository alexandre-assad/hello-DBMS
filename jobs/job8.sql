CREATE DATABASE SomeCompany

create table Employees
(
    employee_id int primary key not null,
    first_name varchar(100),
    last_name varchar(100),
    birthdate date ,
    position varchar(100),
    departement_id int not null,
    foreign key(departement_id) references Departements(departement_id)
);

create table Departements
(
    departement_id int primary key not null,
    departement_name varchar(100),
    departement_head int not null,
    location varchar(100),
    foreign key(departement_head) references Employees(employee_id)
);

insert into Employees values 
(1,'John','Doe',1990-05-15,'Software Engineer',1),
(2,'Jane','Smith',1985-08-20,'Project Manager',2),
(3,'Mike','Johnson',1992-03-10,'Data Analyst',1),
(4,'Emily','Brown',1988-12-03,'Ux Designer',1),
(5,'Alex','Williams',1995-06-28,'Software Developper',1),
(6,'Sarah','Miller',1987-09-18,'HR Specialist',3);

select concat(first_name, ' ',last_name) name, position from Employees ;

update Employees set position = 'Data Scientist' where employee_id = 3 ; 

delete from Employees where employee_id = 5 ;


insert into Departements values 
(1,'IT',1,'Headquarters'),
(2,'Project Management',2,'Branch Office West'),
(3,'Human Ressources',6,'Branch Office East')

select concat(e.first_name, ' ',e.last_name) name, d.departement_name, d.location from Employees e inner join Departements d on e.departement_id = d.departement_id ;

#Either you wanted 3 querys with each departement
select concat(e.first_name, ' ',e.last_name) name, d.departement_name 
from Employees e 
inner join Departements d on e.departement_id = d.departement_id 
where d.departement_name = 'IT';

select concat(e.first_name, ' ',e.last_name) name, d.departement_name 
from Employees e 
inner join Departements d on e.departement_id = d.departement_id 
where d.departement_name = 'Project Management';

select concat(e.first_name, ' ',e.last_name) name, d.departement_name 
from Employees e 
inner join Departements d on e.departement_id = d.departement_id 
where d.departement_name = 'Human Ressources';

# Or you wanted an order by query
select concat(e.first_name, ' ',e.last_name) name, d.departement_name 
from Employees e 
inner join Departements d on e.departement_id = d.departement_id 
order by d.departement_name

select d.departement_name, concat(e.first_name, ' ',e.last_name) head_name 
from Departements d 
inner join Employees e on d.departement_head = e.employee_id 
order by d.departement_name asc;

insert into Departements values 
(4,'Marketing',7,'Branch Office North');

insert into Employees values 
(7,'John','James',1990-01-11,'Marketing Director',4),
(8,'Billie','Black',1982-01-21,'Marketing Project manager',4);


create table Project
(
    project_id int primary key not null,
    project_name varchar(100),
    start_date date,
    end_date date,
    departement_id int not null,
    foreign key(departement_id) references Departements(departement_id)
);

insert into Project values 
(1,'Software developping',01-01-2018,05-08-2018,1),
(2,'Branch creation',01-06-2020,01-06-2022,2),
(3,'Application',07-03-2019,05-05-2019,1),
(4,'Marketing director recruitement',01-06-2020,03-08-2020,3),
(5,'Fundraising compain',01-12-2020,01-12-2022,4);