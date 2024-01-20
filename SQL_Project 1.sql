/*FALCON SOFTWARE - Data Analysis Project */

/*The Total transactions made = 148395 transactions are made */
select count(*) from transactions;

select count(product_code)
from transactions;



/*Total transactions in Chennai = Mark001 */
SELECT count(*) as Chennai_transactions FROM SALES.transactions
WHERE market_code = 'Mark001';





/* Transaction where amount is in USD */

create view transactions_USD as
select * from sales.transactions
where currency = 'USD';



/*Total transactions made in year 2020*/
select sales.transactions.*, sales.date.*
from sales.date
inner JOIN sales.transactions
ON date.date = transactions.order_date
where year = 2020;

/* schema_name.table_name.column_name */






/*Total sales made in year 2020 = 142224545 */
select sum(sales.transactions.sales_amount) as totalSales_2020
from sales.date
inner JOIN sales.transactions
ON date.date = transactions.order_date
where year = 2020;



/*Total sales made in year 2019 = 336019102 */

select sum(sales.transactions.sales_amount) as totalSales_2019
from sales.date
inner JOIN sales.transactions
ON date.date = transactions.order_date
where year = 2019;










/*Unique products sold in Chennai*/
select distinct sales.transactions.product_code
from sales.transactions
where market_code = 'Mark001';






