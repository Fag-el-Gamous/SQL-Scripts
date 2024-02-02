CREATE TABLE [Textile_TextileStructure] (
  [TextileID] int,
  [BurialNumber] smallint,
  [TextileStructure] varchar(23)
);

CREATE INDEX [CPK] ON  [Textile_TextileStructure] ([TextileID], [TextileStructure]);
