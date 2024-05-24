SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[sales_analysis] AS
WITH sales_data AS (
    SELECT
        store_location,
        product_category,
        DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1) AS month,
        SUM(transaction_qty * unit_price) AS sales_rev,
        AVG(transaction_qty * unit_price) AS avg_atv,
        SUM(transaction_qty * unit_price) * 1.0 / NULLIF(SUM(SUM(transaction_qty * unit_price)) OVER (PARTITION BY DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1), store_location), 0) * 100 AS prod_mix_eff
    FROM dbo.CoffeeShopSales
    WHERE transaction_date BETWEEN '2023-01-01' AND '2023-06-30'
    GROUP BY store_location, product_category, DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1)
),
one_month_back AS (
    SELECT
        store_location,
        product_category,
        DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1) AS month,
        SUM(transaction_qty * unit_price) AS sales_rev_1mo_back,
        AVG(transaction_qty * unit_price) AS avg_atv_1mo_back,
        SUM(transaction_qty * unit_price) * 1.0 / NULLIF(SUM(SUM(transaction_qty * unit_price)) OVER (PARTITION BY DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1), store_location), 0) * 100 AS prod_mix_eff_1mo_back
    FROM dbo.CoffeeShopSales
    WHERE transaction_date BETWEEN '2022-12-01' AND '2023-05-31'
    GROUP BY store_location, product_category, DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1)
),
two_months_back AS (
    SELECT
        store_location,
        product_category,
        DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1) AS month,
        SUM(transaction_qty * unit_price) AS sales_rev_2mo_back,
        AVG(transaction_qty * unit_price) AS avg_atv_2mo_back,
        SUM(transaction_qty * unit_price) * 1.0 / NULLIF(SUM(SUM(transaction_qty * unit_price)) OVER (PARTITION BY DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1), store_location), 0) * 100 AS prod_mix_eff_2mo_back
    FROM dbo.CoffeeShopSales
    WHERE transaction_date BETWEEN '2022-11-01' AND '2023-04-30'
    GROUP BY store_location, product_category, DATEFROMPARTS(YEAR(transaction_date), MONTH(transaction_date), 1)
)
SELECT
    sd.store_location,
    sd.product_category,
    sd.month,
    sd.sales_rev,
    sd.avg_atv,
    sd.prod_mix_eff,
    omb.sales_rev_1mo_back,
    omb.avg_atv_1mo_back,
    omb.prod_mix_eff_1mo_back,
    tmb.sales_rev_2mo_back,
    tmb.avg_atv_2mo_back,
    tmb.prod_mix_eff_2mo_back,
    CASE 
        WHEN omb.sales_rev_1mo_back IS NOT NULL THEN ((sd.sales_rev - omb.sales_rev_1mo_back) / NULLIF(omb.sales_rev_1mo_back, 0)) * 100 
        ELSE NULL 
    END AS pct_rev_diff_1mo,
    CASE 
        WHEN omb.avg_atv_1mo_back IS NOT NULL THEN ((sd.avg_atv - omb.avg_atv_1mo_back) / NULLIF(omb.avg_atv_1mo_back, 0)) * 100 
        ELSE NULL 
    END AS pct_atv_diff_1mo,
    CASE 
        WHEN omb.prod_mix_eff_1mo_back IS NOT NULL THEN ((sd.prod_mix_eff - omb.prod_mix_eff_1mo_back) / NULLIF(omb.prod_mix_eff_1mo_back, 0)) * 100 
        ELSE NULL 
    END AS pct_pme_diff_1mo,
    CASE 
        WHEN tmb.sales_rev_2mo_back IS NOT NULL THEN ((sd.sales_rev - tmb.sales_rev_2mo_back) / NULLIF(tmb.sales_rev_2mo_back, 0)) * 100 
        ELSE NULL 
    END AS pct_rev_diff_2mo,
    CASE 
        WHEN tmb.avg_atv_2mo_back IS NOT NULL THEN ((sd.avg_atv - tmb.avg_atv_2mo_back) / NULLIF(tmb.avg_atv_2mo_back, 0)) * 100 
        ELSE NULL 
    END AS pct_atv_diff_2mo,
    CASE 
        WHEN tmb.prod_mix_eff_2mo_back IS NOT NULL THEN ((sd.prod_mix_eff - tmb.prod_mix_eff_2mo_back) / NULLIF(tmb.prod_mix_eff_2mo_back, 0)) * 100 
        ELSE NULL 
    END AS pct_pme_diff_2mo
FROM sales_data sd
LEFT JOIN one_month_back omb ON sd.store_location = omb.store_location AND sd.product_category = omb.product_category AND DATEADD(MONTH, -1, sd.month) = omb.month
LEFT JOIN two_months_back tmb ON sd.store_location = tmb.store_location AND sd.product_category = tmb.product_category AND DATEADD(MONTH, -2, sd.month) = tmb.month;
GO
