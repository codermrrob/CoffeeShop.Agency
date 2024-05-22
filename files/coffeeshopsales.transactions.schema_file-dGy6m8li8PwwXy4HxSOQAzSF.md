# CoffeeShopSales SQL Schema
A table of all sales transactions in all coffee shop locations, including details about the products sold, transaction specifics, and store information.

It is primarily used by you for ad-hoc queries about transactions which cannot be answered by using one of the Performance Analysis Views. 

```
CREATE TABLE [dbo].[CoffeeShopSales](
	[transaction_id] [bigint] NOT NULL,
	[transaction_date] [datetime2](7) NULL,
	[transaction_time] [time](7) NULL,
	[transaction_qty] [int] NULL,
	[store_id] [int] NULL,
	[store_location] [nvarchar](256) NULL,
	[product_id] [int] NULL,
	[unit_price] [decimal](19, 4) NULL,
	[product_category] [nvarchar](256) NULL,
	[product_type] [nvarchar](256) NULL,
	[product_detail] [nvarchar](256) NULL,
 CONSTRAINT [PK_CoffeeShopSales] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
```

## Description

# Ad-hoc Queries

## Introduction
Each column in the `CoffeeShopSales` table captures crucial data points for all sales transactions, which can help a business understand and optimize its operations. These data points facilitate detailed ad-hoc queries about transactions, enabling businesses to analyze sales volume, track trends over time, and monitor the performance of various strategies.

## CoffeeShopSales Table

**[transaction_id]**: This acts as a unique identifier for each sales transaction. By tracking individual transactions, businesses can analyze sales volume, track sales trends over time, and monitor the performance of promotions or changes in strategy. It's essential for linking all items in a single purchase.

**[transaction_date]**: This stores the date of each transaction, crucial for time-based analysis. It allows the business to evaluate sales performance on a daily, weekly, monthly, or even seasonal basis, helping identify trends and make decisions about inventory and staffing.

**[transaction_time]**: By recording the time of day each transaction occurs, the business can analyze busy periods and optimize staffing schedules, plan promotions during slow times, and better manage day-part sales strategies.

**[transaction_qty]**: This tells how many units of a product were sold in each transaction. This data is vital for inventory management, understanding product popularity, and planning purchasing. It can also help in analyzing the impact of product placement, marketing efforts, and price changes on sales volume.

**[store_id]**: Identifying the store where each transaction took place enables comparison across different locations. This can reveal which locations are performing well or underperforming, influencing decisions regarding marketing, store layout changes, and regional product preferences.

**[store_location]**: This provides geographical context for each transaction. It can be used to tailor product offerings to local preferences, optimize local marketing campaigns, and make strategic decisions about where to open new locations or which locations might need additional support or renovation.

**[product_id]**: Links each sale to a specific product, essential for tracking the sales performance of individual items. This data helps in understanding which products are bestsellers or underperformers, guiding product development, and inventory management.

**[unit_price]**: Knowing the selling price at the transaction level helps in revenue analysis and is critical for monitoring the impact of pricing strategies on sales volumes and profitability.

**[product_category]**: Categories group products into manageable segments, allowing for analysis of sales by broader product lines. This helps in assessing which categories are contributing most to revenue and might benefit from expanded offerings.

**[product_type]**: This finer classification within categories helps the business analyze sales patterns at a more detailed level. Understanding the popularity and profitability of different types of products within a category can influence menu adjustments and promotional focus.

**[product_detail]**: Provides even more granular data about the products sold, such as the product name, which can be used to refine product offerings, customize marketing messages, and improve customer satisfaction. This might include details like ingredients, dietary restrictions, or preparation styles that appeal to different customer segments.