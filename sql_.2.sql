-- 1) Ñîçäàòü òàáëèöó employees
-- id.serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

-- 2) Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.

insert into employees (id, employee_name)
values (default, 'Èâàíîâ Èâàí'),
	   (default, 'Ïåòðîâà Àëåêñàíäðà'),
	   (default, 'Ñåðãååâ Ïåòð'),
	   (default, 'Àíîõèí Àíäðåé'),
	   (default, 'Ïåòðîâà Àëåêñàíäðà'),
	   (default, 'Ãîí÷àðîâ Ìàêñèì'),
	   (default, 'Ïàíêîâ Àíòîí'),
	   (default, 'Äîçäðîâà Àëåêñàíäðà'),
	   (default, 'Îðëîâ Þðèé'),
	   (default, 'Ñòàôååâ Èãîðü'),
	   (default, 'Ãàëóõèí Àëåêñåé'),
	   (default, 'Øåâ÷åíêî Èííà'),
	   (default, 'Ñîáàøíèêîâ Àëåêñàíäð'),	
	   (default, 'Ôèëèìîíîâ Àíòîí'),	
	   (default, 'Àíþõîâà Èðèíà'),	
	   (default, 'ßíêîâà Þëèÿ'),	
	   (default, 'Ìàêñèìîâà Âàëåðèÿ'),	
	   (default, 'Çàíäàíîâà Àíàñòàñèÿ'),	
	   (default, 'Ìîñêîâñêèé Àíàòîëèé'),	
	   (default, 'Äîðîôåâ Èâàí'),
	   (default, 'Ñäàêîâà Åëåíà'),	
	   (default, 'Êóçíåöîâà Îëüãà'),	
	   (default, 'Êóëèáèí Àíàòîëèé'),	
	   (default, 'Ñìåòàíèí Âÿ÷åñëàâ'),	
	   (default, 'Èâàíîâà Ñâåòëàíà'),	
	   (default, 'Àëåêñàíäðîâà Àííà'),	
	   (default, 'Ôåäîðîâà Îëåñÿ'),	
	   (default, 'Äûãàé Îëüãà'),	
	   (default, 'Ãðèãîðüåâà Þëèÿ'),	
	   (default, 'Òâåðäîõëåáîâà Þëèÿ'),
	   (default, 'Ñàìñîíîâà Âèêòîðèÿ'),	
	   (default, 'Øâåöîâ Èëüÿ'),	
	   (default, 'Ñèäîðîâà Àíàñòàñèÿ'),	
	   (default, 'Áóðäóêîâñêèé Þðèé'),	
	   (default, 'Ìàøêîâ Âëàäèìèð'),	
	   (default, 'Óñèêîâ Ñåðãåé'),	
	   (default, 'Ìûòûãà Ïàâåë'),	
	   (default, 'Ìèõàéëîâà Åëåíà'),	
	   (default, 'Ñàâ÷åíêî Ñâåòëàíà'),	
	   (default, 'Òþòðèíà Ìàðèíà'),	
	   (default, 'Ñàëèõîâ Ìàðñåëü'),	
	   (default, 'Ãóäç Àíòîí'),	
	   (default, 'Æàáèí Ãåîðãèé'),	
	   (default, 'Ñîðîêèí Åâãåíèé'),	
	   (default, 'Ñåëèí Àëåêñàíäð'),	
	   (default, 'Äîêèø Ìèõàèë'),	
	   (default, 'Êàñûìîâà Êàðèíà'),
	   (default, 'Êòîÿí Àíàñòàñèÿ'),
	   (default, 'Ãðèãîðüåâ Ìàêñèì'),
	   (default, 'Âûëêîâ Äìèòðèé'),
	   (default, 'Òàòåâàñÿí Âëàäèñëàâ'),
	   (default, 'Äàäîíîâ Ìàêñèì'),	
	   (default, 'Ïåòóõîâ Àëåêñåé'),
	   (default, 'Ðûáèí Àëåêñàíäð'),
	   (default, 'Ðÿáèíèí Ìèõàèë'),
	   (default, 'Áóëàòîâ Àëåêñàíäð'),
	   (default, 'Ãëàâåöêàÿ Àííà'),	
	   (default, 'Êîíøèíà Íàòàëüÿ'),	
	   (default, 'Ñóâîðîâ Ïåòð'),
	   (default, 'Áîáðîâíèêîâ Ìèõàèë'),
	   (default, 'Íèêèòèíà Þëèÿ'),
	   (default, 'Âàí÷èêîâà Ãàëèíà'),
	   (default, 'Ñòåïàíîâà Àëëà'),
	   (default, 'Ãîí÷àðîâ Àíòîí'),
	   (default, '×óìàêîâ Àëåêñåé'),
	   (default, 'Áûñòðîâ Àëåêàíäð'),
	   (default, '×óãàåâ Äìèòðèé'),
	   (default, 'Êàøèíà Ãàëèíà'),
	   (default, 'Ìàðèíèíà Íàòàëüÿ'),
	   (default, 'Ãðîìîâ Âëàäèìèð');
	   
-- 3) Ñîçäàòü òàáëèöó salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
);

-- 4) Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè

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

-- 5) Ñîçäàòü òàáëèöó roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

 create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

-- 6) Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)
alter table roles 
alter column role_name type varchar(30);

-- 7) Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè

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
	   
-- 8) Ñîçäàòü òàáëèöó employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null  

create table employee_salary (
id serial primary key,
id_employee int unique not null,
salary_id int not null
);

ALTER table employee_salary RENAME COLUMN id_employee TO employee_id;
-- 9) Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè. Â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id

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
	
-- 10) Ñîçäàòü òàáëèöó roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
-- role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)
	
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
	
-- 11)  Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè
	
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
