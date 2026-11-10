SELECT COUNT(*)
FROM sales_analysis.`sales_data - sales_data`;
SELECT COUNT(DISTINCT Order_ID)
FROM sales_analysis.`sales_data - sales_data`;
SELECT SUM(Revenue_NGN)
FROM sales_analysis.`sales_data - sales_data`;
SELECT AVG(Revenue_NGN)
FROM sales_analysis.`sales_data - sales_data`;
SELECT
    SUM(Revenue_NGN) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM sales_analysis.`sales_data - sales_data`;
SELECT
    Order_ID,
    COUNT(*) AS row_count
FROM sales_analysis.`sales_data - sales_data`
GROUP BY Order_ID
HAVING COUNT(*) > 1;
SELECT *
FROM sales_analysis.`sales_data - sales_data`
WHERE Order_ID = 1011;

SELECT *
FROM sales_analysis.`sales_data - sales_data`
WHERE Order_ID = 1011;
SELECT *
FROM sales_analysis.`sales_data - sales_data`;
SELECT *
FROM sales_analysis.`sales_data - sales_data`
WHERE Order_ID = '1011';
SELECT DISTINCT Order_ID
FROM sales_analysis.`sales_data - sales_data`
ORDER BY Order_ID DESC
LIMIT 10;
SELECT DISTINCT Order_ID
FROM sales_analysis.`sales_data - sales_data`
ORDER BY Order_ID DESC
LIMIT 10;
SELECT *
FROM sales_analysis.`sales_data - sales_data`
WHERE Order_ID = 'ORD-1011';


