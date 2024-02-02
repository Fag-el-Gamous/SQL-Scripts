CREATE TABLE [PDF_Textile] (
  [TextileID] int,
  [BoxID] bitint
);
CREATE INDEX [CPK] ON  [PDF_Textile] ([TextileID], [BoxID]);