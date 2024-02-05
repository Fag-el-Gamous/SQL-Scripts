CREATE TABLE [dbo].[Excavation] (
    [Location]          NVARCHAR (20)  NOT NULL,
    [Year]              SMALLINT       NOT NULL,
    [SourceInformation] VARCHAR (200)  NOT NULL,
    [Notes]             VARCHAR (1000) NULL,
    CONSTRAINT [PK_Excavation] PRIMARY KEY CLUSTERED ([Location] ASC, [Year] ASC, [SourceInformation] ASC)
);

