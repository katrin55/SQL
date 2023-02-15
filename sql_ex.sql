-- Схема БД состоит из четырех таблиц:
-- Product(maker, model, type)
-- PC(code, model, speed, ram, hd, cd, price)
-- Laptop(code, model, speed, ram, hd, price, screen)
-- Printer(code, model, color, type, price)
-- Таблица Product представляет производителя (maker), номер модели (model) и тип ('PC' - ПК, 'Laptop' - ПК-блокнот или 'Printer' - принтер).
-- Предполагается, что номера моделей в таблице Product уникальны для всех производителей и типов продуктов. 
-- В таблице PC для каждого ПК, однозначно определяемого уникальным кодом – code, указаны модель – model (внешний ключ к таблице Product), скорость - speed (процессора в мегагерцах), объем памяти - ram (в мегабайтах), размер диска - hd (в гигабайтах), скорость считывающего устройства - cd (например, '4x') и цена - price (в долларах). 
-- Таблица Laptop аналогична таблице РС за исключением того, что вместо скорости CD содержит размер экрана -screen (в дюймах).
-- В таблице Printer для каждой модели принтера указывается, является ли он цветным - color ('y', если цветной), тип принтера - type (лазерный – 'Laser', струйный – 'Jet' или матричный – 'Matrix') и цена - price.


-- 1) Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd.

select model, speed, hd from PC where price < 500;

-- 2) Найдите производителей принтеров. Вывести: maker.

select distinct maker from product where type = 'Printer';

-- 3) Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

select model,ram,screen from Laptop where price > 1000;

-- 4) Найдите все записи таблицы Printer для цветных принтеров.

select * from Printer where color = 'y'; 

-- 5) Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

select model, speed, hd from PC where (cd = '12x' or cd = '24x') and price < 600;

-- 6) Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

select distinct maker, speed from product join laptop on product.model = laptop.model 
where laptop.hd >= 10;

-- 7) Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

select distinct PC.model, price from pc
join product on PC.model = Product.model where maker = 'B'
union
select distinct Laptop.model, price from Laptop 
join  product on Laptop.model = Product.model where maker = 'B'
union
select distinct Printer.model, price from Printer
join product on Printer.model = Product.model where maker = 'B';

-- 8) Найдите производителя, выпускающего ПК, но не ПК-блокноты.

select maker from product where type = 'pc'
EXCEPT
select maker from product where type = 'laptop';

-- 9) Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker.

select distinct maker from product 
join pc on product.model = pc.model where speed >= 450;

-- 10) Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price.

select model, price from printer where price = (select max(price) from printer);

-- 11) Найдите среднюю скорость ПК.

select avg(speed) from pc;

-- 12) Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

select avg(speed) from laptop where price > 1000;

-- 13) Найдите среднюю скорость ПК, выпущенных производителем A.

select avg(speed) from pc 
join product on pc.model = product .model where maker = 'A';

-- 14) Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

select ships.class, ships.name, classes.country from ships join classes on ships.class = classes.class 
where numGuns >= 10;

-- 15) Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

select hd from pc
GROUP BY hd
having count(hd)>1;

-- 16) Найдите пары моделей PC, имеющих одинаковые скорость и RAM.
-- В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

select distinct p1.model, p2.model, p1.speed, p1.ram from pc p1, pc p2
where p1.speed = p2.speed and p1.ram = p2.ram and p1.model > p2.model;
