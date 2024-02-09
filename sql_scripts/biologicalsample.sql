CREATE TABLE [dbo].[BiologicalSample] (
    [BiologicalSampleID ] INT            NOT NULL,
    [RackNumber]          SMALLINT       NULL,
    [BagNumber]           SMALLINT       NULL,
    [Location]            VARCHAR (20)   NULL,
    [ExcavationYear]      SMALLINT       NULL,
    [BurialNumber]        VARCHAR(50)       NULL,
    [BurialSampleNumber]  SMALLINT       NULL,
    [Date]                SMALLINT       NULL,
    [PreviouslySampled]   VARCHAR (50)   NULL,
    [Notes]               VARCHAR (1000) NULL,
    [C14ID]               INT            NULL,
    CONSTRAINT [PK_BiologicalSample] PRIMARY KEY CLUSTERED ([BiologicalSampleID ] ASC),
    CONSTRAINT [FK_BiologicalSample_Burial] FOREIGN KEY ([Location], [ExcavationYear], [BurialNumber]) REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber]),
    CONSTRAINT [FK_BiologicalSample_C14] FOREIGN KEY ([C14ID]) REFERENCES [dbo].[C14] ([C14ID]),
    CONSTRAINT [FK_BiologicalSample_Location] FOREIGN KEY ([Location]) REFERENCES [dbo].[Location] ([Location])
);

