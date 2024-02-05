CREATE TABLE [dbo].[Textile_TextileFunction] (
    [TextileID]       INT          NOT NULL,
    [TextileFunction] VARCHAR (19) NOT NULL,
    [BurialNumber]    SMALLINT     NULL,
    [Locale]          VARCHAR (20) NULL,
    CONSTRAINT [PK_Textile_TextileFunction] PRIMARY KEY CLUSTERED ([TextileFunction] ASC, [TextileID] ASC)
);
