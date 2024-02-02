CREATE TABLE [Crania_Photo] (
  [CraniaID] int,
  [BoxID] bitint,
  [IsCoverPhoto] bit
);

CREATE INDEX [CPK] ON  [Crania_Photo] ([CraniaID], [BoxID]);