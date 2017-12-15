
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/27/2017 13:49:59
-- Generated from EDMX file: C:\Users\zhato\source\repos\Ukraine delicacy\Delicacy UA\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Ukrainian_delicacy];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Basket_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Basket] DROP CONSTRAINT [FK_Basket_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_Products_TypesOfProductTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_TypesOfProductTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_TypesOfProductTypes_ProductTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TypesOfProductTypes] DROP CONSTRAINT [FK_TypesOfProductTypes_ProductTypes];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Basket]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Basket];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[ProductTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductTypes];
GO
IF OBJECT_ID(N'[dbo].[TypesOfProductTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypesOfProductTypes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Baskets'
CREATE TABLE [dbo].[Baskets] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ClientID] varchar(50)  NOT NULL,
    [ProductID] int  NOT NULL,
    [Amount] int  NOT NULL,
    [DatePurchased] datetime  NULL,
    [IsInBasket] bit  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type2Id] int  NOT NULL,
    [Name] varchar(100)  NULL,
    [Price] float  NULL,
    [Description] varchar(max)  NULL,
    [Image] varchar(150)  NULL
);
GO

-- Creating table 'ProductTypes'
CREATE TABLE [dbo].[ProductTypes] (
    [Id] int  NOT NULL,
    [Name] varchar(150)  NOT NULL
);
GO

-- Creating table 'TypesOfProductTypes'
CREATE TABLE [dbo].[TypesOfProductTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TypeID] int  NOT NULL,
    [Name] varchar(100)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Baskets'
ALTER TABLE [dbo].[Baskets]
ADD CONSTRAINT [PK_Baskets]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductTypes'
ALTER TABLE [dbo].[ProductTypes]
ADD CONSTRAINT [PK_ProductTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypesOfProductTypes'
ALTER TABLE [dbo].[TypesOfProductTypes]
ADD CONSTRAINT [PK_TypesOfProductTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProductID] in table 'Baskets'
ALTER TABLE [dbo].[Baskets]
ADD CONSTRAINT [FK_Basket_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Basket_Products'
CREATE INDEX [IX_FK_Basket_Products]
ON [dbo].[Baskets]
    ([ProductID]);
GO

-- Creating foreign key on [Type2Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_TypesOfProductTypes]
    FOREIGN KEY ([Type2Id])
    REFERENCES [dbo].[TypesOfProductTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_TypesOfProductTypes'
CREATE INDEX [IX_FK_Products_TypesOfProductTypes]
ON [dbo].[Products]
    ([Type2Id]);
GO

-- Creating foreign key on [TypeID] in table 'TypesOfProductTypes'
ALTER TABLE [dbo].[TypesOfProductTypes]
ADD CONSTRAINT [FK_TypesOfProductTypes_ProductTypes]
    FOREIGN KEY ([TypeID])
    REFERENCES [dbo].[ProductTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TypesOfProductTypes_ProductTypes'
CREATE INDEX [IX_FK_TypesOfProductTypes_ProductTypes]
ON [dbo].[TypesOfProductTypes]
    ([TypeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------