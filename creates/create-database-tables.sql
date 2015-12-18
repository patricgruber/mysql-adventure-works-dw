drop database if exists aw;
create database aw;

use aw;

CREATE TABLE DimAccount(
	AccountKey int PRIMARY KEY NOT NULL,
	ParentAccountKey int NULL,
	AccountCodeAlternateKey int NULL,
	ParentAccountCodeAlternateKey int NULL,
	AccountDescription varchar(50) NULL,
	AccountType varchar(50) NULL,
	Operator varchar(50) NULL,
	CustomMembers varchar(300) NULL,
	ValueType varchar(50) NULL,
	CustomMemberOptions varchar(200) NULL
	);
	
CREATE TABLE DimCurrency(
	CurrencyKey int PRIMARY KEY NOT NULL,
	CurrencyAlternateKey char(3) NOT NULL,
	CurrencyName varchar(50) NOT NULL
	);



CREATE TABLE DimCustomer(
	CustomerKey int PRIMARY KEY NOT NULL,
	GeographyKey int NULL,
	CustomerAlternateKey varchar(15) NOT NULL,
	Title varchar(8) NULL,
	FirstName varchar(50) NULL,
	MiddleName varchar(50) NULL,
	LastName varchar(50) NULL,
	NameStyle bigint NULL,
	BirthDate datetime NULL,
	MaritalStatus char(1) NULL,
	Suffix varchar(10) NULL,
	Gender varchar(1) NULL,
	EmailAddress varchar(50) NULL,
	YearlyIncome decimal(22,2) NULL,
	TotalChildren bigint NULL,
	NumberChildrenAtHome bigint NULL,
	EnglishEducation varchar(40) NULL,
	EnglishOccupation varchar(100) NULL,
	HouseOwnerFlag char(1) NULL,
	NumberCarsOwned bigint NULL,
	AddressLine1 varchar(120) NULL,
	AddressLine2 varchar(120) NULL,
	Phone varchar(20) NULL,
	DateFirstPurchase TIMESTAMP NULL,
	CommuteDistance varchar(15) NULL
	);

CREATE TABLE DimDepartmentGroup(
	DepartmentGroupKey int PRIMARY KEY NOT NULL,
	ParentDepartmentGroupKey int NULL,
	DepartmentGroupName varchar(50) NULL
	);
	
CREATE TABLE DimEmployee(
	EmployeeKey int PRIMARY KEY NOT NULL,
	ParentEmployeeKey int NULL,
	EmployeeNationalIDAlternateKey varchar(15) NULL,
	ParentEmployeeNationalIDAltKey varchar(15) NULL,
	SalesTerritoryKey int NULL,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	MiddleName varchar(50) NULL,
	NameStyle bigint NOT NULL,
	Title varchar(50) NULL,
	HireDate bigint NULL,
	BirthDate bigint NULL,
	LoginID varchar(256) NULL,
	EmailAddress varchar(50) NULL,
	Phone varchar(25) NULL,
	MaritalStatus char(1) NULL,
	EmergencyContactName varchar(50) NULL,
	EmergencyContactPhone varchar(25) NULL,
	SalariedFlag bigint NULL,
	Gender char(1) NULL,
	PayFrequency bigint NULL,
	BaseRate decimal(22,5) NULL,
	VacationHours bigint NULL,
	SickLeaveHours bigint NULL,
	CurrentFlag bigint NOT NULL,
	SalesPersonFlag bigint NOT NULL,
	DepartmentName varchar(50) NULL,
	StartDate bigint NULL,
	EndDate bigint NULL,
	Status varchar(50) NULL
	);
	
CREATE TABLE DimGeography(
	GeographyKey int PRIMARY KEY NOT NULL,
	City varchar(30) NULL,
	StateProvinceCode varchar(3) NULL,
	StateProvinceName varchar(50) NULL,
	CountryRegionCode varchar(3) NULL,
	EnglishCountryRegionName varchar(50) NULL,
	SpanishCountryRegionName varchar(50) NULL,
	FrenchCountryRegionName varchar(50) NULL,
	PostalCode varchar(15) NULL,
	SalesTerritoryKey int NULL);
	
	
CREATE TABLE DimOrganization(
	OrganizationKey int PRIMARY KEY NOT NULL,
	ParentOrganizationKey int NULL,
	PercentageOfOwnership varchar(16) NULL,
	OrganizationName varchar(50) NULL,
	CurrencyKey int NULL);
	
	
CREATE TABLE DimProduct(
	ProductKey int PRIMARY KEY NOT NULL,
	ProductAlternateKey varchar(25) NULL,
	ProductSubcategoryKey int NULL,
	WeightUnitMeasureCode char(3) NULL,
	SizeUnitMeasureCode char(3) NULL,
	EnglishProductName varchar(50) NOT NULL,
	StandardCost decimal(22,2) NULL,
	FinishedGoodsFlag bigint NOT NULL,
	Color varchar(15) NOT NULL,
	SafetyStockLevel bigint NULL,
	ReorderPoint bigint NULL,
	ListPrice decimal(13,2) NULL,
	SizeActual varchar(50) NULL,
	SizeRange varchar(50) NULL,
	Weight float NULL,
	DaysToManufacture int NULL,
	ProductLine char(2) NULL,
	DealerPrice decimal(22,2) NULL,
	Class char(2) NULL,
	Style char(2) NULL,
	ModelName varchar(50) NULL,
	EnglishDescription varchar(400) NULL,
	StartDate TIMESTAMP NULL,
	EndDate TIMESTAMP NULL,
	Status varchar(7) NULL);

CREATE TABLE DimProductCategory(
	ProductCategoryKey int PRIMARY KEY NOT NULL,
	ProductCategoryAlternateKey int NULL,
	EnglishProductCategoryName varchar(50) NOT NULL,
	SpanishProductCategoryName varchar(50) NOT NULL,
	FrenchProductCategoryName varchar(50) NOT NULL);
	
CREATE TABLE DimProductSubcategory(
	ProductSubcategoryKey int PRIMARY KEY NOT NULL,
	ProductSubcategoryAlternateKey int NULL,
	EnglishProductSubcategoryName varchar(50) NOT NULL,
	SpanishProductSubcategoryName varchar(50) NOT NULL,
	FrenchProductSubcategoryName varchar(50) NOT NULL,
	ProductCategoryKey int NULL);
	
CREATE TABLE DimPromotion(
	PromotionKey int PRIMARY KEY NOT NULL,
	PromotionAlternateKey int NULL,
	EnglishPromotionName varchar(255) NULL,
	SpanishPromotionName varchar(255) NULL,
	FrenchPromotionName varchar(255) NULL,
	DiscountPct float NULL,
	EnglishPromotionType varchar(50) NULL,
	SpanishPromotionType varchar(50) NULL,
	FrenchPromotionType varchar(50) NULL,
	EnglishPromotionCategory varchar(50) NULL,
	SpanishPromotionCategory varchar(50) NULL,
	FrenchPromotionCategory varchar(50) NULL,
	StartDate bigint NOT NULL,
	EndDate bigint NULL,
	MinQty int NULL,
	MaxQty int NULL
	);
	
CREATE TABLE DimReseller(
	ResellerKey int PRIMARY KEY NOT NULL,
	GeographyKey int NULL,
	ResellerAlternateKey varchar(15) NULL,
	Phone varchar(25) NULL,
	BusinessType varchar(20) NOT NULL,
	ResellerName varchar(50) NOT NULL,
	NumberEmployees int NULL,
	OrderFrequency char(1) NULL,
	OrderMonth bigint NULL,
	FirstOrderYear int NULL,
	LastOrderYear int NULL,
	ProductLine varchar(50) NULL,
	AddressLine1 varchar(60) NULL,
	AddressLine2 varchar(60) NULL,
	AnnualSales decimal(22,2) NULL,
	BankName varchar(50) NULL,
	MinPaymentType bigint NULL,
	MinPaymentAmount decimal(22,2) NULL,
	AnnualRevenue decimal(22,2) NULL,
	YearOpened int NULL);
	
CREATE TABLE DimSalesReason(
	SalesReasonKey int PRIMARY KEY NOT NULL,
	SalesReasonAlternateKey int NOT NULL,
	SalesReasonName varchar(50) NOT NULL,
	SalesReasonReasonType varchar(50) NOT NULL);
	
CREATE TABLE DimSalesTerritory(
	SalesTerritoryKey int PRIMARY KEY NOT NULL,
	SalesTerritoryAlternateKey int NULL,
	SalesTerritoryRegion varchar(50) NOT NULL,
	SalesTerritoryCountry varchar(50) NOT NULL,
	SalesTerritoryGroup varchar(50) NULL);
	
CREATE TABLE DimScenario(
	ScenarioKey int PRIMARY KEY NOT NULL,
	ScenarioName varchar(50) NULL
	);
	

CREATE TABLE DimTime(
	TimeKey int PRIMARY KEY NOT NULL,
	FullDateAlternateKey TIMESTAMP NULL,
	DayNumberOfWeek bigint NULL,
	EnglishDayNameOfWeek varchar(10) NULL,
	SpanishDayNameOfWeek varchar(10) NULL,
	FrenchDayNameOfWeek varchar(10) NULL,
	DayNumberOfMonth bigint NULL,
	DayNumberOfYear bigint NULL,
	WeekNumberOfYear bigint NULL,
	EnglishMonthName varchar(10) NULL,
	SpanishMonthName varchar(10) NULL,
	FrenchMonthName varchar(10) NULL,
	MonthNumberOfYear bigint NULL,
	CalendarQuarter bigint NULL,
	CalendarYear char(4) NULL,
	CalendarSemester bigint NULL,
	FiscalQuarter bigint NULL,
	FiscalYear char(4) NULL,
	FiscalSemester bigint NULL
	);
  
  
CREATE TABLE FactCurrencyRate
(
	CurrencyKey int NOT NULL,
	TimeKey int NOT NULL,
	AverageRate float NOT NULL,
	EndOfDayRate float NOT NULL
);
  
	
CREATE TABLE FactFinance(
	TimeKey int NULL,
	OrganizationKey int NULL,
	DepartmentGroupKey int NULL,
	ScenarioKey int NULL,
	AccountKey int NULL,
	Amount float NULL
) ;

CREATE TABLE FactInternetSales(
	ProductKey int NOT NULL,
	OrderDateKey int NOT NULL,
	DueDateKey int NOT NULL,
	ShipDateKey int NOT NULL,
	CustomerKey int NOT NULL,
	PromotionKey int NOT NULL,
	CurrencyKey int NOT NULL,
	SalesTerritoryKey int NOT NULL,
	SalesOrderNumber varchar(20) NOT NULL,
	SalesOrderLineNumber bigint NOT NULL,
	RevisionNumber bigint NULL,
	OrderQuantity bigint NULL,
	UnitPrice decimal(22,2) NULL,
	ExtendedAmount decimal(22,2) NULL,
	UnitPriceDiscountPct float NULL,
	DiscountAmount float NULL,
	ProductStandardCost decimal(22,2) NULL,
	TotalProductCost decimal(22,2) NULL,
	SalesAmount decimal(22,2) NULL,
	TaxAmt decimal(22,2) NULL,
	Freight decimal(22,2) NULL,
	CarrierTrackingNumber varchar(25) NULL,
	CustomerPONumber varchar(25) NULL
	);