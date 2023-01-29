-- Cleansed DimEmployee Table
SELECT
	[EmployeeKey],
	[ParentEmployeeKey],
    [EmployeeNationalIDAlternateKey],
    [ParentEmployeeNationalIDAlternateKey],
    [SalesTerritoryKey],
	CASE  WHEN DepartmentName = 'Document Control' THEN 1 
		  WHEN DepartmentName = 'Engineering' THEN 2
		  WHEN DepartmentName = 'Executive' THEN 3
		  WHEN DepartmentName = 'Facilities and Maintenance' THEN 4
		  WHEN DepartmentName = 'Finance' THEN 5
		  WHEN DepartmentName = 'Human Resources' THEN 6 
		  WHEN DepartmentName = 'Information Services' THEN 7 
		  WHEN DepartmentName = 'Marketing' THEN 8
		  WHEN DepartmentName = 'Production' THEN 9 
		  WHEN DepartmentName = 'Production Control' THEN 10 
		  WHEN DepartmentName = 'Purchasing' THEN 11
		  WHEN DepartmentName = 'Quality Assurance' THEN 12
		  WHEN DepartmentName = 'Research and Development' THEN 13
		  WHEN DepartmentName = 'Sales' THEN 14
		  WHEN DepartmentName = 'Shipping and Receiving' THEN 15
  		  WHEN DepartmentName = 'Tool Design' THEN 16 END AS DepartmentKey
	[FirstName],
	[LastName],
	FirstName + ' ' + LastName FullName,
    [MiddleName],
    [NameStyle],
    [Title],
    [HireDate],
    [BirthDate],
    [LoginID],
    [EmailAddress],
    [Phone],
    [MaritalStatus],
    [EmergencyContactName],
    [EmergencyContactPhone],
    [SalariedFlag],
    [Gender],
    [PayFrequency],
    [BaseRate],
    [VacationHours],
    [SickLeaveHours],
    [CurrentFlag],
    [SalesPersonFlag],
    [DepartmentName],
    [StartDate],
    [EndDate],
    [Status]
FROM
	[AdventureWorksDW2019].[dbo].[DimEmployee]