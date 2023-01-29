-- Cleansed DimProducts Table
SELECT 
  P.[ProductKey], 
  P.[ProductAlternateKey] ProductItemCode, 
  P.[EnglishProductName] [Product Name], 
  PS.EnglishProductSubcategoryName [Sub Category], 
  PC.EnglishProductCategoryName [Product Category], 
  P.[Color] [Product Color], 
  P.[Size] [Product Size], 
  P.[ProductLine] [Product Line], 
  P.[ModelName] [Product Model Name], 
  P.[EnglishDescription] [Product Description], 
  ISNULL (P.Status, 'Outdated') [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as P
  LEFT JOIN dbo.DimProductSubcategory PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory PC ON PS.ProductCategoryKey = PC.ProductCategoryKey 
order by 
  P.ProductKey asc