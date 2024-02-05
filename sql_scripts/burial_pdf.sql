CREATE TABLE [dbo].[Burial_PDF] (
    [Location]       NVARCHAR (20) NOT NULL,
    [ExcavationYear] SMALLINT      NOT NULL,
    [BurialNumber]   SMALLINT      NOT NULL,
    [BoxID]          BIGINT        NOT NULL,
    CONSTRAINT [PK_Burial_PDF] PRIMARY KEY CLUSTERED ([Location] ASC, [ExcavationYear] ASC, [BurialNumber] ASC, [BoxID] ASC)
);
