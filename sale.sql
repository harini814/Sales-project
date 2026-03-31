SELECT * FROM sales.customers;
use sales;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions. order_date =sales.date.date 
where sales.date.year =2017 and sales.transactions.market_code="Mark002";

select distinct(currency) from transactions;
select count(currency) as 'inr currency' from transactions where currency = 'INR';
-- 'INR' , 'INR\r'

/* selects unique customer_id who has placed an order a day , to count total orders placed. 
when a customer has placed multiple orders a day it cant be tracked as order_id isnt available, 
product_code is availabe but we cant justify weather the product was bought in the same order or not */

select count(distinct customer_code,order_date) from transactions;

/* total revenue in the year 2017 */
select sum(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.date 
where date.year=2017 and transactions.currency="INR" ;	
select * from transactions