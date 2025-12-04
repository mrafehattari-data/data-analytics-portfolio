E-Commerce Sales Dashboard (Power BI)
📌 Overview
This project is a professional Power BI dashboard built to analyze revenue, profit, customer segments, product performance, and regional trends for an e-commerce business.
The dashboard is fully interactive and powered by a clean star-schema data model with custom DAX measures.

📊 Dashboard Features
🔹 Interactive Slicers
	• Year
	• Product Category
	• Region
🔹 Key KPIs
	• Total Sales
	• Total Profit
	• Profit Margin %
	• Total Orders
	• Average Order Value (AOV)
🔹 Visuals Included
	• Monthly Sales Trend (Line chart)
	• Sales by Category (Column chart)
	• Profit by Region (Bar chart)
	• Top 10 Products by Sales
	• Sales by Customer Segment (Donut chart)

🧠 DAX Metrics
The following measures were created:

Total Sales = SUMX(Sales, Sales[quantity] * Sales[unit_price])
Total Cost = SUMX(Sales, Sales[quantity] * Sales[unit_cost])
Total Profit = [Total Sales] - [Total Cost]
Total Quantity = SUM(Sales[quantity])
Total Orders = DISTINCTCOUNT(Sales[sale_id])
AOV = [Total Sales] / [Total Orders]
Profit Margin % = DIVIDE([Total Profit], [Total Sales])

🧱 Data Model
A star schema with the following tables:
	• Sales (fact)
	• Products (dimension)
	• Customers (dimension)
	• Calendar (dimension)
Relationships:
	• Sales ↔ Customers (customer_id)
	• Sales ↔ Products (product_id)
	• Sales ↔ Calendar (date)

🛠 Tools Used
	• Power BI
	• Power Query
	• DAX
	• Excel

📎 How to Use
	1. Download the .pbix file
	2. Open in Power BI Desktop
	3. Use slicers to filter the report
	4. Explore KPIs and insights

📢 Insights Extracted
	• West region generated the highest profit
	• Consumer segment made up the majority of revenue
	• Sports and Electronics were top-performing categories
Product 60 and Product 41 ranked highest in sales<img width="730" height="1277" alt="image" src="https://github.com/user-attachments/assets/608fb2d3-fd17-4904-8f7d-9af9256f51f3" />

