CREATE TABLE [Textile_TextileFunction] (
  [TextileID] int,
  [TextileFunction] varchar(19),
  [BurialNumber] smallint,
  [Locale] <type>
);

CREATE INDEX [CPK] ON  [Textile_TextileFunction] ([TextileID], [TextileFunction]);