CREATE TABLE [Crania] (
  [CraniaID] int,
  [Location] nvarchar(13) FOREIGN KEY REFERENCES Burial(Location),
  [ExcavationYear] smallint FOREIGN KEY REFERENCES Burial(ExcavationYear),
  [BurialNumber] smallint FOREIGN KEY REFERENCES Burial(BurialNumber),
  [MaxCraniaLength] decimal(5,2),
  [MaxCraniaBreadth] decimal(5,2),
  [BasionBregmaHeight] decimal(5,2),
  [BasionNasionLength] decimal(5,2),
  [BasionProsthionLength] decimal(5,2),
  [BizygomaticDiameter] decimal(5,2),
  [NasionProsthionHeight] decimal(5,2),
  [MaxNasalBreadth] decimal(5,2),
  [InterorbitalBreadth] decimal(5,2),
  [Sex] varchar(1),
  [CalculatedSex] varchar(1),
  [SexMatch] boolean,
  [CalcMaxCraniaLength] decimal(5,2),
  [CalcBasionNasion] decimal(5,2),
  [CalcBasionProsthion] decimal(5,2),
  [CalcBizygomaticDiameter] decimal(5,2),
  [CalcNasionProsthionHeight] decimal(5,2),
  [CraniaCalcSum] decimal(5,2),
  PRIMARY KEY ([CraniaID])
);


