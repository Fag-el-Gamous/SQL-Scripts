CREATE TABLE [dbo].[Burial_Photo] (
    [BoxID]          BIGINT        NOT NULL,
    [Location]       NVARCHAR (20) NOT NULL,
    [ExcavationYear] SMALLINT      NOT NULL,
    [BurialNumber]   SMALLINT      NOT NULL,
    [IsCoverPhoto]   BIT           NULL,
    CONSTRAINT [PK_Burial_Photo] PRIMARY KEY CLUSTERED ([BoxID] ASC, [Location] ASC, [ExcavationYear] ASC, [BurialNumber] ASC)
);

