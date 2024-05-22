# StarRobs Coffee: Business Overview and Data Insights

## Introduction

Welcome to the data insights documentation for **StarRobs Coffee**, a beloved coffee shop chain based in New York City. Established in 2015, StarRobs Coffee has grown to become a local favorite, known for its premium coffee, freshly baked goods, and welcoming atmosphere. With three strategically located branches in Lower Manhattan, Hell's Kitchen, and Astoria, StarRobs Coffee aims to provide an exceptional coffee experience to New Yorkers.

## Locations

### Lower Manhattan
Located in the bustling financial district, the Lower Manhattan branch caters to busy professionals and tourists alike. This location is known for its high foot traffic and steady stream of customers throughout the day. 

### Hell's Kitchen
Situated near the theater district, the Hell's Kitchen branch attracts a diverse clientele, including theatergoers, local residents, and office workers. This location is particularly busy during the evenings and weekends.

### Astoria
Nestled in a vibrant neighborhood, the Astoria branch serves a mix of families, young professionals, and students. Known for its cozy atmosphere, this location is a popular spot for remote work and casual meetups.

## Business Background

### Vision and Mission
StarRobs Coffee was founded with the vision of creating a community-focused coffee shop where people could enjoy high-quality coffee and pastries in a comfortable setting. Our mission is to deliver exceptional service and products that bring joy and satisfaction to our customers' daily routines.

### Product Offerings
Our menu features a wide range of coffee beverages, from classic espressos and cappuccinos to seasonal specialties and cold brews. In addition to coffee, we offer a variety of teas, freshly baked pastries, snacks, and branded merchandise.

### Operational Focus
To maintain high standards of quality and service, StarRobs Coffee places a strong emphasis on training staff, sourcing premium ingredients, and continually updating our menu based on customer feedback and market trends.

## Data Insights

### CoffeeShopSales Table

The `CoffeeShopSales` table captures crucial data points for all sales transactions, facilitating detailed ad-hoc queries about transactions. This data enables us to analyze sales volume, track trends over time, and monitor the performance of various strategies.

**[transaction_id]**: Unique identifier for each sales transaction, essential for linking all items in a single purchase.

**[transaction_date]**: Date of each transaction, allowing for time-based analysis of sales performance.

**[transaction_time]**: Time of day each transaction occurs, helping to analyze busy periods and optimize staffing schedules.

**[transaction_qty]**: Number of units sold in each transaction, vital for inventory management and understanding product popularity.

**[store_id]**: Identifier for the store where each transaction took place, enabling comparison across different locations.

**[store_location]**: Geographical context for each transaction, useful for tailoring product offerings to local preferences.

**[product_id]**: Links each sale to a specific product, crucial for tracking the performance of individual items.

**[unit_price]**: Selling price at the transaction level, critical for revenue analysis and monitoring the impact of pricing strategies.

**[product_category]**: Groups products into manageable segments, allowing for analysis of sales by broader product lines.

**[product_type]**: Finer classification within categories, helping to analyze sales patterns at a more detailed level.

**[product_detail]**: Granular data about the products sold, such as product name and ingredients, useful for refining product offerings.

### Sales Analysis View

The `sales_analysis` view simplifies the querying of key performance indicators (KPIs) and overall business performance. It aggregates data from the `CoffeeShopSales` table to provide insights into sales trends, average transaction values, and product mix efficiency.

#### Columns in Sales Analysis View

**[store_location]**: Geographical context for each aggregated data point, helping in analyzing the performance of different locations over time.

**[product_category]**: Indicates the product category for which the KPIs are calculated, enabling comparison across different product lines.

**[month]**: Represents the month for which the data is aggregated, facilitating time-based trend analysis.

**[sales_rev]**: Total sales revenue for the given store location, product category, and month.

**[avg_atv]**: Average transaction value for the given store location, product category, and month.

**[prod_mix_eff]**: Product mix efficiency, representing the percentage contribution of the product category to the total sales revenue.

**[sales_rev_1mo_back]**: Total sales revenue for one month back.

**[avg_atv_1mo_back]**: Average transaction value for one month back.

**[prod_mix_eff_1mo_back]**: Product mix efficiency for one month back.

**[sales_rev_2mo_back]**: Total sales revenue for two months back.

**[avg_atv_2mo_back]**: Average transaction value for two months back.

**[prod_mix_eff_2mo_back]**: Product mix efficiency for two months back.

**[pct_rev_diff_1mo]**: Percentage difference in sales revenue compared to one month back.

**[pct_atv_diff_1mo]**: Percentage difference in average transaction value compared to one month back.

**[pct_pme_diff_1mo]**: Percentage difference in product mix efficiency compared to one month back.

**[pct_rev_diff_2mo]**: Percentage difference in sales revenue compared to two months back.

**[pct_atv_diff_2mo]**: Percentage difference in average transaction value compared to two months back.

**[pct_pme_diff_2mo]**: Percentage difference in product mix efficiency compared to two months back.

### Purpose

The `sales_analysis` view is designed for easier querying of KPIs and business performance metrics. It allows businesses to quickly access aggregated data on sales revenue, average transaction values, and product mix efficiency, along with their changes over time. This facilitates strategic decision-making, performance tracking, and optimization of product offerings and marketing efforts.

### Monthly Performance Reporting

This schema is particularly useful for monthly performance reporting. By aggregating and summarizing key metrics for each month, it provides a clear and concise view of business performance over time. The ability to compare current performance with previous months enables businesses to identify trends, evaluate the impact of strategic initiatives, and make informed decisions. With detailed insights into sales revenue, average transaction values, and product mix efficiency, businesses can effectively track their progress towards goals, adjust their strategies, and optimize operations to drive growth and profitability.
