CREATE TABLE [Textile_Photo] (
  [BoxID] bigint,
  [TextileID] int,
  [IsCoverPhoto] bit
);

CREATE INDEX [CPK] ON  [Textile_Photo] ([BoxID], [TextileID]);