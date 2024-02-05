CREATE TABLE [dbo].[BiologicalSample] (
    [BiologicalSampleID ] INT            NOT NULL,
    [RackNumber]          SMALLINT       NULL,
    [BagNumber]           SMALLINT       NULL,
    [Location]            VARCHAR (20)   NULL,
    [ExcavationYear]      SMALLINT       NULL,
    [BurialNumber]        SMALLINT       NULL,
    [BurialSampleNumber]  SMALLINT       NULL,
    [Date]                SMALLINT       NULL,
    [PreviouslySampled]   VARCHAR (50)   NULL,
    [Notes]               VARCHAR (1000) NULL,
    CONSTRAINT [PK_BiologicalSample] PRIMARY KEY CLUSTERED ([BiologicalSampleID ] ASC)
);