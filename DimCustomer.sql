-- Cleansed DimCustomer Table
SELECT 
  C.CustomerKey CustomerKey,
  [Title],
  C.FirstName [First Name],
  C.LastName [Last Name], 
  C.FirstName + ' ' + LastName [Full Name],
  [BirthDate],
  DATEDIFF(YEAR, BirthDate, GETDATE()) Age,
  CASE C.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END Gender,
  [YearlyIncome],
  [EnglishEducation],
  [EnglishOccupation],
  C.DateFirstPurchase DateFirstPurchase, 
  G.City [Customer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] C
  LEFT JOIN dbo.DimGeography G ON G.GeographyKey = C.GeographyKey 
ORDER BY 
  CustomerKey ASC