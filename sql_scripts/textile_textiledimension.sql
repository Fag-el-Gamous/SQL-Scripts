CREATE TABLE [Textile_TextileDimension] (
  [TextileID] int,
  [DimensionID] int,
  [BurialNumber] smallint,
  [CentimetersLength] numeric(5,2),
  CONSTRAINT [FK_Textile_TextileDimension.DimensionID]
    FOREIGN KEY ([DimensionID])
      REFERENCES [TextileDimension]([DimensionID])
);

CREATE INDEX [CPK] ON  [Textile_TextileDimension] ([TextileID], [DimensionID]);