select * from [Global Superstore];

select count(*) from [Global Superstore];

select [Row ID] , count([Row ID])
from [Global Superstore]
group by [Row ID]
having count([Row ID])>1;

SELECT
    COUNT(*) AS TotalRows,
    COUNT([Row ID]) AS Row_ID,
    COUNT([Order ID]) AS Order_ID,
    COUNT([Order Date]) AS Order_Date,
    COUNT([Ship Date]) AS Ship_Date,
    COUNT([Ship Mode]) AS Ship_Mode,
    COUNT([Customer ID]) AS Customer_ID,
    COUNT([Customer Name]) AS Customer_Name,
    COUNT([Segment]) AS Segment,
    COUNT([City]) AS City,
    COUNT([State]) AS State,
    COUNT([Country]) AS Country,
    COUNT([Postal Code]) AS Postal_Code,
    COUNT([Market]) AS Market,
    COUNT([Region]) AS Region,
    COUNT([Product ID]) AS Product_ID,
    COUNT([Category]) AS Category,
    COUNT([Sub-Category]) AS Sub_Category,
    COUNT([Product Name]) AS Product_Name,
    COUNT([Sales]) AS Sales,
    COUNT([Quantity]) AS Quantity,
    COUNT([Discount]) AS Discount,
    COUNT([Profit]) AS Profit,
    COUNT([Shipping Cost]) AS Shipping_Cost
FROM [Global Superstore];


SELECT
    [Order ID],
    [Product ID],
    COUNT(*) AS DuplicateCount
FROM [Global Superstore]
GROUP BY
    [Order ID],
    [Product ID]
HAVING COUNT(*) > 1;

SELECT *
FROM [Global Superstore]
WHERE [Order ID] = 'ID-2011-54176'
  AND [Product ID] = 'OFF-BI-10000168';


  SELECT *,
       COUNT(*) AS DuplicateCount
FROM [Global Superstore]
GROUP BY
    [Row ID], [Order ID], [Order Date], [Ship Date], [Ship Mode],
    [Customer ID], [Customer Name], [Segment], [City], [State],
    [Country], [Postal Code], [Market], [Region], [Product ID],
    [Category], [Sub-Category], [Product Name], [Sales],
    [Quantity], [Discount], [Profit], [Shipping Cost], [Order Priority]
HAVING COUNT(*) > 1;


SELECT *
FROM [Global Superstore]
WHERE
    Sales < 0
    OR Quantity < 0
    OR Discount < 0
  
    OR [Shipping Cost] < 0;

    SELECT *
FROM [Global Superstore]
WHERE [Ship Date] < [Order Date];

SELECT DISTINCT Category
FROM [Global Superstore];

SELECT DISTINCT [Ship Mode]
FROM [Global Superstore];

SELECT DISTINCT Segment
FROM [Global Superstore];





    SELECT
    YEAR([Order Date]) AS Order_Year,
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY YEAR([Order Date])
ORDER BY Order_Year;

SELECT
    year([Order Date]) as Order_Year,
    MONTH([Order Date]) AS Order_Month,
    DATENAME(MONTH,[Order Date]) AS Month_Name,
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY
year([Order Date]),
    MONTH([Order Date]),
    DATENAME(MONTH,[Order Date])
ORDER BY
  Order_Year,
    Order_Month;

SELECT
    [Product Name],
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY [Product Name]
ORDER BY Total_Sales DESC;


SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT
    YEAR([Order Date]) AS Year,
    MONTH([Order Date]) AS Month,
    SUM(Quantity) AS Total_Units_Sold
FROM [Global Superstore]
GROUP BY
    YEAR([Order Date]),
    MONTH([Order Date])
ORDER BY
    Year,
    Month;

    SELECT
    DATENAME(MONTH,[Order Date]) AS Month,
    SUM(Sales) AS Sales
FROM [Global Superstore]
GROUP BY DATENAME(MONTH,[Order Date]),MONTH([Order Date])
ORDER BY Sales DESC;

SELECT
    YEAR([Order Date]) AS Order_Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM [Global Superstore]
GROUP BY YEAR([Order Date])
ORDER BY Order_Year;


SELECT TOP 10
    [Product Name],
    SUM(Quantity) AS Total_Quantity_Sold,
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY [Product Name]
ORDER BY Total_Quantity_Sold DESC;

SELECT TOP 10
    [Product Name],
    SUM(Quantity) AS Total_Quantity_Sold,
     SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY [Product Name]
ORDER BY Total_Quantity_Sold ASC;


SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT
    Market,
    SUM(Sales) AS Total_Sales
FROM [Global Superstore]
GROUP BY Market
ORDER BY Total_Sales DESC;