select * from car_sales

select count(car_name) from car_sales where price <20000

select customer_name from car_sales where manufracturing_date between '2021-01-01' and '2023-12-31' and price >22000 order by car_sales ASC limit 10

select customer_id,customer_name from car_sales where customer_name like 'Richard' order by car_sales ASC limit 10

select max(price),min(price),count (price), avg (price) from car_sales where car_name='Ford Mustang'

select avg(miles_driven) from car_sales where state ='Montana'

select sum(price) as "Total price of car sales in New Crystal " from car_sales where city ='New Crystal'

select price from car_sales where company_name like '*LLC' order by car_sales ASC limit 15

select count(car_name) from car_sales where car_name='Ford Mustang'

select customer_name,car_name from car_sales where car_name='Ford Mustang' order by car_sales ASC limit 7

select customer_name,car_name from car_sales where car_name='Tesla Model 3' and miles_driven >25000 order by car_sales ASC limit 7

select max(price) from car_sales where city ='Ericaport'

select * from car_sales;

select customer_name,car_name,miles_driven from car_sales 
group by customer_name,car_name,car_sales,miles_driven 
having car_name='Tesla Model 3' and miles_driven >25000 
order by car_sales DESC limit 7;

select * , CASE
             WHEN miles_driven < 30000 THEN 'tier 1'
             WHEN miles_driven > 80000 then 'tier 2'
             ELSE 'tier bleh'
             END  As "Car quality"
From car_sales where availability = true
order by miles_driven DESC


