# SALES PERFORMANCE ANALYSIS

## 1. Project Overview

This project presents an end-to-end sales performance analysis using a sales dataset covering January 2025 to October 2025.

The purpose of this project is to analyse historical sales data, identify revenue trends and patterns, evaluate product and customer segment performance, understand regional sales performance, and provide actionable business recommendations.

The analysis was carried out using Google Sheets, MySQL, Power BI and Python to demonstrate the complete data analytics process, from data preparation and cleaning to querying, visualisation, interpretation and business recommendations.

## 2. Project Objectives

The key objectives of this project were to:

- Identify monthly sales and revenue trends.
- Determine the best-performing product categories and individual products.
- Analyse customer segment purchasing performance.
- Evaluate sales performance across different regions.
- Assess sales representative performance.
- Identify patterns and areas of opportunity within the business.
- Develop data-driven recommendations to improve revenue, sales performance and business decision-making.

## 3. Tools and Technologies

| Tool | Purpose |
|---|---|
| Google Sheets | Initial data exploration, calculations, sales analysis and dashboard creation. |
| MySQL | Data inspection, cleaning, validation, querying and advanced SQL analysis. |
| Power BI | Interactive sales performance dashboard and visual reporting. |
| Python | Data cleaning, exploratory data analysis, business insights and visualisation. |
| Pandas | Data manipulation and analysis. |
| Matplotlib and Seaborn | Data visualisation. |
| Jupyter Notebook | Python analysis environment. |

## 4. Project Methodology

### A. Google Sheets Analysis

Google Sheets was used for initial data exploration and sales performance analysis.

Activities included:
- Reviewing the sales dataset.
- Performing calculations and analysing key sales metrics.
- Examining revenue, units sold and sales performance.
- Creating a sales performance dashboard to present key findings.

### B. MySQL Analysis

MySQL was used to inspect, clean, validate and analyse the sales dataset.

Activities included:

**Data inspection and cleaning**
- Examined the original sales table.
- Identified duplicate records.
- Created a cleaned sales table using `SELECT DISTINCT`.
- Checked missing values and data quality.
- Validated the cleaned dataset.

**Exploratory and advanced SQL analysis**
- Used `SELECT`, `WHERE` and `ORDER BY` to retrieve and sort records.
- Used aggregate functions such as `SUM`, `COUNT`, `AVG`, `MIN` and `MAX`.
- Used `GROUP BY` and `HAVING` to analyse sales performance.
- Applied `CASE WHEN` for conditional analysis.
- Practised SQL joins to combine related data.
- Used subqueries and Common Table Expressions (CTEs).
- Applied window functions for ranking and cumulative sales analysis.

The cleaned dataset contained 200 sales records, with total revenue of ₦18,225,300 and 899 units sold.

### C. Power BI Dashboard

Power BI was used to build a sales performance dashboard that presents important business metrics and trends.

The dashboard includes:
- Total revenue.
- Total units sold.
- Revenue by product category.
- Monthly revenue trends.
- Regional revenue performance.
- Product performance.

The dashboard provides a visual overview of business performance to support informed decision-making.

### D. Python Analysis

Python was used for data cleaning, exploratory data analysis and visualisation in Jupyter Notebook.

Libraries used:
- Pandas
- NumPy
- Matplotlib
- Seaborn

Activities included:
- Importing and inspecting the sales dataset.
- Identifying missing values and duplicate records.
- Removing completely empty rows and duplicate records.
- Creating a cleaned dataset.
- Calculating key performance indicators.
- Analysing product categories, customer segments, regions, sales representatives and monthly revenue.
- Creating visualisations to communicate findings.
- Exporting the cleaned dataset as a CSV file.

Visualisations created:
- Monthly Revenue Trend.
- Category Revenue.
- Regional Revenue.
- Sales Representative Performance.

## 5. Key Business Findings

The analysis produced the following findings:

### Overall Sales Performance

- Total Revenue: ₦18,225,300
- Total Units Sold: 899
- Total Sales Records: 200
- Average Revenue per Record: ₦91,126.50

### Product Category Performance

| Category | Revenue |
|---|---:|
| Electronics | ₦7,940,850 |
| Home | ₦6,460,100 |
| Beauty | ₦3,824,350 |

Electronics generated the highest revenue, while Home recorded the highest number of units sold.

### Product Performance

The Monitor was the highest revenue-generating product, with ₦5,189,250 in sales.

Other strong-performing products included:
- Fan: ₦2,627,200
- Hair Dryer: ₦1,695,400
- Blender: ₦1,505,000
- Toaster: ₦1,252,000

### Regional Performance

- Enugu generated the highest revenue at ₦4,928,675.
- Abuja generated ₦3,709,975.
- Port Harcourt generated ₦3,356,850.
- Benin City generated ₦3,187,650.
- Lagos generated ₦2,738,350.

### Customer Segment Performance

| Customer Segment | Revenue |
|---|---:|
| Retail | ₦10,703,575 |
| Online | ₦3,750,225 |
| Wholesale | ₦3,559,500 |

Retail customers contributed the highest revenue, accounting for approximately 58.7% of total sales revenue.

### Sales Representative Performance

- Ada: ₦4,360,325
- Chika: ₦4,324,500
- Mary: ₦3,507,950
- David: ₦3,281,500
- Tunde: ₦2,669,875

Ada generated the highest recorded sales revenue among the representatives.

### Monthly Revenue Trend

February 2025 recorded the highest monthly revenue of ₦2,382,025.

August recorded the highest order volume.

## 6. Business Recommendations

Based on the findings, the following recommendations are proposed:

1. **Strengthen retail sales:** Retail contributes the largest share of revenue. The business should maintain strong retail customer relationships and explore customer retention strategies.

2. **Prioritise high-performing products:** The Monitor generated the highest revenue. The business should monitor its stock levels and ensure adequate availability while continuing to evaluate other profitable products.

3. **Improve regional sales performance:** Enugu recorded the highest revenue, while Lagos recorded the lowest among the regions analysed. The business should investigate differences in customer demand, product availability and sales strategies across regions.

4. **Develop online and wholesale sales:** These segments generated less revenue than retail. Targeted promotions, improved customer engagement and suitable sales incentives could help grow their contribution.

5. **Study monthly sales patterns:** February recorded the highest revenue, while August recorded the highest order volume. The business should investigate the factors behind these patterns to improve sales planning and promotional timing.

6. **Use sales performance to support decisions:** Regular monitoring of revenue, units sold, products, regions and sales representatives can help management identify opportunities and address underperformance.

## 7. Data Quality Considerations

During data cleaning, duplicate records and empty rows were identified and handled.

The final cleaned dataset contained:
- 200 records.
- No remaining duplicate rows.
- One missing Order ID.
- Three missing Region values.
- Three missing Customer Segment values.
- Three missing Sales Representative values.

Missing business information was retained as missing rather than replaced with invented values.

## 8. Project Deliverables

The project includes:

- Google Sheets sales analysis and dashboard.
- SQL scripts for data inspection, cleaning, exploratory analysis and advanced analysis.
- Power BI interactive dashboard.
- Python Jupyter Notebook.
- Cleaned sales dataset in CSV format.
- Python visualisations.
- Project documentation.

## 9. Conclusion

This project demonstrates how sales data can be transformed into useful business insights through data cleaning, SQL querying, analysis and visualisation.

The findings highlight the importance of understanding product performance, customer segments, regional differences and monthly sales trends.

The recommendations provide management with practical areas to investigate and opportunities to improve sales performance, strengthen customer relationships and make informed business decisions.

**Project Focus:** Sales Performance Analysis and Data-Driven Business Recommendations.

**Tools:** Google Sheets | MySQL | Power BI | Python
