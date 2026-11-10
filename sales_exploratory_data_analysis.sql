SELECT COUNT(*) AS Total_Records
FROM sales_analysis.sales_data_clean;
SELECT
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean;
SELECT
    AVG(Revenue_NGN) AS Average_Revenue
FROM sales_analysis.sales_data_clean;
SELECT
    MAX(Revenue_NGN) AS Highest_Revenue
FROM sales_analysis.sales_data_clean;
SELECT
    MIN(Revenue_NGN) AS Lowest_Revenue
FROM sales_analysis.sales_data_clean;
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Unique_Orders
FROM sales_analysis.sales_data_clean;
SELECT
    SUM(Revenue_NGN) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM sales_analysis.sales_data_clean;
SELECT
    SUM(Quantity) AS Total_Units_Sold
FROM sales_analysis.sales_data_clean;
SELECT
    Product_Category,
    SUM(Quantity) AS Total_Units_Sold
FROM sales_analysis.sales_data_clean
GROUP BY Product_Category
ORDER BY Total_Units_Sold DESC;
SELECT
    Product_Category,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;
SELECT
    Product,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY Product
ORDER BY Total_Revenue DESC;
SELECT
    Region,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY Region
ORDER BY Total_Revenue DESC;
SELECT
    Customer_Segment,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC;
SELECT
    MONTH(Order_Date) AS Sales_Month,
    MONTHNAME(Order_Date) AS Month_Name,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY
    MONTH(Order_Date),
    MONTHNAME(Order_Date)
ORDER BY Sales_Month;
SELECT
    MONTHNAME(Order_Date) AS Month_Name,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY MONTHNAME(Order_Date), MONTH(Order_Date)
ORDER BY Total_Revenue DESC
LIMIT 1;
SELECT
    MONTHNAME(Order_Date) AS Month_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_analysis.sales_data_clean
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY MONTH(Order_Date);
SELECT
    MONTHNAME(Order_Date) AS Month_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY MONTH(Order_Date);