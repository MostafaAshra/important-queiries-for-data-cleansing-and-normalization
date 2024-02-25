select*
from dbo.[WalmartSalesData.csv]


-- --no.of sales made in each time of the day per weekday--
select Time,COUNT(*)as total_sales
from dbo.[WalmartSalesData.csv]
group by Time
order by total_sales desc;




-- --------------------which of the cutomer type bring the most revenue---------
select Customer_type , sum(Total)as revenue
from dbo.[WalmartSalesData.csv]
group by Customer_type
order by revenue desc;




-- -----------which city has the largest tax-----------------------
select City , AVG(Tax_5)as tax
from dbo.[WalmartSalesData.csv]
group by City 
order by tax desc;



--------------which customer type pays the most in tax--------------
select Customer_type, AVG(Tax_5)as tax
from dbo.[WalmartSalesData.csv]
group by Customer_type
order by tax desc;



------------How many unique customer types does the data have---------
select count(distinct(Customer_type))
from dbo.[WalmartSalesData.csv]



--- How may unique payment methods does the data have--------------------
select count(distinct(payment))
from dbo.[WalmartSalesData.csv]


------what is the most common customer type -------------------------
select Customer_type ,count(Customer_type)as total 
from dbo.[WalmartSalesData.csv]
group by Customer_type
order by total desc;


------which customer_type buyes the most---------------
select customer_type, count(*)as every
from dbo.[WalmartSalesData.csv]
group by Customer_type
order by every desc;

----what is the gender of the most customers--------
select gender , count(*)as Total
from dbo.[WalmartSalesData.csv]
group by Gender
order by Total desc;


-----what is the gender distribution per branch----------total
select Branch , count(Gender)as total  ,Gender
from dbo.[WalmartSalesData.csv]
group by Branch , Gender
order by total


----what time of the day did customers give the most no. of ratings--------
select Time , count(Rating)as rat
from dbo.[WalmartSalesData.csv]
group by Time
order by rat desc;


----how many unique cities does the data have------------
select distinct(City)
from dbo.[WalmartSalesData.csv]


---in which city is each branch---------------------------
select  distinct(city) , branch
from dbo.[WalmartSalesData.csv]

SELECT *
from dbo.[WalmartSalesData.csv]


------how many unique product line does the data have--------
SELECT distinct(product_line)
from dbo.[WalmartSalesData.csv]


----what is the most common payment method-----------------
SELECT payment ,COUNT(payment)as total_method
from dbo.[WalmartSalesData.csv]
group by Payment 
ORDER by total_method DESC;


----what is the most selling product line ---------------------
SELECT product_line , count(Product_line)as most_selling_line
from dbo.[WalmartSalesData.csv]
group by Product_line
ORDER by most_selling_line DESC;


------what is the total revenue by month--------------------------
select month_name , sum(total)as total_rev
from dbo.[WalmartSalesData.csv]
group by month_name

------what month has the largest cogs-------------
SELECT month_name , SUM(cogs) as total_cogs
from dbo.[WalmartSalesData.csv]
group by month_name
order by total_cogs desc;

---- what is the product line has the most revenue---------
select product_line , sum(total)as total_rev
from dbo.[WalmartSalesData.csv]
group by Product_line
order by total_rev desc;

----what is the city with the largest revenue----------------

SELECT City , sum(total) as total_rev
FROM dbo.[WalmartSalesData.csv]
group by City
order by total_rev desc;

-----which branch sold more products that the average product sold------
SELECT branch , SUM(quantity)as total_product
from dbo.[WalmartSalesData.csv]
group by Branch
HAVING SUM(Quantity)> (select AVG(quantity)from dbo.[WalmartSalesData.csv])


----what is the most common product line by gender-----------------------------

select gender, Product_line , COUNT(Gender) as total
from dbo.[WalmartSalesData.csv]
group by gender , Product_line
order by total DESC;

---what is the average rating for each product line ---------------------------------
SELECT product_line , AVG(rating)as average_rating
from dbo.[WalmartSalesData.csv]
group by Product_line





