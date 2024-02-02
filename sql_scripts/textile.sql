CREATE TABLE [Textile] (
  [TextileID] int,
  [BurialNumber] smallint,
  [ExcavationYear] <type>,
  [Location] nvarchar(13),
  [TextileReferenceNumber] varchar(6),
  [AnalysisType] <type>,
  [AnalysisDate] date,
  [SampleTakenDate] date,
  [Description] varchar(1000),
  [AnalysisBy] varchar(20),
  PRIMARY KEY ([TextileID])
);