SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimStore] (
		[StoreKey]             [int] IDENTITY(1, 1) NOT NULL,
		[GeographyKey]         [int] NOT NULL,
		[StoreManager]         [int] NULL,
		[StoreType]            [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StoreName]            [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[StoreDescription]     [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Status]               [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[OpenDate]             [datetime] NOT NULL,
		[CloseDate]            [datetime] NULL,
		[EntityKey]            [int] NULL,
		[ZipCode]              [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ZipCodeExtension]     [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StorePhone]           [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StoreFax]             [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AddressLine1]         [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AddressLine2]         [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CloseReason]          [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EmployeeCount]        [int] NULL,
		[SellingAreaSize]      [float] NULL,
		[LastRemodelDate]      [datetime] NULL,
		[GeoLocation]          [geography] NULL,
		[Geometry]             [geometry] NULL,
		[ETLLoadID]            [int] NULL,
		[LoadDate]             [datetime] NULL,
		[UpdateDate]           [datetime] NULL,
		CONSTRAINT [PK__DimStore__ADC1E1ADBDB784DD]
		PRIMARY KEY
		CLUSTERED
		([StoreKey])
	WITH (	DATA_COMPRESSION = PAGE, FILLFACTOR = 100)
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimStore]
	WITH CHECK
	ADD CONSTRAINT [FK__DimStore__Geogra__398D8EEE]
	FOREIGN KEY ([GeographyKey]) REFERENCES [dbo].[DimGeography] ([GeographyKey])
ALTER TABLE [dbo].[DimStore]
	CHECK CONSTRAINT [FK__DimStore__Geogra__398D8EEE]

GO
ALTER TABLE [dbo].[DimStore] SET (LOCK_ESCALATION = TABLE)
GO
