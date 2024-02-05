CREATE TABLE [dbo].[Burial_FieldbookPage] (
    [Location]       VARCHAR (20) NOT NULL,
    [ExcavationYear] SMALLINT     NOT NULL,
    [BurialNumber]   SMALLINT     NOT NULL,
    [FieldBookID]    SMALLINT     NOT NULL,
    [PDFPageNumber]  SMALLINT     NOT NULL,
    CONSTRAINT [PK_Burial_FieldbookPage] PRIMARY KEY CLUSTERED ([Location] ASC, [BurialNumber] ASC, [FieldBookID] ASC, [PDFPageNumber] ASC, [ExcavationYear] ASC)
);

