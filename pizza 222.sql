select *
  from pizza

select cast(sum(total_price) As decimal(10,2)) as total_revenue
   from pizza;

select count(quantity) as total_quantity
   from pizza;


select sum(total_price) / count( quantity) as average_order_value
 from pizza

select SUM(quantity) as total_SALES
   from pizza;

   SELECT COUNT(order_id) as total_order
     from pizza


select * 
  from pizza


select sum(quantity)  / count (order_id) as decimal 
  from pizza

select DATENAME(DW,order_date)as order_day,COUNT(distinct order_id) as total_order
 from pizza
   group by DATENAME(DW,order_date)

select DATENAME(month,order_date)as month_name,COUNT(distinct order_id) as total_order
 from pizza
   group by DATENAME(month,order_date)
   order by total_order desc

select pizza_category ,SUM(total_price) as total_sales ,COUNT(quantity)*100/
(select COUNT(quantity) from pizza where MONTH(order_date)=1 )as pct
   from pizza
   where MONTH(order_date)=1
   group by pizza_category


select pizza_size ,SUM(total_price) as total_sales ,COUNT(quantity)*100/
(select COUNT(quantity) from pizza where MONTH(order_date)=1 )as pct
   from pizza
   where datepart(quarter,order_date)=1
   group by pizza_size 
   order by pct

   select pizza_name, SUM(total_price) as max_sales
     from pizza
	  group by pizza_name