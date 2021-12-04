-- Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values ('Dorothy Simmons'),
		('Mario Baker'),
		('William Wheeler'),
		('John Williams'),
		('Paul Howell'),
		('Paula Robinson'),
		('Virginia Johnson'),
		('Allen Daniel'),
		('Mary Haynes'),
		('Richard Rogers'),
		('Jesus Chavez'),
		('Regina Jones'),
		('Jesse McCoy'),
		('Roy Myers'),
		('Michael Lopez'),
		('Clara Gonzales'),
		('Robert Robinson'),
		('Caroline Jones'),
		('Thomas Martinez'),
		('Mary Brooks'),
		('Barbara Holloway'),
		('Jeffrey Morton'),
		('Robert Carroll'),
		('Timothy Cook'),
		('Jay Rodriquez'),
		('Rachel Evans'),
		('Andrew Wallace'),
		('Barbara Garcia'),
		('James Miles'),
		('Katherine Gordon'),
		('David Lane'),
		('Armando Kelley'),
		('Daryl Bryant'),
		('Melissa Evans'),
		('Raul Moore'),
		('Heather Stone'),
		('Nelson Fitzgerald'),
		('Ruby Wood'),
		('Freddie Bryant'),
		('Scott Green'),
		('Rebecca Romero'),
		('Amber Meyer'),
		('Josephine Sandoval'),
		('Kathleen Harris'),
		('James Henderson'),
		('Mary Wells'),
		('Alma Jones'),
		('Helen Miller'),
		('Judy Patton'),
		('Ashley Evans'),
		('John Hamilton'),
		('Charles Lane'),
		('Carl Powell'),
		('Anthony Cox'),
		('Tonya Franklin'),
		('Stephen Jackson'),
		('Edward Martin'),
		('Lois Smith'),
		('Maureen Ingram'),
		('Freddie Baker'),
		('Alice Powell'),
		('Mary Fuller'),
		('Lois Gibbs'),
		('Theresa Hayes'),
		('Amy Myers'),
		('Charles Williams'),
		('Thomas Francis'),
		('Stephen Henry'),
		('Cynthia Cox'),
		('Joyce Wilson');

-- Проверка
select * from employees;

-- Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary(
id serial primary key,
monthly_salary int not null
);

-- Наполнить таблицу salary 16 строками
insert into salary(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2300),
		(2400),
		(2500);

-- Проверка
select * from salary;

-- Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);

-- Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (30, 16),
		(29, 15),
		(28, 14),
		(27, 13),
		(26, 12),
		(25, 11),
		(24, 10),
		(23, 9),
		(22, 8),
		(21, 7),
		(20, 6),
		(19, 5),
		(18, 4),
		(17, 3),
		(16, 2),
		(15, 1),
		(14, 17),
		(13, 2),
		(12, 3),
		(11, 4),
		(10, 5),
		(9, 6),
		(8, 7),
		(7, 8),
		(6, 9),
		(5, 10),
		(4, 11),
		(3, 12),
		(2, 13),
		(1, 14),
		(71, 15),
		(72, 16),
		(73, 17),
		(74, 1),
		(75, 2),
		(76, 3),
		(77, 4),
		(78, 5),
		(79, 17),
		(80, 16);

-- Проверка
select * from employee_salary;

-- Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int unique not null
);

-- Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

-- Проверка
select * from roles;

-- Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);

-- Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (2, 1),
		(3, 2),
		(5, 3),
		(7, 4),
		(9, 5),
		(11, 6),
		(13, 7),
		(15, 8),
		(17, 9),
		(19, 10),
		(21, 11),
		(23, 12),
		(25, 13),
		(27, 14),
		(29, 15),
		(31, 16),
		(33, 17),
		(35, 18),
		(37, 19),
		(39, 20),
		(40, 20),
		(38, 19),
		(36, 18),
		(34, 17),
		(32, 16),
		(30, 15),
		(28, 14),
		(26, 13),
		(24, 12),
		(22, 11),
		(20, 9),
		(18, 8),
		(16, 7),
		(14, 6),
		(12, 5),
		(10, 4),
		(8, 3),
		(6, 2),
		(4, 1),
		(1, 5);

-- Проверка
select * from roles_employee;

-- Проверила список всех созданных таблиц
SELECT * FROM pg_catalog.pg_tables
where tableowner = 'user_24_49';
