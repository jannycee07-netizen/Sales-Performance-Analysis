INSERT INTO sales_analysis.sales_data_clean
SELECT DISTINCT *
FROM sales_analysis.`sales_data - sales_data`;
SELECT SUM(Revenue_NGN) AS Clean_Total_Revenue
FROM sales_analysis.sales_data_clean;
SELECT
    (SELECT SUM(Revenue_NGN)
     FROM sales_analysis.`sales_data - sales_data`) AS Original_Revenue,
    (SELECT SUM(Revenue_NGN)
     FROM sales_analysis.sales_data_clean) AS Clean_Revenue;
     SELECT COUNT(*) AS Clean_Records,
       SUM(Revenue_NGN) AS Clean_Revenue
FROM sales_analysis.sales_data_clean;
SELECT
    'Original' AS Table_Name,
    COUNT(*) AS Total_Records,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.`sales_data - sales_data`

UNION ALL

SELECT
    'Clean' AS Table_Name,
    COUNT(*) AS Total_Records,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean;
TRUNCATE TABLE sales_analysis.sales_data_clean;
INSERT INTO sales_analysis.sales_data_clean
SELECT DISTINCT *
FROM sales_analysis.`sales_data - sales_data`;
SELECT COUNT(*)
FROM sales_analysis.sales_data_clean;
SELECT COUNT(*) AS Missing_Order_ID
FROM sales_analysis.sales_data_clean
WHERE Order_ID IS NULL OR Order_ID = '';
SELECT *
FROM sales_analysis.sales_data_clean
WHERE Order_ID IS NULL OR Order_ID = '';
SELECT
    SUM(Order_Date IS NULL OR Order_Date = '') AS Missing_Order_Date,
    SUM(Region IS NULL OR Region = '') AS Missing_Region,
    SUM(Customer_Segment IS NULL OR Customer_Segment = '') AS Missing_Customer_Segment,
    SUM(Product_Category IS NULL OR Product_Category = '') AS Missing_Product_Category,
    SUM(Product IS NULL OR Product = '') AS Missing_Product,
    SUM(Quantity IS NULL) AS Missing_Quantity,
    SUM(Unit_Price_NGN IS NULL) AS Missing_Unit_Price,
    SUM(Discount_Rate IS NULL) AS Missing_Discount,
    SUM(Sales_Rep IS NULL OR Sales_Rep = '') AS Missing_Sales_Rep,
    SUM(Revenue_NGN IS NULL) AS Missing_Revenue
FROM sales_analysis.sales_data_clean;
SELECT *
FROM sales_analysis.sales_data_clean
WHERE Region IS NULL OR Region = '';
SELECT *
FROM sales_analysis.sales_data_clean
WHERE Customer_Segment IS NULL
   OR Customer_Segment = '';
   SELECT *
FROM sales_analysis.sales_data_clean
WHERE Sales_Rep IS NULL
   OR Sales_Rep = '';
   SELECT *
FROM sales_analysis.sales_data_clean
WHERE Quantity <= 0;
SELECT *
FROM sales_analysis.sales_data_clean
WHERE Unit_Price_NGN <= 0;
SELECT *
FROM sales_analysis.sales_data_clean
WHERE Discount_Rate < 0
   OR Discount_Rate > 1;
   SELECT *
FROM sales_analysis.sales_data_clean
WHERE Revenue_NGN <= 0;
SELECT *
FROM sales_analysis.sales_data_clean
WHERE ABS(
    Revenue_NGN -
    (Quantity * Unit_Price_NGN * (1 - Discount_Rate))
) > 1;
SELECT
    MIN(Order_Date) AS First_Sale_Date,
    MAX(Order_Date) AS Last_Sale_Date
FROM sales_analysis.sales_data_clean;
SELECT *
FROM sales_analysis.sales_data_clean
WHERE Order_Date < '2025-01-01'
   OR Order_Date > '2025-10-25';
   SELECT
    Order_ID,
    Order_Date,
    Region,
    Customer_Segment,
    Product_Category,
    Product,
    Quantity,
    Unit_Price_NGN,
    Discount_Rate,
    Sales_Rep,
    Revenue_NGN,
    COUNT(*) AS duplicate_count
FROM sales_analysis.sales_data_clean
GROUP BY
    Order_ID,
    Order_Date,
    Region,
    Customer_Segment,
    Product_Category,
    Product,
    Quantity,
    Unit_Price_NGN,
    Discount_Rate,
    Sales_Rep,
    Revenue_NGN
HAVING COUNT(*) > 1;
