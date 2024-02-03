CREATE TABLE [Textile] (
  [TextileID] int,
  [BurialNumber] smallint FOREIGN KEY REFERENCES Burial(BurialNumber),
  [ExcavationYear] smallint FOREIGN KEY REFERENCES Burial(ExcavationYear),
  [Location] nvarchar(13) FOREIGN KEY REFERENCES Location(Location),
  FOREIGN KEY ([Location]) REFERENCES Burial(Location),
  [TextileReferenceNumber] varchar(6),
  [AnalysisType] <type>,
  [AnalysisDate] date,
  [SampleTakenDate] date,
  [Description] varchar(1000),
  [AnalysisBy] varchar(20),
  PRIMARY KEY ([TextileID])
);