CREATE TABLE [dbo].[Textile] (
    [TextileID]              INT            NOT NULL,
    [BurialNumber]           SMALLINT       NULL,
    [ExcavationYear]         SMALLINT       NULL,
    [Location]               NVARCHAR (13)  NULL,
    [TextileReferenceNumber] VARCHAR (6)    NULL,
    [AnalysisType]           VARCHAR (20)   NULL,
    [AnalysisDate]           DATE           NULL,
    [SampleTakenDate]        DATE           NULL,
    [Description]            VARCHAR (1000) NULL,
    [AnalysisBy]             VARCHAR (20)   NULL,
    CONSTRAINT [PK_Textile] PRIMARY KEY CLUSTERED ([TextileID] ASC)
);

