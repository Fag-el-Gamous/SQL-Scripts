CREATE TABLE [dbo].[Textile_TextileDimension] (
    [TextileID]         INT            NOT NULL,
    [DimensionID]       INT            NOT NULL,
    [BurialNumber]      SMALLINT       NULL,
    [CentimetersLength] NUMERIC (5, 2) NULL,
    CONSTRAINT [PK_Textile_TextileDimension] PRIMARY KEY CLUSTERED ([TextileID] ASC, [DimensionID] ASC)
);

