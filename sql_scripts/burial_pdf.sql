CREATE TABLE [Burial_PDF] (
  [Location] nvarchar(13),
  [ExcavationYear] smallint,
  [BurialNumber] smallint,
  [BoxID] bigint
);

CREATE INDEX [CPK] ON  [Burial_PDF] ([Location], [ExcavationYear], [BurialNumber], [BoxID]);