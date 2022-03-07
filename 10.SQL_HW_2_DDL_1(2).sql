--1) Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

--2) Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.
insert into employees (employee_name)
values	('@e_belousov'),
		('@Elena_Parsh'),
		('@VVBrazhnikov'),
		('Egor'),
		('Andrey_Gubchik'),
		('Julia Mr'),
		('@Alekse1_Z'),
		('Anastasiya Kolesnikovich'),
		('Evgeny'),
		('AliakseiL'),
		('Aliaksandr'),
		('Ivan Belik'),
		('@artemnv95'),
		('@Logunov_Sergey'),
		('smyk'),
		('zero'),
		('Mary Zhukovets'),
		('Valentina'),
		('Alexandr Shchybrya'),
		('beka'),
		('Anton Pustovar'),
		('mila'),
		('aperepecha'),
		('nutels_g'),
		('vikaztv'),
		('@OlyaIv'),
		('TT'),
		('TikhonovD'),
		('OlgaMosina'),
		('MaximErmolin'),
		('Ìàêñèì Ìàêàðîâ'),
		('Naumovich Olga'),
		('Ivan Ovcharenko'),
		('Tur Kristina'),
		('@SlinkyTigre'),
		('Svetlana_Strelk'),
		('ßãîëîâè÷ Þëèÿ'),
		('@Olenkaign1'),
		('eganaga'),
		('e_samsonov'),
		('Åëèçàâåòà Øèðÿâñêîâà'),
		('Kvetko Olga'),
		('Alexei R'),
		('@Nic_zwyczajnego'),
		('Nikita Delnov'),
		('Kukushkin Nikita'),
		('Ekaterina Kovalenko'),
		('diana_banevich'),
		('kate_ore'),
		('Ïàâåë Áàë (pbal_tg)'),
		('NatalyKrit'),
		('Anton Trofimenko'),
		('tatyanah21'),
		('dmytroshmidt'),
		('KastorTroy'),
		('Anna krasner'),
		('Michael_K'),
		('xxxxx'),
		('plaxoff'),
		('amhhhhv'),
		('Nikolay_kud'),
		('d.nevedomyi'),
		('Tatsiana Mi'),
		('Àíàñòàñèÿ Êîâàëåâà'),
		('Öõîâðåáîâà Ìàäèíà'),
		('@Maryna_Shpak'),
		('peterMarkelov'),
		('Luba Nemnozhko'),
		('ViacheslavYasynetskyi'),
		('Valentina');
		
--3) Ñîçäàòü òàáëèöó salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary_1 (
	id serial primary key,
	monthly_salary int not null
);

--4) Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500
insert into salary_1 (monthly_salary)
values	(1000),
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
		(2400),
		(2500);

--5) Ñîçäàòü òàáëèöó employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	emploee_id int unique not null, 
	salary_id int not null 
);

--6) Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè:
--- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id
insert into employee_salary (emploee_id, salary_id)
values	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(71, 55),
		(72, 19),
		(73, 15),
		(74, 14),
		(75, 18),
		(76, 6),
		(77, 33),
		(78, 45),
		(79, 29),
		(80, 9),
		(36, 44),
		(9, 11),
		(17, 17),
		(18, 20),
		(19, 19),
		(20, 34),
		(27, 39),
		(48, 34),
		(66, 51),
		(38, 67),
		(46, 61),
		(49, 60),
		(50, 41),
		(51, 47),
		(62, 50),
		(53, 1),
		(54, 1),
		(55, 1),
		(69, 12);
	

--7)  Ñîçäàòü òàáëèöó roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles_1 (
	id serial primary key,
	role_name varchar (30) unique not null
);

--8) Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)
--9) Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè:
insert into roles_1 ( role_name)
values	('Junior Python developer'),
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
	
--10) Ñîçäàòü òàáëèöó roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
--- role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)
create table roles_employee_1 (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles_1 (id)
);

--11)  Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè:
insert into roles_employee_1 (employee_id, role_id)
values	(1, 2),
		(2, 4),
		(3, 9),
		(4, 13),
		(5, 4),
		(6, 2),
		(7, 9),
		(8, 13),
		(9, 3),
		(10, 4),
		(11, 10),
		(12, 19),
		(13, 18),
		(14, 17),
		(15, 16),
		(16, 15),
		(17, 14),
		(18, 13),
		(19, 12),
		(20, 11),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 15),
		(30, 11),
		(31, 10),
		(32, 9),
		(33, 8),
		(34, 7),
		(35, 6),
		(36, 5),
		(37, 4),
		(38, 3),
		(39, 2),
		(40, 1);
		
