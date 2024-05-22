SQL Schema
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