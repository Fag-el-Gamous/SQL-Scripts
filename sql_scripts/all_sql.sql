CREATE TABLE [Photo] (
  [BoxID] bigint,
  [FileName] <type>,
  PRIMARY KEY ([BoxID])
);

CREATE TABLE [Burial_Photo] (
  [BoxID] bigint,
  [Location] <type>,
  [ExcavationYear] <type>,
  [BurialNumber] <type>,
  [IsCoverPhoto] bit,
  CONSTRAINT [FK_Burial_Photo.Location]
    FOREIGN KEY ([Location])
      REFERENCES [Photo]([FileName])
);

CREATE INDEX [CPK] ON  [Burial_Photo] ([BoxID], [Location], [ExcavationYear], [BurialNumber]);

CREATE TABLE [Burial ] (
  [Location] <type>,
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
  [WrappingLevel] varchar(50),
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

CREATE TABLE [Crania_Photo] (
  [CraniaID] int,
  [BoxID] bitint,
  [IsCoverPhoto] bit
);

CREATE INDEX [CPK] ON  [Crania_Photo] ([CraniaID], [BoxID]);

CREATE TABLE [TextileTwistDirection] (
  [TextileTwistDirection] varchar(1),
  PRIMARY KEY ([TextileTwistDirection])
);

CREATE TABLE [TextilePlyDirection] (
  [TextilePlyDirection] varchar(1),
  PRIMARY KEY ([TextilePlyDirection])
);

CREATE TABLE [Textile_TextileStructure] (
  [TextileID] int,
  [BurialNumber] <type>,
  [TextileStructure] varchar(23)
);

CREATE INDEX [CPK] ON  [Textile_TextileStructure] ([TextileID], [TextileStructure]);

CREATE TABLE [Excavation] (
  [Location] <type>,
  [Year] smallint,
  [SourceInformation] varchar(200),
  [Notes] varchar(1000)
);

CREATE TABLE [Artifact_Photo] (
  [ArtifactID] <type>,
  [BoxID] bigint,
  [IsCoverPhoto] bit
);

CREATE INDEX [CPK] ON  [Artifact_Photo] ([ArtifactID], [BoxID]);

CREATE TABLE [TextileManipulation] (
  [TextileManipulation] varchar(20),
  PRIMARY KEY ([TextileManipulation])
);

CREATE TABLE [Material_Artifact] (
  [ArtifactID] <type>,
  [Material] <type>
);

CREATE INDEX [CPK] ON  [Material_Artifact] ([ArtifactID], [Material]);

CREATE TABLE [TextileDimension] (
  [DimensionID] int,
  [DimensionType] varchar(14),
  PRIMARY KEY ([DimensionID])
);

CREATE TABLE [Textile_TextileDimension] (
  [TextileID] int,
  [DimensionID] int,
  [BurialNumber] <type>,
  [CentimetersLength] numeric(5,2),
  CONSTRAINT [FK_Textile_TextileDimension.DimensionID]
    FOREIGN KEY ([DimensionID])
      REFERENCES [TextileDimension]([DimensionID])
);

CREATE INDEX [CPK] ON  [Textile_TextileDimension] ([TextileID], [DimensionID]);

CREATE TABLE [Textile] (
  [TextileID] int,
  [BurialNumber] <type>,
  [ExcavationYear] <type>,
  [Location] <type>,
  [TextileReferenceNumber] varchar(6),
  [AnalysisType] lookup table,
  [AnalysisDate] date,
  [SampleTakenDate] date,
  [Description] varchar(1000),
  [AnalysisBy] <type>,
  PRIMARY KEY ([TextileID])
);

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

CREATE TABLE [Textile_TextileFunction] (
  [TextileID] int,
  [TextileFunction] varchar(19),
  [BurialNumber] <type>,
  [Locale] <type>
);

CREATE INDEX [CPK] ON  [Textile_TextileFunction] ([TextileID], [TextileFunction]);

CREATE TABLE [PDF] (
  [BoxID] bigint,
  [FileName] <type>,
  PRIMARY KEY ([BoxID])
);

CREATE TABLE [TextileColor] (
  [TextileColor] varchar(6),
  PRIMARY KEY ([TextileColor])
);

CREATE TABLE [C14] (
  [C14ID] int,
  [Contents] varchar(50),
  [LocationDescription] varchar(200),
  [Rack] smallint,
  [TubeNum] smallint,
  [Sizeml] smallint,
  [NumFoci] smallint,
  [C14SampleNum2017] smallint,
  [C14AgeBP] int,
  [C14CalendarDate] int,
  [CalendarDateMax95%] int,
  [CalendarDateMin95%] int,
  [Calibrated 95% Calendar Date SPAN] <type>,
  [Calibrated 95% Calendar Date AVG] <type>,
  [ResearchQuestions] varchar(500),
  [ResearchQuestionNum] tinyint,
  [Lab] varchar(100),
  [Notes] varchar(1000)
);

CREATE INDEX [Key] ON  [C14] ([C14ID], [Contents]);

CREATE TABLE [Artifact] (
  [ArtifactID] varchar(20),
  [Location] <type>,
  [Position] <type>,
  [MetersNorthSouth] <type>,
  [NorthOrSouth] <type>,
  [MetersEastWest] <type>,
  [EastOrWest] <type>,
  [BurialNumber] <type>,
  [ExcavationYear] <type>,
  [Title] varchar(100),
  [Description] varchar(MAX),
  [Material] varchar(20),
  [Condition] varchar(20),
  [Dimensions] varchar(20),
  [Notes] varchar(MAX),
  [ArtifactEra] varchar(30),
  [Provenance] varchar(30),
  [IsSurfaceFind] bit,
  [FindDay] tinyint,
  [FindMonth] intyint,
  [FindYear] smallint,
  [FindDate] <type>,
  [Finder] <type>,
  [ExcavatorNum] varchar(20),
  [KomAushimEntryDate] date,
  [StorageSite] varchar(50),
  [LocationAtSite] varchar(100)),
  [ConservationNotes] varchar(500),
  [HasPhotos] bit,
  [Colors?] <type>,
  PRIMARY KEY ([ArtifactID])
);

CREATE TABLE [TextileStructure] (
  [TextileStructure] varchar(23),
  PRIMARY KEY ([TextileStructure])
);

CREATE TABLE [Material] (
  [Material] Varchar(50),
  PRIMARY KEY ([Material])
);

CREATE TABLE [Burial_FieldbookPage] (
  [Location] <type>,
  [ExcavationYear] <type>,
  [BurialNumber] <type>,
  [FieldBookID] <type>,
  [PDFPageNumber] <type>,
  CONSTRAINT [FK_Burial_FieldbookPage.PDFPageNumber]
    FOREIGN KEY ([PDFPageNumber])
      REFERENCES [Burial ]([Location])
);

CREATE INDEX [CPK] ON  [Burial_FieldbookPage] ([Location], [ExcavationYear], [BurialNumber], [FieldBookID], [PDFPageNumber]);

CREATE TABLE [Cluster] (
  [Location] Type,
  [ClusterID] Type,
  [Field] Type
);

CREATE INDEX [CPK/CPK] ON  [Cluster] ([Location]);

CREATE INDEX [CPK] ON  [Cluster] ([ClusterID]);

CREATE INDEX [Key] ON  [Cluster] ([Field]);

CREATE TABLE [TextileFunction] (
  [TextileFunction] varchar(19),
  [TextileFunctionNotes] varchar(100),
  PRIMARY KEY ([TextileFunction])
);

CREATE TABLE [Person_Textile] (
  [PersonID] int,
  [TextileID] <type>
);

CREATE INDEX [CPK] ON  [Person_Textile] ([PersonID], [TextileID]);

CREATE TABLE [Textile_TextileDecoration] (
  [TextileID] int,
  [BurialNumber] <type>,
  [TextileDecoration] varchar(50)
);

CREATE INDEX [CPK] ON  [Textile_TextileDecoration] ([TextileID], [TextileDecoration]);

CREATE TABLE [TextileMaterial] (
  [TextileMaterial] varchar(7),
  PRIMARY KEY ([TextileMaterial])
);

CREATE TABLE [PDF_Textile] (
  [TextileID] int,
  [BoxID] bitint
);

CREATE INDEX [CPK] ON  [PDF_Textile] ([TextileID], [BoxID]);

CREATE TABLE [Person] (
  [PersonID] int,
  [FirstName] <type>,
  [LastName] <type>,
  [Notes] <type>,
  PRIMARY KEY ([PersonID])
);

CREATE TABLE [YarnManipulation] (
  [TextileID] int,
  [YarnManipulationID] int,
  [BurialNumber] <type>,
  [Component] <type>,
  [Material] <type>,
  [Manipulation] <type>,
  [PlyDirection] lookup,
  [TwistDirection] <type>,
  [SpinAngle] <type>,
  [ThreadCount] smallint,
  [Thickness] <type>
);

CREATE INDEX [CPK] ON  [YarnManipulation] ([TextileID], [YarnManipulationID]);

CREATE TABLE [TextileDecoration] (
  [TextileDecoration] varchar(15),
  PRIMARY KEY ([TextileDecoration])
);

CREATE TABLE [TextileSpinAngle] (
  [TextileSpinAngle] varchar(11),
  PRIMARY KEY ([TextileSpinAngle])
);

CREATE TABLE [Burial_PDF] (
  [Location] <type>,
  [ExcavationYear] smallint,
  [BurialNumber] smallint,
  [BoxID] bigint
);

CREATE INDEX [CPK] ON  [Burial_PDF] ([Location], [ExcavationYear], [BurialNumber], [BoxID]);

CREATE TABLE [Textile_TextileColor] (
  [TextileID] int,
  [BurialNumber] <type>,
  [TextileColor] varchar(6)
);

CREATE INDEX [CPK] ON  [Textile_TextileColor] ([TextileID], [TextileColor]);

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
  [Location] <type>,
  [ExcavationYear] <type>,
  [BurialNumber] <type>
);

CREATE TABLE [TextileThickness] (
  [TextileThickness] varchar(21),
  PRIMARY KEY ([TextileThickness])
);

CREATE TABLE [FieldBook] (
  [FieldBookID] <type>,
  [BoxID] bigint,
  [YearName] <type>,
  [Notes] <type>,
  PRIMARY KEY ([FieldBookID])
);

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

CREATE TABLE [Textile_Photo] (
  [BoxID] bigint,
  [TextileID] <type>,
  [IsCoverPhoto] bit
);

CREATE INDEX [CPK] ON  [Textile_Photo] ([BoxID], [TextileID]);

