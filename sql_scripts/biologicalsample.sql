CREATE TABLE [BiologicalSample] (
  [BiologicalSampleID ] int,
  [RackNumber] smallint,
  [BagNumber] smallint,
  [Location] Type,
  [BurialNumber] smallint,
  [BurialSampleNumber] smallint,
  [Date] smallint,
  [PreviouslySampled] varchar(50),
  [Notes] varchar(1000),
  [BiologicalSampleID ] varchar(50),
  [Location] nvarchar(13) FOREIGN KEY REFERENCES Burial(Location),
  [ExcavationYear] smallint FOREIGN KEY REFERENCES Burial(ExcavationYear),
  [BurialNumber] smallint FOREIGN KEY REFERENCES Burial(BurialNumber)
);