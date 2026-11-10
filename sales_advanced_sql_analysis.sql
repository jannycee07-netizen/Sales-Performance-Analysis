SELECT
    Product_Category,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY Product_Category
HAVING SUM(Revenue_NGN) > 5000000
ORDER BY Total_Revenue DESC;
SELECT
    Order_ID,
    Revenue_NGN,
    CASE
        WHEN Revenue_NGN >= 150000 THEN 'High'
        WHEN Revenue_NGN >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS Sales_Category
FROM sales_analysis.sales_data_clean;
SHOW TABLES FROM sales_analysis;
CREATE TABLE sales_analysis.sales_reps (
    Sales_Rep VARCHAR(50),
    Rep_Region VARCHAR(50)
);
INSERT INTO sales_analysis.sales_reps
(Sales_Rep, Rep_Region)
VALUES
('Rep 1', 'Lagos'),
('Rep 2', 'Abuja'),
('Rep 3', 'Enugu'),
('Rep 4', 'Benin'),
('Rep 5', 'Port Harcourt');
SELECT *
FROM sales_analysis.sales_reps;
SELECT
    s.Order_ID,
    s.Sales_Rep,
    r.Rep_Region,
    s.Revenue_NGN
FROM sales_analysis.sales_data_clean AS s
INNER JOIN sales_analysis.sales_reps AS r
    ON s.Sales_Rep = r.Sales_Rep;
    SELECT DISTINCT Sales_Rep
FROM sales_analysis.sales_data_clean;
DELETE FROM sales_analysis.sales_reps;
TRUNCATE TABLE sales_analysis.sales_reps;
INSERT INTO sales_analysis.sales_reps
(Sales_Rep)
VALUES
('Tunde'),
('Mary'),
('David'),
('Chika');
SELECT *
FROM sales_analysis.sales_reps;
SELECT
    s.Order_ID,
    s.Sales_Rep,
    r.Rep_Region,
    s.Revenue_NGN
FROM sales_analysis.sales_data_clean AS s
INNER JOIN sales_analysis.sales_reps AS r
    ON s.Sales_Rep = r.Sales_Rep;
    SELECT
    s.Sales_Rep,
    COUNT(*) AS Total_Records
FROM sales_analysis.sales_data_clean AS s
LEFT JOIN sales_analysis.sales_reps AS r
    ON s.Sales_Rep = r.Sales_Rep
WHERE r.Sales_Rep IS NULL
GROUP BY s.Sales_Rep;
INSERT INTO sales_analysis.sales_reps
(Sales_Rep)
VALUES ('Ada');
SELECT
    s.Order_ID,
    s.Sales_Rep,
    r.Rep_Region,
    s.Revenue_NGN
FROM sales_analysis.sales_data_clean AS s
INNER JOIN sales_analysis.sales_reps AS r
    ON s.Sales_Rep = r.Sales_Rep;
    SELECT
    s.Order_ID,
    s.Sales_Rep,
    r.Rep_Region,
    s.Revenue_NGN
FROM sales_analysis.sales_data_clean AS s
LEFT JOIN sales_analysis.sales_reps AS r
    ON s.Sales_Rep = r.Sales_Rep;
    SELECT
    Product,
    SUM(Revenue_NGN) AS Total_Revenue
FROM sales_analysis.sales_data_clean
GROUP BY Product
HAVING SUM(Revenue_NGN) > (
    SELECT AVG(Product_Revenue)
    FROM (
        SELECT SUM(Revenue_NGN) AS Product_Revenue
        FROM sales_analysis.sales_data_clean
        GROUP BY Product
    ) AS Product_Averages
)
ORDER BY Total_Revenue DESC;
WITH Category_Revenue AS (
    SELECT
        Product_Category,
        SUM(Revenue_NGN) AS Total_Revenue
    FROM sales_analysis.sales_data_clean
    GROUP BY Product_Category
)
SELECT *
FROM Category_Revenue
WHERE Total_Revenue > 5000000
ORDER BY Total_Revenue DESC;
SELECT
    Product,
    SUM(Revenue_NGN) AS Total_Revenue,
    RANK() OVER (
        ORDER BY SUM(Revenue_NGN) DESC
    ) AS Revenue_Rank
FROM sales_analysis.sales_data_clean
GROUP BY Product
ORDER BY Revenue_Rank;
WITH Monthly_Revenue AS (
    SELECT
        MONTH(Order_Date) AS Month_Number,
        MONTHNAME(Order_Date) AS Month_Name,
        SUM(Revenue_NGN) AS Total_Revenue
    FROM sales_analysis.sales_data_clean
    GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
)
SELECT
    Month_Name,
    Total_Revenue,
    SUM(Total_Revenue) OVER (
        ORDER BY Month_Number
    ) AS Cumulative_Revenue
FROM Monthly_Revenue
ORDER BY Month_Number;
