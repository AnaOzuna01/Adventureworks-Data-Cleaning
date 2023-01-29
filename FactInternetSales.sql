-- Cleansed FactInternetSales Table
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesTerritoryKey]
  [SalesOrderNumber], 
  [OrderQuantity], 
  [UnitPrice], 
  [ExtendedAmount],
  [UnitPriceDiscountPct],
  [DiscountAmount],
  [ProductStandardCost],
  [TotalProductCost], 
  [SalesAmount],
  [TaxAmt]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
ORDER BY
  OrderDateKey ASC