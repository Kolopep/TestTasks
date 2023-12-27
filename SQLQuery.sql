use TestTaskDataBase

/* 1. Вывести менеджеров у которых имеется номер телефона */
select Manager.FullName from Manager where PhoneNumber is not null;

/* 2. Вывести кол-во продаж за 20 июня 2021 */
select count(*) as 'Sell Count' from Sell where year(Date) = 2021 and month(Date) = 6 and day(Date)  = 20;

/* 3. Вывести среднюю сумму продажи с товаром 'Фанера' */
select round(avg([Sum]), 2) as 'Average Sell Sum' from Sell inner join Product on Sell.ProductId = Product.Id where Product.Name like N'%Фанера%';

/* 4. Вывести фамилии менеджеров и общую сумму продаж для каждого с товаром 'ОСБ' */
select FullName, sum(Sell.Sum) as 'Sum' from Sell inner join Product on Sell.ProductId = Product.Id inner join Manager on Sell.ManagerId = Manager.Id where Product.Name like N'%ОСБ%' group by Manager.FullName;

/* 5. Вывести менеджера и товар, который продали 22 августа 2021 */
select FullName, Product.Name, [Sum] from Sell inner join Product on Sell.ProductId = Product.Id inner join Manager on Sell.ManagerId = Manager.Id where year(Date) = 2021 and month(Date) = 6 and day(Date)  = 20;

/* 6. Вывести все товары, у которых в названии имеется 'Фанера' и цена не ниже 1750 */
select distinct Product.Name, Product.Cost, Product.Volume from Sell inner join Product on Sell.ProductId = Product.Id where Product.Name like N'%Фанера%' and Product.Cost > 1750;

/* 7. Вывести историю продаж товаров, группируя по месяцу продажи и наименованию товара */
select Manager.FullName, Product.Name,[Sum], Date from Sell inner join Product on Sell.ProductId = Product.Id inner join Manager on Sell.ManagerId = Manager.Id  order by month(Date), Product.Name;

