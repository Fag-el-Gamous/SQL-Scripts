CREATE TABLE [Textile_TextileDecoration] (
  [TextileID] int,
  [BurialNumber] smallint,
  [TextileDecoration] varchar(50)
);

CREATE INDEX [CPK] ON  [Textile_TextileDecoration] ([TextileID], [TextileDecoration]);