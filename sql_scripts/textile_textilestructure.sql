CREATE TABLE [dbo].[Textile_TextileStructure] (
    [TextileID]        INT          NOT NULL,
    [BurialNumber]     SMALLINT     NULL,
    [TextileStructure] VARCHAR (23) NOT NULL,
    CONSTRAINT [PK_Textile_TextileStructure] PRIMARY KEY CLUSTERED ([TextileStructure] ASC, [TextileID] ASC)
);

