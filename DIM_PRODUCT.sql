--Cleansed DIM_Product Key--
SELECT 
  [ProductKey] AS [Product Key], 
  [ProductAlternateKey] AS [Product Item Code], 
  -- ,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  [EnglishProductName] AS [ Product Name], 
  ps.[EnglishProductSubcategoryName] AS [Sub Category], 
  -- Joined in from Sub Category Table
  pc.[EnglishProductCategoryName] AS [Product Category], 
  -- Joined in from Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  -- ,[StandardCost]
  -- ,[FinishedGoodsFlag]
  [Color] AS [Product Color], 
  --[SafetyStockLevel] 
  -- [ReorderPoint],
  --[ListPrice],
  [Size] AS [Product Size], 
  -- ,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  [ProductLine] AS [Product Line], 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  [ModelName] AS [Product Model Name], 
  --,[LargePhoto]
  [EnglishDescription] AS [Product English Description], 
  -- ,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  -- [StartDate]
  -- ,[EndDate]
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc
