SELECT *
FROM dbo.[WalmartSalesData.csv]

------check duplicates----------------------------------------------------------------------------------

select Invoice_ID, Branch, City , Customer_type , Gender , Product_line , Unit_price, Quantity, Tax_5,Total,[Date],[Time],Payment,cogs, gross_margin_percentage, gross_income, Rating, time_of_date ,day_name,month_name
,COUNT(*)as record
from dbo.[WalmartSalesData.csv]
GROUP by Invoice_ID, Branch, City , Customer_type , Gender , Product_line , Unit_price, Quantity, Tax_5,Total,[Date],[Time],Payment,cogs, gross_margin_percentage, gross_income, Rating, time_of_date ,day_name,month_name
HAVING COUNT(*)>1


----normalization---------------------------------------------------------------------
SELECT 

CASE WHEN Gender='F' then 'Female'
WHEN Gender='femeale' THEN 'Female'
WHEN Gender='femme' THEN 'Female'
ELSE Gender
END as cleaded_gender
FROM dbo.[WalmartSalesData.csv]


------dealing with null values using case expression----------------------------------------
SELECT 
CASE WHEN gross_income IS NULL THEN 0 ELSE gross_income END AS cleaned_gross_income
FROM dbo.[WalmartSalesData.csv]




