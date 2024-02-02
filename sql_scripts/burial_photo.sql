CREATE TABLE [Burial_Photo] (
  [BoxID] bigint,
  [Location] nvarchar(13),
  [ExcavationYear] smallint,
  [BurialNumber] smallint,
  [IsCoverPhoto] bit,
  CONSTRAINT [FK_Burial_Photo.Location]
    FOREIGN KEY ([Location])
      REFERENCES [Photo]([FileName])
);

CREATE INDEX [CPK] ON  [Burial_Photo] ([BoxID], [Location], [ExcavationYear], [BurialNumber]);