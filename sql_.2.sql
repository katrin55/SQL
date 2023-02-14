-- 1) Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

-- 2) Наполнить таблицу employee 70 строками.

insert into employees (id, employee_name)
values (default, 'Иванов Иван'),
	   (default, 'Петрова Александра'),
	   (default, 'Сергеев Петр'),
	   (default, 'Анохин Андрей'),
	   (default, 'Петрова Александра'),
	   (default, 'Гончаров Максим'),
	   (default, 'Панков Антон'),
	   (default, 'Доздрова Александра'),
	   (default, 'Орлов Юрий'),
	   (default, 'Стафеев Игорь'),
	   (default, 'Галухин Алексей'),
	   (default, 'Шевченко Инна'),
	   (default, 'Собашников Александр'),	
	   (default, 'Филимонов Антон'),	
	   (default, 'Анюхова Ирина'),	
	   (default, 'Янкова Юлия'),	
	   (default, 'Максимова Валерия'),	
	   (default, 'Занданова Анастасия'),	
	   (default, 'Московский Анатолий'),	
	   (default, 'Дорофев Иван'),
	   (default, 'Сдакова Елена'),	
	   (default, 'Кузнецова Ольга'),	
	   (default, 'Кулибин Анатолий'),	
	   (default, 'Сметанин Вячеслав'),	
	   (default, 'Иванова Светлана'),	
	   (default, 'Александрова Анна'),	
	   (default, 'Федорова Олеся'),	
	   (default, 'Дыгай Ольга'),	
	   (default, 'Григорьева Юлия'),	
	   (default, 'Твердохлебова Юлия'),
	   (default, 'Самсонова Виктория'),	
	   (default, 'Швецов Илья'),	
	   (default, 'Сидорова Анастасия'),	
	   (default, 'Бурдуковский Юрий'),	
	   (default, 'Машков Владимир'),	
	   (default, 'Усиков Сергей'),	
	   (default, 'Мытыга Павел'),	
	   (default, 'Михайлова Елена'),	
	   (default, 'Савченко Светлана'),	
	   (default, 'Тютрина Марина'),	
	   (default, 'Салихов Марсель'),	
	   (default, 'Гудз Антон'),	
	   (default, 'Жабин Георгий'),	
	   (default, 'Сорокин Евгений'),	
	   (default, 'Селин Александр'),	
	   (default, 'Докиш Михаил'),	
	   (default, 'Касымова Карина'),
	   (default, 'Ктоян Анастасия'),
	   (default, 'Григорьев Максим'),
	   (default, 'Вылков Дмитрий'),
	   (default, 'Татевасян Владислав'),
	   (default, 'Дадонов Максим'),	
	   (default, 'Петухов Алексей'),
	   (default, 'Рыбин Александр'),
	   (default, 'Рябинин Михаил'),
	   (default, 'Булатов Александр'),
	   (default, 'Главецкая Анна'),	
	   (default, 'Коншина Наталья'),	
	   (default, 'Суворов Петр'),
	   (default, 'Бобровников Михаил'),
	   (default, 'Никитина Юлия'),
	   (default, 'Ванчикова Галина'),
	   (default, 'Степанова Алла'),
	   (default, 'Гончаров Антон'),
	   (default, 'Чумаков Алексей'),
	   (default, 'Быстров Алекандр'),
	   (default, 'Чугаев Дмитрий'),
	   (default, 'Кашина Галина'),
	   (default, 'Маринина Наталья'),
	   (default, 'Громов Владимир');
	   
-- 3) Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
);

-- 4) Наполнить таблицу salary 15 строками

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

-- 5) Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

 create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

-- 6) Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);

-- 7) Наполнить таблицу roles 20 строками

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
	   
-- 8) Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null  

create table employee_salary (
id serial primary key,
id_employee int unique not null,
salary_id int not null
);

ALTER table employee_salary RENAME COLUMN id_employee TO employee_id;
-- 9) Наполнить таблицу employee_salary 40 строками. В 10 строк из 40 вставить несуществующие employee_id

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
	
-- 10) Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	
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
	
-- 11)  Наполнить таблицу roles_employee 40 строками
	
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