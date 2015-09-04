﻿CREATE TABLE [dbo].[FactResellerSales] (
    [ProductKey]            INT           NOT NULL,
    [OrderDateKey]          INT           NOT NULL,
    [DueDateKey]            INT           NOT NULL,
    [ShipDateKey]           INT           NOT NULL,
    [ResellerKey]           INT           NOT NULL,
    [EmployeeKey]           INT           NOT NULL,
    [PromotionKey]          INT           NOT NULL,
    [CurrencyKey]           INT           NOT NULL,
    [SalesTerritoryKey]     INT           NOT NULL,
    [SalesOrderNumber]      NVARCHAR (20) NOT NULL,
    [SalesOrderLineNumber]  TINYINT       NOT NULL,
    [RevisionNumber]        TINYINT       NULL,
    [OrderQuantity]         SMALLINT      NULL,
    [UnitPrice]             MONEY         NULL,
    [ExtendedAmount]        MONEY         NULL,
    [UnitPriceDiscountPct]  FLOAT (53)    NULL,
    [DiscountAmount]        FLOAT (53)    NULL,
    [ProductStandardCost]   MONEY         NULL,
    [TotalProductCost]      MONEY         NULL,
    [SalesAmount]           MONEY         NULL,
    [TaxAmt]                MONEY         NULL,
    [Freight]               MONEY         NULL,
    [CarrierTrackingNumber] NVARCHAR (25) NULL,
    [CustomerPONumber]      NVARCHAR (25) NULL,
    [OrderDate]             DATETIME      NULL,
    [DueDate]               DATETIME      NULL,
    [ShipDate]              DATETIME      NULL,
    CONSTRAINT [PK_FactResellerSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED ([SalesOrderNumber] ASC, [SalesOrderLineNumber] ASC),
    CONSTRAINT [FK_FactResellerSales_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey]),
    CONSTRAINT [FK_FactResellerSales_DimDate] FOREIGN KEY ([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactResellerSales_DimDate1] FOREIGN KEY ([DueDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactResellerSales_DimDate2] FOREIGN KEY ([ShipDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactResellerSales_DimEmployee] FOREIGN KEY ([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_FactResellerSales_DimProduct] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
    CONSTRAINT [FK_FactResellerSales_DimPromotion] FOREIGN KEY ([PromotionKey]) REFERENCES [dbo].[DimPromotion] ([PromotionKey]),
    CONSTRAINT [FK_FactResellerSales_DimReseller] FOREIGN KEY ([ResellerKey]) REFERENCES [dbo].[DimReseller] ([ResellerKey]),
    CONSTRAINT [FK_FactResellerSales_DimSalesTerritory] FOREIGN KEY ([SalesTerritoryKey]) REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_CurrencyKey]
    ON [dbo].[FactResellerSales]([CurrencyKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_DueDateKey]
    ON [dbo].[FactResellerSales]([DueDateKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_OrderDateKey]
    ON [dbo].[FactResellerSales]([OrderDateKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_ProductKey]
    ON [dbo].[FactResellerSales]([ProductKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_PromotionKey]
    ON [dbo].[FactResellerSales]([PromotionKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_ShipDateKey]
    ON [dbo].[FactResellerSales]([ShipDateKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_EmployeeKey]
    ON [dbo].[FactResellerSales]([EmployeeKey] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FactResellerSales_ResellerKey]
    ON [dbo].[FactResellerSales]([ResellerKey] ASC);

