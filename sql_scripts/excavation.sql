CREATE TABLE [Excavation] (
  [Location] nvarchar(13) FOREIGN KEY REFERENCES Location(Location),
  [Year] smallint,
  [SourceInformation] varchar(200),
  [Notes] varchar(1000)
);