CREATE TABLE [dbo].[Textile_TextileColor] (
    [TextileID]    INT         NOT NULL,
    [BurialNumber] SMALLINT    NULL,
    [TextileColor] VARCHAR (6) NOT NULL,
    CONSTRAINT [PK_Textile_TextileColor] PRIMARY KEY CLUSTERED ([TextileID] ASC, [TextileColor] ASC)
);

