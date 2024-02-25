-- create time of date-------------------------------------
SELECT time,
(Case 
when time BETWEEN '00:00:00' and '12:00:00' then 'morning'
when time between '12:01:00' and '16:00:00' then 'afternoon'
else 'evening'
END) as TIME_of_date
from dbo.[WalmartSalesData.csv]


------add time od date column--------
ALTER TABLE dbo.[WalmartSalesData.csv] add time_of_date VARCHAR(20);
SELECT * 
from dbo.[WalmartSalesData.csv]

--fill time of date with data----------------
UPDATE dbo.[WalmartSalesData.csv]
SET time_of_date =(Case 
when time BETWEEN '00:00:00' and '12:00:00' then 'morning'
when time between '12:01:00' and '16:00:00' then 'afternoon'
else 'evening'
END

);


--get day mame----------------------------------
SELECT date , DATENAME(weekday,date)AS day_name
from dbo.[WalmartSalesData.csv]

--insert day_name coulmn-----------------------------
ALTER table dbo.[WalmartSalesData.csv] ADD day_name VARCHAR(20);


--add data to day_name column--------------------------------
UPDATE dbo.[WalmartSalesData.csv]
SET day_name=(DATENAME(weekday,date));
SELECT*
from dbo.[WalmartSalesData.csv]


----add month name---------------------------
SELECT date, DATENAME(month,date)as month_name
from dbo.[WalmartSalesData.csv]

---add column month_name--------------------------
ALTER TABLE dbo.[WalmartSalesData.csv] ADD month_name VARCHAR(20);

---fill month_name with data--------------------------
UPDATE dbo.[WalmartSalesData.csv]
set month_name=(DATENAME(MONTH,date))



-------


