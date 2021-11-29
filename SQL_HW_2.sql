-- ������� ������� employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
create table employees(
id serial primary key,
employee_name varchar(50) not null
);


-- ��������� ������� employee 70 ��������
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

	
-- ��������
select * from employees;


--������� ������� salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary(
id serial primary key,
monthly_salary int not null
);


-- ��������� ������� salary 16 ��������
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

	
-- ��������
select * from salary;


--������� ������� employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);


-- ��������� ������� employee_salary 40 ��������:
--- � 10 ����� �� 40 �������� �������������� employee_id
insert into employee_salary(employee_id, salary_id)
values (1, 16),
		(2, 15),
		(3, 14),
		(4, 13),
		(5, 12),
		(6, 11),
		(7, 10),
		(8, 9),
		(9, 8),
		(10, 7),
		(11, 6),
		(12, 5),
		(13, 4),
		(14, 3),
		(15, 2),
		(16, 1),
		(17, 1),
		(18, 2),
		(19, 3),
		(20, 4),
		(21, 5),
		(22, 6),
		(23, 7),
		(24, 8),
		(25, 9),
		(26, 10),
		(27, 11),
		(28, 12),
		(29, 13),
		(30, 14),
		(71, 15),
		(72, 16),
		(73, 17),
		(74, 18),
		(75, 19),
		(76, 20),
		(77, 19),
		(78, 18),
		(79, 17),
		(80, 16);


-- ��������
select * from employee_salary;


-- ������� ������� roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int unique not null
);


-- �������� ��� ������ role_name � int �� varchar(30)
alter table roles
alter column role_name type varchar(30);


-- ��������� ������� roles 20 ��������
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


-- ��������
select * from roles;


-- ������� ������� roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);

-- ��������� ������� roles_employee 40 ��������
insert into roles_employee(employee_id, role_id)
values (1, 1),
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
		(2, 5);

	
-- ��������
select * from roles_employee;


-- ���������� ������ ���� ��������� ������
SELECT * FROM pg_catalog.pg_tables
where tableowner = 'user_24_49';
