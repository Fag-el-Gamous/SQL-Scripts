CREATE TABLE [dbo].[Burial_PDF] (
    [Location]       VARCHAR (20) NOT NULL,
    [ExcavationYear] SMALLINT     NOT NULL,
    [BurialNumber]   SMALLINT     NOT NULL,
    [BoxID]          BIGINT       NOT NULL,
    CONSTRAINT [PK_Burial_PDF] PRIMARY KEY CLUSTERED ([Location] ASC, [ExcavationYear] ASC, [BurialNumber] ASC, [BoxID] ASC),
    CONSTRAINT [FK_Burial_PDF_Burial] FOREIGN KEY ([Location], [ExcavationYear], [BurialNumber]) REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber]),
    CONSTRAINT [FK_Burial_PDF_PDF] FOREIGN KEY ([BoxID]) REFERENCES [dbo].[PDF] ([BoxID])
);

