CREATE TABLE [Burial ] (
  [Location] nvarchar(13),
  [ExcavationYear] smallint,
  [BurialNumber] smallint,
  [HillDesignation] varchar(10),
  [TombNumber] smallint,
  [HeadDirection] varchar(1),
  [WestToHead] float(53),
  [WestToFeet] float(53),
  [SouthToHead] float(53),
  [SouthToFeet] float(53),
  [Depth] numeric(4,2),
  [Length] numeric(4,2),
  [ExcavationDay] tinyint,
  [ExcavationMonth] tinyint,
  [BodyPreservationLevel] varchar(50),
  [WrappingLevel] varchar(70),
  [AdultSubadult] bit,
  [AgeGroup] lookup table,
  [EstimatedAgeAtDeath] Varchar(100),
  [Sex] varchar(1),
  [HairColor] varchar(1),
  [HairDescription] Varchar(100),
  [HasSamples] bit,
  [HasFaceBundle] bit,
  [HasGraveGoods] bit,
  [GraveGoodsDescription] nvarchar(2000),
  [HasPhotos] bit,
  [BurialNotes] nvarchar(2000),
  [BodyExaminationDate] Date,
  [BodyPreservationIndex] tinyint,
  [BodyObservations] nvarchar(1000),
  [RobustCrania] nvarchar(6),
  [SupraorbitalRidgesCrania] nvarchar(6),
  [OrbitEdgeCrania] nvarchar(6),
  [ParietalBossingCrania] nvarchar(6),
  [GonionCrania] nvarchar(7),
  [NuchalCrestCrania] nvarchar(7),
  [ZygomaticCrestCrania] nvarchar(7),
  [SphenoOccipitalSynchondrosisCrania] nvarchar(10),
  [LamboidSutureCrania] nvarchar(10),
  [SquamousSutureCrania] nvarchar(10),
  [ToothAttrition] tinyint,
  [ToothEruptionDescription] nvarchar(200),
  [ToothEruptionAgeEstimate] nvarchar(60),
  [VentralArcPelvis] nvarchar(3),
  [SubpubicAnglePelvis] nvarchar(6),
  [SciaticNotchPelvis] nvarchar(6),
  [PubicBonePelvis] nvarchar(6),
  [PreauricularSulcusPelvis] bit,
  [MedialIPRamusPelvis] nvarchar(5),
  [DorsalPittingPelvis] nvarchar(6),
  [FemurEpiphysealUnion] nvarchar(10),
  [HumerusEpiphysealUnion] nvarchar(10),
  [FemurHeadDiameter] decimal(3,1),
  [HumerusHeadDiameter] decimal(3,1),
  [FemurLength] decimal(3,1),
  [HumerusLength] decimal(3,1),
  [TibiaLength] decimal(3,1),
  [EstimateStature] <type>,
  [EstimateSex] <type>,
  [Osteophytosis] Varchar (100),
  [CariesPeriodontalDisease] Varchar (100)
);

CREATE INDEX [CPK] ON  [Burial ] ([Location], [ExcavationYear], [BurialNumber]);