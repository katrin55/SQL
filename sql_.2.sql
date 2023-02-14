-- 1) ������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

-- 2) ��������� ������� employee 70 ��������.

insert into employees (id, employee_name)
values (default, '������ ����'),
	   (default, '������� ����������'),
	   (default, '������� ����'),
	   (default, '������ ������'),
	   (default, '������� ����������'),
	   (default, '�������� ������'),
	   (default, '������ �����'),
	   (default, '�������� ����������'),
	   (default, '����� ����'),
	   (default, '������� �����'),
	   (default, '������� �������'),
	   (default, '�������� ����'),
	   (default, '���������� ���������'),	
	   (default, '��������� �����'),	
	   (default, '������� �����'),	
	   (default, '������ ����'),	
	   (default, '��������� �������'),	
	   (default, '��������� ���������'),	
	   (default, '���������� ��������'),	
	   (default, '������� ����'),
	   (default, '������� �����'),	
	   (default, '��������� �����'),	
	   (default, '������� ��������'),	
	   (default, '�������� ��������'),	
	   (default, '������� ��������'),	
	   (default, '������������ ����'),	
	   (default, '�������� �����'),	
	   (default, '����� �����'),	
	   (default, '���������� ����'),	
	   (default, '������������� ����'),
	   (default, '��������� ��������'),	
	   (default, '������ ����'),	
	   (default, '�������� ���������'),	
	   (default, '������������ ����'),	
	   (default, '������ ��������'),	
	   (default, '������ ������'),	
	   (default, '������ �����'),	
	   (default, '��������� �����'),	
	   (default, '�������� ��������'),	
	   (default, '������� ������'),	
	   (default, '������� �������'),	
	   (default, '���� �����'),	
	   (default, '����� �������'),	
	   (default, '������� �������'),	
	   (default, '����� ���������'),	
	   (default, '����� ������'),	
	   (default, '�������� ������'),
	   (default, '����� ���������'),
	   (default, '��������� ������'),
	   (default, '������ �������'),
	   (default, '��������� ���������'),
	   (default, '������� ������'),	
	   (default, '������� �������'),
	   (default, '����� ���������'),
	   (default, '������� ������'),
	   (default, '������� ���������'),
	   (default, '��������� ����'),	
	   (default, '������� �������'),	
	   (default, '������� ����'),
	   (default, '����������� ������'),
	   (default, '�������� ����'),
	   (default, '��������� ������'),
	   (default, '��������� ����'),
	   (default, '�������� �����'),
	   (default, '������� �������'),
	   (default, '������� ��������'),
	   (default, '������ �������'),
	   (default, '������ ������'),
	   (default, '�������� �������'),
	   (default, '������ ��������');
	   
-- 3) ������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
);

-- 4) ��������� ������� salary 15 ��������

insert into salary (id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
	   (default, 1700),
	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400);

-- 5) ������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

 create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

-- 6) �������� ��� ������ role_name � int �� varchar(30)
alter table roles 
alter column role_name type varchar(30);

-- 7) ��������� ������� roles 20 ��������

insert into roles (id, role_name)
values (default, 'Junior Python developer'),
	   (default, 'Middle Python developer'),
	   (default, 'Senior Python developer'),
	   (default, 'Junior Java developer'),
	   (default, 'Middle Java developer'),
	   (default, 'Senior Java developer'),
	   (default, 'Junior JavaScript developer'),
	   (default, 'Middle JavaScript developer'),
	   (default, 'Senior JavaScript developer'),
	   (default, 'Junior Manual QA engineer'),
	   (default, 'Middle Manual QA engineer'),
	   (default, 'Senior Manual QA engineer'),
	   (default, 'Project Manager'),
	   (default, 'Designer'),
	   (default, 'HR'),
	   (default, 'CEO'),
	   (default, 'Sales manager'),
	   (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer');
	   
-- 8) ������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null  

create table employee_salary (
id serial primary key,
id_employee int unique not null,
salary_id int not null
);

ALTER table employee_salary RENAME COLUMN id_employee TO employee_id;
-- 9) ��������� ������� employee_salary 40 ��������. � 10 ����� �� 40 �������� �������������� employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default, 80, 1),
	   (default, 81, 2),
	   (default, 82, 3),
	   (default, 83, 4),
	   (default, 84, 5),
	   (default, 85, 6),
	   (default, 86, 7),
	   (default, 87, 8),
	   (default, 88, 9),
	   (default, 89, 10),
	   (default, 1, 11),
	   (default, 2, 12),
	   (default, 3, 13),
	   (default, 4, 14),
	   (default, 5, 15),
	   (default, 6, 1),
	   (default, 7, 2),
	   (default, 8, 3),
	   (default, 9, 4),
	   (default, 10, 5),
	   (default, 11, 6),
	   (default, 12, 7),
	   (default, 13, 8),
	   (default, 14, 9),
	   (default, 15, 10),
	   (default, 16, 11),
	   (default, 17, 12),
	   (default, 18, 13),
	   (default, 19, 14),
	   (default, 20, 15),
	   (default, 21, 1),
	   (default, 22, 2),
	   (default, 23, 3),
	   (default, 24, 4),
	   (default, 25, 5),
	   (default, 26, 6),
	   (default, 27, 7),
	   (default, 28, 8),
	   (default, 29, 9),
	   (default, 30, 10);
	
-- 10) ������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
	
	 create table roles_employee (
	 id serial primary key,
	 employee_id int not null unique,
	 foreign key (employee_id)
	 references employees(id),
	 role_id int not null,
	 foreign key (role_id)
	 references roles(id)	 
	 );	 
	 
	select * from roles_employee;
	
-- 11)  ��������� ������� roles_employee 40 ��������
	
insert into roles_employee (id, employee_id, role_id)
values (default, 50, 1),
	   (default, 49, 2),
	   (default, 48, 3),
	   (default, 47, 4),
	   (default, 46, 5),
	   (default, 45, 6),
	   (default, 44, 7),
	   (default, 43, 8),
	   (default, 42, 9),
	   (default, 41, 10),
	   (default, 40, 11),
	   (default, 39, 12),
	   (default, 38, 13),
	   (default, 37, 14),
	   (default, 36, 15),
	   (default, 35, 16),
	   (default, 34, 17),
	   (default, 33, 18),
	   (default, 32, 19),
	   (default, 31, 20),
	   (default, 30, 1),
	   (default, 29, 2),
	   (default, 28, 3),
	   (default, 27, 4),
	   (default, 26, 5),
	   (default, 25, 6),
	   (default, 24, 7),
	   (default, 23, 8),
	   (default, 22, 9),
	   (default, 21, 10),
	   (default, 20, 11),
	   (default, 19, 12),
	   (default, 18, 13),
	   (default, 17, 14),
	   (default, 16, 15),
	   (default, 15, 16),
	   (default, 14, 17),
	   (default, 13, 18),
	   (default, 12, 19),
	   (default, 11, 20);
	   
	  select * from roles_employee;