CREATE TABLE [Location] (
  [Location] nvarchar(13),
  [MetersNorthSouth] Smallint,
  [NorthOrSouth] varchar(1),
  [MetersEastWest] smallint,
  [EastOrWest] varchar(1),
  [Quadrant] nvarchar(2),
  [Notes] nvarchar(200),
  PRIMARY KEY ([Location])
);