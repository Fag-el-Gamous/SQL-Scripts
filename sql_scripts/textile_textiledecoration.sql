CREATE TABLE [dbo].[Textile_TextileDecoration] (
    [TextileID]         INT          NOT NULL,
    [BurialNumber]      SMALLINT     NULL,
    [TextileDecoration] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Textile_TextileDecoration] PRIMARY KEY CLUSTERED ([TextileID] ASC, [TextileDecoration] ASC)
);

