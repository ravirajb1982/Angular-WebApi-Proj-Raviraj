
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/30/2016 03:58:11
-- Generated from EDMX file: C:\Users\beyon\documents\visual studio 2015\Projects\PingCo\PingCo\PingCo\PingCo\Model\PingCoModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PingCo];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AccountBGP]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BGPs] DROP CONSTRAINT [FK_AccountBGP];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountPaymentMethod]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PaymentMethods] DROP CONSTRAINT [FK_AccountPaymentMethod];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountsContacts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts1] DROP CONSTRAINT [FK_AccountsContacts];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountsContracts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contracts1] DROP CONSTRAINT [FK_AccountsContracts];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountsDevices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices1] DROP CONSTRAINT [FK_AccountsDevices];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountXConnect]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XConnects] DROP CONSTRAINT [FK_AccountXConnect];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountXConnect1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XConnects] DROP CONSTRAINT [FK_AccountXConnect1];
GO
IF OBJECT_ID(N'[dbo].[FK_BillingProfileContracts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contracts1] DROP CONSTRAINT [FK_BillingProfileContracts];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_CategoryProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractsServices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Services1] DROP CONSTRAINT [FK_ContractsServices];
GO
IF OBJECT_ID(N'[dbo].[FK_CredentialDevice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices1] DROP CONSTRAINT [FK_CredentialDevice];
GO
IF OBJECT_ID(N'[dbo].[FK_InterfaceDevices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Interfaces] DROP CONSTRAINT [FK_InterfaceDevices];
GO
IF OBJECT_ID(N'[dbo].[FK_InterfaceIPAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IPAddresses] DROP CONSTRAINT [FK_InterfaceIPAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_IPAddressVPLSCircuit]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VPLSCircuits1] DROP CONSTRAINT [FK_IPAddressVPLSCircuit];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationDevices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices1] DROP CONSTRAINT [FK_LocationDevices];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationVLAN]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VLANs] DROP CONSTRAINT [FK_LocationVLAN];
GO
IF OBJECT_ID(N'[dbo].[FK_VLANInterface_Interface]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VLANInterface] DROP CONSTRAINT [FK_VLANInterface_Interface];
GO
IF OBJECT_ID(N'[dbo].[FK_VLANInterface_VLAN]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VLANInterface] DROP CONSTRAINT [FK_VLANInterface_VLAN];
GO
IF OBJECT_ID(N'[dbo].[FK_VPLSCircuitIPAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VPLSCircuits1] DROP CONSTRAINT [FK_VPLSCircuitIPAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_VPLSCircuitsAccounts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VPLSCircuits1] DROP CONSTRAINT [FK_VPLSCircuitsAccounts];
GO
IF OBJECT_ID(N'[dbo].[FK_WatchGuardLicenseDevice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WatchGuardLicenses] DROP CONSTRAINT [FK_WatchGuardLicenseDevice];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Accounts1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts1];
GO
IF OBJECT_ID(N'[dbo].[BGPs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BGPs];
GO
IF OBJECT_ID(N'[dbo].[BillingProfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BillingProfiles];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Contacts1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts1];
GO
IF OBJECT_ID(N'[dbo].[Contracts1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contracts1];
GO
IF OBJECT_ID(N'[dbo].[Credentials1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Credentials1];
GO
IF OBJECT_ID(N'[dbo].[Devices1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Devices1];
GO
IF OBJECT_ID(N'[dbo].[Interfaces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Interfaces];
GO
IF OBJECT_ID(N'[dbo].[IPAddresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IPAddresses];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[PaymentMethods]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentMethods];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Services1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Services1];
GO
IF OBJECT_ID(N'[dbo].[VLANInterface]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VLANInterface];
GO
IF OBJECT_ID(N'[dbo].[VLANs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VLANs];
GO
IF OBJECT_ID(N'[dbo].[VPLSCircuits1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VPLSCircuits1];
GO
IF OBJECT_ID(N'[dbo].[WatchGuardLicenses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WatchGuardLicenses];
GO
IF OBJECT_ID(N'[dbo].[XConnects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XConnects];
GO
IF OBJECT_ID(N'[PingCoModelStoreContainer].[database_firewall_rules]', 'U') IS NOT NULL
    DROP TABLE [PingCoModelStoreContainer].[database_firewall_rules];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Accounts1'
CREATE TABLE [dbo].[Accounts1] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'BGPs'
CREATE TABLE [dbo].[BGPs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AccountId] int  NOT NULL
);
GO

-- Creating table 'BillingProfiles'
CREATE TABLE [dbo].[BillingProfiles] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Contacts1'
CREATE TABLE [dbo].[Contacts1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Account_Id] int  NOT NULL
);
GO

-- Creating table 'Contracts1'
CREATE TABLE [dbo].[Contracts1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BillingProfileId] int  NOT NULL,
    [Account_Id] int  NOT NULL
);
GO

-- Creating table 'Credentials1'
CREATE TABLE [dbo].[Credentials1] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Devices1'
CREATE TABLE [dbo].[Devices1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LocationId] int  NOT NULL,
    [CredentialId] int  NOT NULL,
    [RUHeight] nvarchar(max)  NOT NULL,
    [Account_Id] int  NOT NULL
);
GO

-- Creating table 'Interfaces'
CREATE TABLE [dbo].[Interfaces] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Device_Id] int  NOT NULL
);
GO

-- Creating table 'IPAddresses'
CREATE TABLE [dbo].[IPAddresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IsV6] bit  NOT NULL,
    [InterfaceId] int  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Subnet] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [RackId] nvarchar(max)  NOT NULL,
    [RU] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PaymentMethods'
CREATE TABLE [dbo].[PaymentMethods] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AccountId] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CategoryId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [DefaultSetup] nvarchar(max)  NOT NULL,
    [DefaultMRC] nvarchar(max)  NOT NULL,
    [DefaultTerm] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Services1'
CREATE TABLE [dbo].[Services1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartDate] nvarchar(max)  NOT NULL,
    [Term] nvarchar(max)  NOT NULL,
    [Units] nvarchar(max)  NOT NULL,
    [Quantity] nvarchar(max)  NOT NULL,
    [SetupFee] nvarchar(max)  NOT NULL,
    [Cost] nvarchar(max)  NOT NULL,
    [Contract_Id] int  NOT NULL
);
GO

-- Creating table 'VLANs'
CREATE TABLE [dbo].[VLANs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LocationId] int  NOT NULL
);
GO

-- Creating table 'VPLSCircuits1'
CREATE TABLE [dbo].[VPLSCircuits1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AccountsId] int  NOT NULL,
    [IPAddressId] int  NOT NULL,
    [IPAddressId1] int  NOT NULL
);
GO

-- Creating table 'WatchGuardLicenses'
CREATE TABLE [dbo].[WatchGuardLicenses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Product] nvarchar(max)  NOT NULL,
    [ProductCode] nvarchar(max)  NOT NULL,
    [License] nvarchar(max)  NOT NULL,
    [DateConsumed] nvarchar(max)  NOT NULL,
    [Device_Id] int  NOT NULL
);
GO

-- Creating table 'XConnects'
CREATE TABLE [dbo].[XConnects] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AccountId] int  NOT NULL,
    [AccountId1] int  NOT NULL
);
GO

-- Creating table 'database_firewall_rules'
CREATE TABLE [dbo].[database_firewall_rules] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(128)  NOT NULL,
    [start_ip_address] varchar(45)  NOT NULL,
    [end_ip_address] varchar(45)  NOT NULL,
    [create_date] datetime  NOT NULL,
    [modify_date] datetime  NOT NULL
);
GO

-- Creating table 'VLANInterface'
CREATE TABLE [dbo].[VLANInterface] (
    [Interfaces_Id] int  NOT NULL,
    [VLANs_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Accounts1'
ALTER TABLE [dbo].[Accounts1]
ADD CONSTRAINT [PK_Accounts1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BGPs'
ALTER TABLE [dbo].[BGPs]
ADD CONSTRAINT [PK_BGPs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BillingProfiles'
ALTER TABLE [dbo].[BillingProfiles]
ADD CONSTRAINT [PK_BillingProfiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacts1'
ALTER TABLE [dbo].[Contacts1]
ADD CONSTRAINT [PK_Contacts1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contracts1'
ALTER TABLE [dbo].[Contracts1]
ADD CONSTRAINT [PK_Contracts1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Credentials1'
ALTER TABLE [dbo].[Credentials1]
ADD CONSTRAINT [PK_Credentials1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Devices1'
ALTER TABLE [dbo].[Devices1]
ADD CONSTRAINT [PK_Devices1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Interfaces'
ALTER TABLE [dbo].[Interfaces]
ADD CONSTRAINT [PK_Interfaces]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IPAddresses'
ALTER TABLE [dbo].[IPAddresses]
ADD CONSTRAINT [PK_IPAddresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PaymentMethods'
ALTER TABLE [dbo].[PaymentMethods]
ADD CONSTRAINT [PK_PaymentMethods]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Services1'
ALTER TABLE [dbo].[Services1]
ADD CONSTRAINT [PK_Services1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VLANs'
ALTER TABLE [dbo].[VLANs]
ADD CONSTRAINT [PK_VLANs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VPLSCircuits1'
ALTER TABLE [dbo].[VPLSCircuits1]
ADD CONSTRAINT [PK_VPLSCircuits1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WatchGuardLicenses'
ALTER TABLE [dbo].[WatchGuardLicenses]
ADD CONSTRAINT [PK_WatchGuardLicenses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'XConnects'
ALTER TABLE [dbo].[XConnects]
ADD CONSTRAINT [PK_XConnects]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id], [name], [start_ip_address], [end_ip_address], [create_date], [modify_date] in table 'database_firewall_rules'
ALTER TABLE [dbo].[database_firewall_rules]
ADD CONSTRAINT [PK_database_firewall_rules]
    PRIMARY KEY CLUSTERED ([id], [name], [start_ip_address], [end_ip_address], [create_date], [modify_date] ASC);
GO

-- Creating primary key on [Interfaces_Id], [VLANs_Id] in table 'VLANInterface'
ALTER TABLE [dbo].[VLANInterface]
ADD CONSTRAINT [PK_VLANInterface]
    PRIMARY KEY CLUSTERED ([Interfaces_Id], [VLANs_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AccountId] in table 'BGPs'
ALTER TABLE [dbo].[BGPs]
ADD CONSTRAINT [FK_AccountBGP]
    FOREIGN KEY ([AccountId])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountBGP'
CREATE INDEX [IX_FK_AccountBGP]
ON [dbo].[BGPs]
    ([AccountId]);
GO

-- Creating foreign key on [AccountId] in table 'PaymentMethods'
ALTER TABLE [dbo].[PaymentMethods]
ADD CONSTRAINT [FK_AccountPaymentMethod]
    FOREIGN KEY ([AccountId])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountPaymentMethod'
CREATE INDEX [IX_FK_AccountPaymentMethod]
ON [dbo].[PaymentMethods]
    ([AccountId]);
GO

-- Creating foreign key on [Account_Id] in table 'Contacts1'
ALTER TABLE [dbo].[Contacts1]
ADD CONSTRAINT [FK_AccountsContacts]
    FOREIGN KEY ([Account_Id])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountsContacts'
CREATE INDEX [IX_FK_AccountsContacts]
ON [dbo].[Contacts1]
    ([Account_Id]);
GO

-- Creating foreign key on [Account_Id] in table 'Contracts1'
ALTER TABLE [dbo].[Contracts1]
ADD CONSTRAINT [FK_AccountsContracts]
    FOREIGN KEY ([Account_Id])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountsContracts'
CREATE INDEX [IX_FK_AccountsContracts]
ON [dbo].[Contracts1]
    ([Account_Id]);
GO

-- Creating foreign key on [Account_Id] in table 'Devices1'
ALTER TABLE [dbo].[Devices1]
ADD CONSTRAINT [FK_AccountsDevices]
    FOREIGN KEY ([Account_Id])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountsDevices'
CREATE INDEX [IX_FK_AccountsDevices]
ON [dbo].[Devices1]
    ([Account_Id]);
GO

-- Creating foreign key on [AccountId] in table 'XConnects'
ALTER TABLE [dbo].[XConnects]
ADD CONSTRAINT [FK_AccountXConnect]
    FOREIGN KEY ([AccountId])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountXConnect'
CREATE INDEX [IX_FK_AccountXConnect]
ON [dbo].[XConnects]
    ([AccountId]);
GO

-- Creating foreign key on [AccountId1] in table 'XConnects'
ALTER TABLE [dbo].[XConnects]
ADD CONSTRAINT [FK_AccountXConnect1]
    FOREIGN KEY ([AccountId1])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountXConnect1'
CREATE INDEX [IX_FK_AccountXConnect1]
ON [dbo].[XConnects]
    ([AccountId1]);
GO

-- Creating foreign key on [AccountsId] in table 'VPLSCircuits1'
ALTER TABLE [dbo].[VPLSCircuits1]
ADD CONSTRAINT [FK_VPLSCircuitsAccounts]
    FOREIGN KEY ([AccountsId])
    REFERENCES [dbo].[Accounts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VPLSCircuitsAccounts'
CREATE INDEX [IX_FK_VPLSCircuitsAccounts]
ON [dbo].[VPLSCircuits1]
    ([AccountsId]);
GO

-- Creating foreign key on [BillingProfileId] in table 'Contracts1'
ALTER TABLE [dbo].[Contracts1]
ADD CONSTRAINT [FK_BillingProfileContracts]
    FOREIGN KEY ([BillingProfileId])
    REFERENCES [dbo].[BillingProfiles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BillingProfileContracts'
CREATE INDEX [IX_FK_BillingProfileContracts]
ON [dbo].[Contracts1]
    ([BillingProfileId]);
GO

-- Creating foreign key on [CategoryId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_CategoryProducts]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryProducts'
CREATE INDEX [IX_FK_CategoryProducts]
ON [dbo].[Products]
    ([CategoryId]);
GO

-- Creating foreign key on [Contract_Id] in table 'Services1'
ALTER TABLE [dbo].[Services1]
ADD CONSTRAINT [FK_ContractsServices]
    FOREIGN KEY ([Contract_Id])
    REFERENCES [dbo].[Contracts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractsServices'
CREATE INDEX [IX_FK_ContractsServices]
ON [dbo].[Services1]
    ([Contract_Id]);
GO

-- Creating foreign key on [CredentialId] in table 'Devices1'
ALTER TABLE [dbo].[Devices1]
ADD CONSTRAINT [FK_CredentialDevice]
    FOREIGN KEY ([CredentialId])
    REFERENCES [dbo].[Credentials1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CredentialDevice'
CREATE INDEX [IX_FK_CredentialDevice]
ON [dbo].[Devices1]
    ([CredentialId]);
GO

-- Creating foreign key on [Device_Id] in table 'Interfaces'
ALTER TABLE [dbo].[Interfaces]
ADD CONSTRAINT [FK_InterfaceDevices]
    FOREIGN KEY ([Device_Id])
    REFERENCES [dbo].[Devices1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InterfaceDevices'
CREATE INDEX [IX_FK_InterfaceDevices]
ON [dbo].[Interfaces]
    ([Device_Id]);
GO

-- Creating foreign key on [LocationId] in table 'Devices1'
ALTER TABLE [dbo].[Devices1]
ADD CONSTRAINT [FK_LocationDevices]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationDevices'
CREATE INDEX [IX_FK_LocationDevices]
ON [dbo].[Devices1]
    ([LocationId]);
GO

-- Creating foreign key on [Device_Id] in table 'WatchGuardLicenses'
ALTER TABLE [dbo].[WatchGuardLicenses]
ADD CONSTRAINT [FK_WatchGuardLicenseDevice]
    FOREIGN KEY ([Device_Id])
    REFERENCES [dbo].[Devices1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WatchGuardLicenseDevice'
CREATE INDEX [IX_FK_WatchGuardLicenseDevice]
ON [dbo].[WatchGuardLicenses]
    ([Device_Id]);
GO

-- Creating foreign key on [InterfaceId] in table 'IPAddresses'
ALTER TABLE [dbo].[IPAddresses]
ADD CONSTRAINT [FK_InterfaceIPAddress]
    FOREIGN KEY ([InterfaceId])
    REFERENCES [dbo].[Interfaces]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InterfaceIPAddress'
CREATE INDEX [IX_FK_InterfaceIPAddress]
ON [dbo].[IPAddresses]
    ([InterfaceId]);
GO

-- Creating foreign key on [IPAddressId1] in table 'VPLSCircuits1'
ALTER TABLE [dbo].[VPLSCircuits1]
ADD CONSTRAINT [FK_IPAddressVPLSCircuit]
    FOREIGN KEY ([IPAddressId1])
    REFERENCES [dbo].[IPAddresses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IPAddressVPLSCircuit'
CREATE INDEX [IX_FK_IPAddressVPLSCircuit]
ON [dbo].[VPLSCircuits1]
    ([IPAddressId1]);
GO

-- Creating foreign key on [IPAddressId] in table 'VPLSCircuits1'
ALTER TABLE [dbo].[VPLSCircuits1]
ADD CONSTRAINT [FK_VPLSCircuitIPAddress]
    FOREIGN KEY ([IPAddressId])
    REFERENCES [dbo].[IPAddresses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VPLSCircuitIPAddress'
CREATE INDEX [IX_FK_VPLSCircuitIPAddress]
ON [dbo].[VPLSCircuits1]
    ([IPAddressId]);
GO

-- Creating foreign key on [LocationId] in table 'VLANs'
ALTER TABLE [dbo].[VLANs]
ADD CONSTRAINT [FK_LocationVLAN]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationVLAN'
CREATE INDEX [IX_FK_LocationVLAN]
ON [dbo].[VLANs]
    ([LocationId]);
GO

-- Creating foreign key on [Interfaces_Id] in table 'VLANInterface'
ALTER TABLE [dbo].[VLANInterface]
ADD CONSTRAINT [FK_VLANInterface_Interfaces]
    FOREIGN KEY ([Interfaces_Id])
    REFERENCES [dbo].[Interfaces]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [VLANs_Id] in table 'VLANInterface'
ALTER TABLE [dbo].[VLANInterface]
ADD CONSTRAINT [FK_VLANInterface_VLANs]
    FOREIGN KEY ([VLANs_Id])
    REFERENCES [dbo].[VLANs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VLANInterface_VLANs'
CREATE INDEX [IX_FK_VLANInterface_VLANs]
ON [dbo].[VLANInterface]
    ([VLANs_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------