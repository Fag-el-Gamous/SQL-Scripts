CREATE TABLE [Person_Textile] (
  [PersonID] int,
  [TextileID] int
);

CREATE INDEX [CPK] ON  [Person_Textile] ([PersonID], [TextileID]);