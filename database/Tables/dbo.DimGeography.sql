SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimGeography] (
		[GeographyKey]          [int] IDENTITY(1, 1) NOT NULL,
		[GeographyType]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ContinentName]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CityName]              [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StateProvinceName]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[RegionCountryName]     [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Geometry]              [geometry] NULL,
		[ETLLoadID]             [int] NULL,
		[LoadDate]              [datetime] NULL,
		[UpdateDate]            [datetime] NULL,
		CONSTRAINT [PK__DimGeogr__F81E8E6BA6CAD4FD]
		PRIMARY KEY
		CLUSTERED
		([GeographyKey])
	WITH FILLFACTOR=100
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimGeography] SET (LOCK_ESCALATION = TABLE)
GO
