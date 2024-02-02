CREATE TABLE [Textile_TextileColor] (
  [TextileID] int,
  [BurialNumber] smallint,
  [TextileColor] varchar(6)
);

CREATE INDEX [CPK] ON  [Textile_TextileColor] ([TextileID], [TextileColor]);