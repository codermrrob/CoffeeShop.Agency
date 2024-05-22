# Sales Analysis View SQL Schema

This is a Performance Analysis View. It is primarily used for easier querying of KPIs and business performance metrics. It allows businesses to quickly access aggregated data on sales revenue, average transaction values, and product mix efficiency, along with their changes over time. This facilitates strategic decision-making, performance tracking, and optimization of product offerings and marketing efforts.

### Monthly Performance Reporting:

This schema is particularly useful for monthly performance reporting. By aggregating and summarizing key metrics for each month, it provides a clear and concise view of business performance over time. The ability to compare current performance with previous months enables businesses to identify trends, evaluate the impact of strategic initiatives, and make informed decisions. With detailed insights into sales revenue, average transaction values, and product mix efficiency, businesses can effectively track their progress towards goals, adjust their strategies, and optimize operations to drive growth and profitability.


```
CREATE VIEW sales_analysis AS
SELECT
    store_location NVARCHAR(256),
    product_category NVARCHAR(256),
    month DATE,
    sales_rev DECIMAL(19, 4),
    avg_atv DECIMAL(19, 4),
    prod_mix_eff DECIMAL(19, 4),
    sales_rev_1mo_back DECIMAL(19, 4),
    avg_atv_1mo_back DECIMAL(19, 4),
    prod_mix_eff_1mo_back DECIMAL(19, 4),
    sales_rev_2mo_back DECIMAL(19, 4),
    avg_atv_2mo_back DECIMAL(19, 4),
    prod_mix_eff_2mo_back DECIMAL(19, 4),
    pct_rev_diff_1mo DECIMAL(19, 4),
    pct_atv_diff_1mo DECIMAL(19, 4),
    pct_pme_diff_1mo DECIMAL(19, 4),
    pct_rev_diff_2mo DECIMAL(19, 4),
    pct_atv_diff_2mo DECIMAL(19, 4),
    pct_pme_diff_2mo DECIMAL(19, 4)
```

The `sales_analysis` view simplifies the querying of key performance indicators (KPIs) and overall business performance. It aggregates data from the `CoffeeShopSales` table to provide insights into sales trends, average transaction values, and product mix efficiency.

### Columns in Sales Analysis View

**[store_location]**: Provides geographical context for each aggregated data point. It helps in analyzing the performance of different locations over time.

**[product_category]**: Indicates the product category for which the KPIs are calculated, enabling comparison across different product lines.

**[month]**: Represents the month for which the data is aggregated, facilitating time-based trend analysis.

**[sales_rev]**: Total sales revenue for the given store location, product category, and month. Helps in understanding overall sales performance.

**[avg_atv]**: Average transaction value for the given store location, product category, and month. Indicates the average revenue generated per transaction.

**[prod_mix_eff]**: Product mix efficiency for the given store location, product category, and month. Represents the percentage contribution of the product category to the total sales revenue, aiding in understanding the effectiveness of the product mix.

**[sales_rev_1mo_back]**: Total sales revenue for one month back. Helps in comparing current performance with the previous month.

**[avg_atv_1mo_back]**: Average transaction value for one month back. Facilitates month-over-month comparison of average transaction values.

**[prod_mix_eff_1mo_back]**: Product mix efficiency for one month back. Assists in understanding changes in product mix effectiveness over time.

**[sales_rev_2mo_back]**: Total sales revenue for two months back. Enables comparison with sales performance from two months ago.

**[avg_atv_2mo_back]**: Average transaction value for two months back. Useful for analyzing longer-term trends in transaction values.

**[prod_mix_eff_2mo_back]**: Product mix efficiency for two months back. Provides insights into how product mix effectiveness has evolved over a two-month period.

**[pct_rev_diff_1mo]**: Percentage difference in sales revenue compared to one month back. Indicates the month-over-month growth or decline in sales revenue.

**[pct_atv_diff_1mo]**: Percentage difference in average transaction value compared to one month back. Shows the change in average transaction value from the previous month.

**[pct_pme_diff_1mo]**: Percentage difference in product mix efficiency compared to one month back. Highlights changes in the effectiveness of the product mix over the past month.

**[pct_rev_diff_2mo]**: Percentage difference in sales revenue compared to two months back. Reflects the longer-term growth or decline in sales revenue.

**[pct_atv_diff_2mo]**: Percentage difference in average transaction value compared to two months back. Shows the change in average transaction value over a two-month period.

**[pct_pme_diff_2mo]**: Percentage difference in product mix efficiency compared to two months back. Highlights longer-term trends in the effectiveness of the product mix.
