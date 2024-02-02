CREATE TABLE [Crania] (
  [CraniaID] int,
  [Location] nvarchar(13),
  [ExcavationYear] smallint,
  [BurialNumber] smallint,
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
  [MetersNorthSouth] smallint,
  [NorthOrSouth] varchar(1),
  [MetersEastWest] smallint,
  [EastOrWest] varchar(1),
  [Quadrant] nvarchar(2),
  PRIMARY KEY ([CraniaID])
);

