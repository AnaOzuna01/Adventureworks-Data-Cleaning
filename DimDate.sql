-- Cleansed DimDate Table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] [Date], 
  [EnglishDayNameOfWeek] [Day], 
  [EnglishMonthName] [Month], 
  Left([EnglishMonthName], 3) [MonthShort], 
  [MonthNumberOfYear] [MonthNo], 
  [CalendarQuarter] [Quarter], 
  [CalendarYear] [Year]
FROM 
 [AdventureWorksDW2019].[dbo].[DimDate]