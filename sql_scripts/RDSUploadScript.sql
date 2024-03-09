DROP DATABASE [byu-egypt-db]

/****** Object:  Database [byu-egypt-db]    Script Date: 3/6/2024 3:01:16 PM ******/
CREATE DATABASE [byu-egypt-db]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_S_Gen5_2', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO


ALTER DATABASE [byu-egypt-db] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [byu-egypt-db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [byu-egypt-db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [byu-egypt-db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [byu-egypt-db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [byu-egypt-db] SET ARITHABORT OFF 
GO
ALTER DATABASE [byu-egypt-db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [byu-egypt-db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [byu-egypt-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [byu-egypt-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [byu-egypt-db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [byu-egypt-db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [byu-egypt-db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [byu-egypt-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [byu-egypt-db] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [byu-egypt-db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [byu-egypt-db] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [byu-egypt-db] SET  MULTI_USER 
GO
--ALTER DATABASE [byu-egypt-db] SET ENCRYPTION ON
--GO
ALTER DATABASE [byu-egypt-db] SET QUERY_STORE = ON
GO
ALTER DATABASE [byu-egypt-db] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

use [byu-egypt-db]

CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

use [byu-egypt-db]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artifact](
	[ArtifactID] [varchar](20) NOT NULL,
	[Location] [varchar](20) NULL,
	[BurialNumber] [varchar](50) NULL,
	[ExcavationYear] [smallint] NULL,
	[Title] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
	[Material] [varchar](40) NULL,
	[Condition] [varchar](20) NULL,
	[Dimensions] [varchar](20) NULL,
	[Notes] [varchar](max) NULL,
	[ArtifactEra] [varchar](30) NULL,
	[Provenance] [varchar](30) NULL,
	[IsSurfaceFind] [bit] NULL,
	[FindDay] [tinyint] NULL,
	[FindMonth] [tinyint] NULL,
	[FindYear] [smallint] NULL,
	[Finder] [varchar](15) NULL,
	[ExcavatorNum] [varchar](20) NULL,
	[KomAushimEntryDate] [date] NULL,
	[StorageSite] [varchar](50) NULL,
	[LocationAtSite] [varchar](100) NULL,
	[ConservationNotes] [varchar](500) NULL,
	[HasPhotos] [bit] NULL,
	[PersonID] [int] NULL,
 CONSTRAINT [PK_Artifact] PRIMARY KEY CLUSTERED 
(
	[ArtifactID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArtifactPhoto]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArtifactPhoto](
	[ArtifactID] [varchar](20) NOT NULL,
	[ArtifactPhotoFilePath] [varchar] (450) NOT NULL,
	[ArtifactPhotoFileName] [varchar] (450) NOT NULL,
	[IsCoverPhoto] [bit] NULL,
 CONSTRAINT [PK_ArtifactPhoto] PRIMARY KEY CLUSTERED 
(
	[ArtifactPhotoFilePath] ASC,
	[ArtifactPhotoFileName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BiologicalSample]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BiologicalSample](
	[BiologicalSampleID ] [int] NOT NULL,
	[RackNumber] [smallint] NULL,
	[BagNumber] [smallint] NULL,
	[TubeNumber] [smallint] NULL,
	[SizeML] [float] NULL,
	[Location] [varchar](20) NULL,
	[BurialNumber] [varchar](50) NULL,
	[ExcavationYear] [smallint] NULL,
	[Contents] [varchar](500) NULL,
	[StorageNotes] [varchar](500) NULL,
	[Initials] [varchar](5) NULL,
 CONSTRAINT [PK_BiologicalSample] PRIMARY KEY CLUSTERED 
(
	[BiologicalSampleID ] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Burial]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Burial](
	[Location] [varchar](20) NOT NULL,
	[ExcavationYear] [smallint] NOT NULL,
	[BurialNumber] [varchar](50) NOT NULL,
	[HillDesignation] [varchar](10) NULL,
	[TombNumber] [smallint] NULL,
	[HeadDirection] [varchar](1) NULL,
	[WestToHead] [decimal](3, 2) NULL,
	[WestToFeet] [decimal](3, 2) NULL,
	[SouthToHead] [decimal](3, 2) NULL,
	[SouthToFeet] [decimal](3, 2) NULL,
	[Depth] [decimal](4, 2) NULL,
	[Length] [decimal](4, 2) NULL,
	[ExcavationDay] [tinyint] NULL,
	[ExcavationMonth] [tinyint] NULL,
	[BodyPreservationLevel] [varchar](50) NULL,
	[WrappingLevel] [varchar](70) NULL,
	[AdultSubadult] [varchar](5) NULL,
	[AgeGroup] [varchar](10) NULL,
	[EstimatedAgeAtDeath] [varchar](100) NULL,
	[Sex] [varchar](1) NULL,
	[HairColor] [varchar](20) NULL,
	[HairDescription] [varchar](100) NULL,
	[HasSamples] [bit] NULL,
	[HasFaceBundle] [bit] NULL,
	[HasGraveGoods] [bit] NULL,
	[GraveGoodsDescription] [nvarchar](2000) NULL,
	[HasPhotos] [bit] NULL,
	[BurialNotes] [nvarchar](2000) NULL,
	[BodyExaminationDate] [date] NULL,
	[BodyPreservationIndex] [tinyint] NULL,
	[RobustCrania] [nvarchar](10) NULL,
	[SupraorbitalRidgesCrania] [nvarchar](10) NULL,
	[OrbitEdgeCrania] [nvarchar](10) NULL,
	[ParietalBossingCrania] [nvarchar](10) NULL,
	[GonionCrania] [nvarchar](10) NULL,
	[NuchalCrestCrania] [nvarchar](10) NULL,
	[ZygomaticCrestCrania] [nvarchar](10) NULL,
	[SphenoOccipitalSynchondrosisCrania] [nvarchar](10) NULL,
	[LamboidSutureCrania] [nvarchar](10) NULL,
	[SquamousSutureCrania] [nvarchar](10) NULL,
	[ToothAttrition] [varchar](10) NULL,
	[ToothEruptionDescription] [nvarchar](200) NULL,
	[ToothEruptionAgeEstimate] [nvarchar](100) NULL,
	[VentralArcPelvis] [nvarchar](10) NULL,
	[SubpubicAnglePelvis] [nvarchar](10) NULL,
	[SciaticNotchPelvis] [nvarchar](10) NULL,
	[PubicBonePelvis] [nvarchar](10) NULL,
	[PreauricularSulcusPelvis] [bit] NULL,
	[MedialIPRamusPelvis] [nvarchar](10) NULL,
	[DorsalPittingPelvis] [nvarchar](10) NULL,
	[FemurEpiphysealUnion] [nvarchar](10) NULL,
	[HumerusEpiphysealUnion] [nvarchar](10) NULL,
	[FemurHeadDiameter] [decimal](3, 1) NULL,
	[HumerusHeadDiameter] [decimal](3, 1) NULL,
	[FemurLength] [decimal](3, 1) NULL,
	[HumerusLength] [decimal](3, 1) NULL,
	[TibiaLength] [decimal](3, 1) NULL,
	[EstimateStature] [decimal](3, 2) NULL,
	[EstimateSex] [varchar](5) NULL,
	[Osteophytosis] [varchar](300) NULL,
	[CariesPeriodontalDisease] [varchar](300) NULL,
	[BodyAnalysisNotes] [varchar](2000) NULL,
 CONSTRAINT [PK_Burial] PRIMARY KEY CLUSTERED 
(
	[Location] ASC,
	[ExcavationYear] ASC,
	[BurialNumber] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Burial_FieldbookPage]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Burial_FieldbookPage](
	[Location] [varchar](20) NOT NULL,
	[ExcavationYear] [smallint] NOT NULL,
	[BurialNumber] [varchar](50) NOT NULL,
	[FieldBookID] [int] NOT NULL,
	[PDFPageNumber] [smallint] NOT NULL,
	[BookPageNumber] [smallint] NOT NULL,
 CONSTRAINT [PK_Burial_FieldbookPage] PRIMARY KEY CLUSTERED 
(
	[Location] ASC,
	[ExcavationYear] ASC,
	[BurialNumber] ASC,
	[FieldBookID] ASC,
	[PDFPageNumber] ASC,
	[BookPageNumber] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BodyAnalysisSheet]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BodyAnalysisSheet](
	[Location] [varchar](20) NOT NULL,
	[ExcavationYear] [smallint] NOT NULL,
	[BurialNumber] [varchar](50) NOT NULL,
	[BodyAnalysisSheetFilePath] [varchar] (450) NOT NULL,
	[BodyAnalysisSheetFileName] [varchar] (450) NOT NULL,
 CONSTRAINT [PK_BodyAnalysisSheet] PRIMARY KEY CLUSTERED 
(
	[BodyAnalysisSheetFilePath] ASC,
	[BodyAnalysisSheetFileName] ASC

)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BurialPhoto]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BurialPhoto](
	[BurialPhotoFilePath] [varchar] (400) NOT NULL,
	[BurialPhotoFileName] [varchar] (400) NOT NULL,
	[Location] [varchar](20) NOT NULL,
	[ExcavationYear] [smallint] NOT NULL,
	[BurialNumber] [varchar](50) NOT NULL,
	[IsCoverPhoto] [bit] NULL,
 CONSTRAINT [PK_BurialPhoto] PRIMARY KEY CLUSTERED 
(
	[BurialPhotoFilePath] ASC,
	[BurialPhotoFileName] ASC,
    [Location] [varchar] ASC,
	[ExcavationYear] ASC,
	[BurialNumber] ASC 

)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[C14]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C14](
	[C14ID] [int] NOT NULL,
	[BiologicalSampleID] [int] NULL,
	[Contents] [varchar](255) NULL,
	[LocationDescription] [varchar](255) NULL,
	[Rack] [int] NULL,
	[TubeNum] [int] NULL,
	[Sizeml] [float] NULL,
	[NumFoci] [int] NULL,
	[C14SampleNum2017] [int] NULL,
	[AgeBP] [float] NULL,
	[CalendarDate] [int] NULL,
	[CalendarDateMax95] [float] NULL,
	[CalendarDateMin95] [float] NULL,
	[ResearchQuestions] [text] NULL,
	[ResearchQuestionsNum] [int] NULL,
	[Labs] [varchar](255) NULL,
	[Notes] [varchar](255) NULL,
 CONSTRAINT [PK_C14] PRIMARY KEY CLUSTERED 
(
	[C14ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO  
/****** Object:  Table [dbo].[Cranium]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cranium](
	[CraniaID] [int] NOT NULL,
	[Location] [varchar](20) NULL,
	[ExcavationYear] [smallint] NULL,
	[BurialNumber] [varchar](50) NULL,
	[MaxCraniaLength] [decimal](5, 2) NULL,
	[MaxCraniaBreadth] [decimal](5, 2) NULL,
	[BasionBregmaHeight] [decimal](5, 2) NULL,
	[BasionNasionLength] [decimal](5, 2) NULL,
	[BasionProsthionLength] [decimal](5, 2) NULL,
	[BizygomaticDiameter] [decimal](5, 2) NULL,
	[NasionProsthionHeight] [decimal](5, 2) NULL,
	[MaxNasalBreadth] [decimal](5, 2) NULL,
	[InterorbitalBreadth] [decimal](5, 2) NULL,
	[Sex] [varchar](1) NULL,
	[CalculatedSex] [varchar](1) NULL,
	[SexMatch] [bit] NULL,
	[CalcMaxCraniaLength] [decimal](5, 2) NULL,
	[CalcBasionNasion] [decimal](5, 2) NULL,
	[CalcBasionProsthion] [decimal](5, 2) NULL,
	[CalcBizygomaticDiameter] [decimal](5, 2) NULL,
	[CalcNasionProsthionHeight] [decimal](5, 2) NULL,
	[CraniaCalcSum] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CraniaID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CraniumPhoto]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CraniumPhoto](
	[CraniaID] [int] NOT NULL,
	[CraniumPhotoFilePath] [varchar] (450) NOT NULL,
	[CraniumPhotoFileName] [varchar] (450) NOT NULL,
	[IsCoverPhoto] [bit] NULL,
 CONSTRAINT [PK_CraniumPhoto] PRIMARY KEY CLUSTERED 
(
	[CraniumPhotoFilePath] ASC,
	[CraniumPhotoFileName] ASC

)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excavation]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excavation](
	[Location] [varchar](20) NOT NULL,
	[Year] [smallint] NOT NULL,
	[SourceInformation] [varchar](200) NOT NULL,
	[Notes] [varchar](1000) NULL,
 CONSTRAINT [PK_Excavation] PRIMARY KEY CLUSTERED 
(
	[Location] ASC,
	[Year] ASC,
	[SourceInformation] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldBook]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldBook](
    [FieldBookID] [int] NOT NULL,
	[FieldBookFilePath] [varchar] (450) NOT NULL,
	[FieldBookFileName] [varchar] (450) NOT NULL,
	[YearName] [varchar](5) NULL,
	[Notes] [varchar](max) NULL,
 CONSTRAINT [PK_FieldBook] PRIMARY KEY CLUSTERED 
(
	[FieldBookID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Location] [varchar](20) NOT NULL,
	[MetersNorthSouth] [smallint] NULL,
	[NorthOrSouth] [varchar](1) NULL,
	[MetersEastWest] [smallint] NULL,
	[EastOrWest] [varchar](1) NULL,
	[Quadrant] [nvarchar](2) NULL,
	[Notes] [nvarchar](200) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Location] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Material] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Material] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_Artifact]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_Artifact](
	[ArtifactID] [varchar](20) NOT NULL,
	[Material] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Material_Artifact] PRIMARY KEY CLUSTERED 
(
	[ArtifactID] ASC,
	[Material] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TextileAnalysisSheet]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileAnalysisSheet](
	[TextileID] [int] NOT NULL,
	[TextileAnalysisSheetFilePath] [varchar] (450) NOT NULL,
	[TextileAnalysisSheetFileName] [varchar] (450) NOT NULL,

 CONSTRAINT [PK_TextileAnalysisSheet] PRIMARY KEY CLUSTERED 
(
	[TextileAnalysisSheetFilePath] ASC,
	[TextileAnalysisSheetFileName] ASC

)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Notes] [varchar](500) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person_Textile]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person_Textile](
	[PersonID] [int] NOT NULL,
	[TextileID] [int] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Textile]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textile](
	[TextileID] [int] NOT NULL,
	[ExcavationYear] [smallint] NULL,
	[Location] [varchar](20) NULL,
	[BurialNumber] [varchar](50) NULL,
	[TextileReferenceNumber] [varchar](20) NULL,
	[AnalysisType] [varchar](20) NULL,
	[AnalysisDate] [date] NULL,
	[SampleTakenDate] [date] NULL,
	[Description] [varchar](2000) NULL,
	[AnalysisBy] [varchar](20) NULL,
 CONSTRAINT [PK_Textile] PRIMARY KEY CLUSTERED 
(
	[TextileID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextilePhoto]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextilePhoto](
	[TextilePhotoFilePath] [varchar] (450) NOT NULL,
	[TextilePhotoFileName] [varchar] (450) NOT NULL,
	[TextileID] [int] NOT NULL,
	[IsCoverPhoto] [bit] NULL,
 CONSTRAINT [PK_TextilePhoto] PRIMARY KEY CLUSTERED 
(
	[TextilePhotoFilePath] ASC,
	[TextilePhotoFileName] ASC

)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Textile_TextileColor]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textile_TextileColor](
	[TextileID] [int] NOT NULL,
	[TextileColor] [varchar](6) NOT NULL,
 CONSTRAINT [PK_Textile_TextileColor] PRIMARY KEY CLUSTERED 
(
	[TextileID] ASC,
	[TextileColor] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Textile_TextileDecoration]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textile_TextileDecoration](
	[TextileID] [int] NOT NULL,
	[TextileDecoration] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Textile_TextileDecoration] PRIMARY KEY CLUSTERED 
(
	[TextileID] ASC,
	[TextileDecoration] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Textile_TextileDimension]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textile_TextileDimension](
	[TextileID] [int] NOT NULL,
	[DimensionID] [int] NOT NULL,
	[CentimetersLength] [numeric](5, 2) NULL,
 CONSTRAINT [PK_Textile_TextileDimension] PRIMARY KEY CLUSTERED 
(
	[TextileID] ASC,
	[DimensionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Textile_TextileFunction]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textile_TextileFunction](
	[TextileID] [int] NOT NULL,
	[TextileFunction] [varchar](19) NOT NULL,
	[Locale] [varchar](20) NULL,
 CONSTRAINT [PK_Textile_TextileFunction] PRIMARY KEY CLUSTERED 
(
	[TextileFunction] ASC,
	[TextileID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Textile_TextileStructure]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textile_TextileStructure](
	[TextileID] [int] NOT NULL,
	[TextileStructure] [varchar](23) NOT NULL,
 CONSTRAINT [PK_Textile_TextileStructure] PRIMARY KEY CLUSTERED 
(
	[TextileStructure] ASC,
	[TextileID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileColor]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileColor](
	[TextileColor] [varchar](6) NOT NULL,
 CONSTRAINT [PK_TextileColor] PRIMARY KEY CLUSTERED 
(
	[TextileColor] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileDecoration]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileDecoration](
	[TextileDecoration] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TextileDecoration] PRIMARY KEY CLUSTERED 
(
	[TextileDecoration] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileDimension]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileDimension](
	[DimensionID] [int] NOT NULL,
	[DimensionType] [varchar](14) NULL,
 CONSTRAINT [PK_TextileDimension] PRIMARY KEY CLUSTERED 
(
	[DimensionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileFunction]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileFunction](
	[TextileFunction] [varchar](19) NOT NULL,
	[TextileFunctionNotes] [varchar](100) NULL,
 CONSTRAINT [PK_TextileFunction] PRIMARY KEY CLUSTERED 
(
	[TextileFunction] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileManipulation]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileManipulation](
	[TextileManipulation] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TextileManipulation] PRIMARY KEY CLUSTERED 
(
	[TextileManipulation] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileMaterial]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileMaterial](
	[TextileMaterial] [varchar](7) NOT NULL,
 CONSTRAINT [PK_TextileMaterial] PRIMARY KEY CLUSTERED 
(
	[TextileMaterial] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextilePlyDirection]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextilePlyDirection](
	[TextilePlyDirection] [varchar](1) NOT NULL,
 CONSTRAINT [PK_TextilePlyDirection] PRIMARY KEY CLUSTERED 
(
	[TextilePlyDirection] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileSpinAngle]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileSpinAngle](
	[TextileSpinAngle] [varchar](11) NOT NULL,
 CONSTRAINT [PK_TextileSpinAngle] PRIMARY KEY CLUSTERED 
(
	[TextileSpinAngle] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileStructure]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileStructure](
	[TextileStructure] [varchar](23) NOT NULL,
 CONSTRAINT [PK_TextileStructure] PRIMARY KEY CLUSTERED 
(
	[TextileStructure] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileThickness]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileThickness](
	[TextileThickness] [varchar](21) NOT NULL,
 CONSTRAINT [PK_TextileThickness] PRIMARY KEY CLUSTERED 
(
	[TextileThickness] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextileTwistDirection]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextileTwistDirection](
	[TextileTwistDirection] [varchar](1) NOT NULL,
 CONSTRAINT [PK_TextileTwistDirection] PRIMARY KEY CLUSTERED 
(
	[TextileTwistDirection] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YarnManipulation]    Script Date: 3/6/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YarnManipulation](
	[TextileID] [int] NOT NULL,
	[YarnManipulationID] [int] NOT NULL,
	[Component] [varchar](10) NULL,
	[Material] [varchar](7) NULL,
	[Manipulation] [varchar](20) NULL,
	[PlyDirection] [varchar](1) NULL,
	[TwistDirection] [varchar](1) NULL,
	[SpinAngle] [varchar](11) NULL,
	[ThreadCount] [smallint] NULL,
	[Thickness] [varchar](21) NULL,
 CONSTRAINT [PK_YarnManipulation] PRIMARY KEY CLUSTERED 
(
	[YarnManipulationID] ASC,
	[TextileID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

use [byu-egypt-db]

ALTER TABLE [dbo].[Artifact]  WITH NOCHECK ADD  CONSTRAINT [FK_Artifact_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[Artifact] CHECK CONSTRAINT [FK_Artifact_Burial]
GO
ALTER TABLE [dbo].[Artifact]  WITH NOCHECK ADD  CONSTRAINT [FK_Artifact_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[Location] ([Location])
GO
ALTER TABLE [dbo].[Artifact] CHECK CONSTRAINT [FK_Artifact_Location]
GO
ALTER TABLE [dbo].[Artifact]  WITH NOCHECK ADD  CONSTRAINT [FK_Artifact_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Artifact] CHECK CONSTRAINT [FK_Artifact_Person]
GO
ALTER TABLE [dbo].[ArtifactPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ArtifactPhoto_Artifact] FOREIGN KEY([ArtifactID])
REFERENCES [dbo].[Artifact] ([ArtifactID])
GO
ALTER TABLE [dbo].[ArtifactPhoto] CHECK CONSTRAINT [FK_ArtifactPhoto_Artifact]
GO
ALTER TABLE [dbo].[BiologicalSample]  WITH NOCHECK ADD  CONSTRAINT [FK_BiologicalSample_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[BiologicalSample] CHECK CONSTRAINT [FK_BiologicalSample_Burial]
GO
ALTER TABLE [dbo].[BiologicalSample]  WITH NOCHECK ADD  CONSTRAINT [FK_BiologicalSample_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[Location] ([Location])
GO
ALTER TABLE [dbo].[BiologicalSample] CHECK CONSTRAINT [FK_BiologicalSample_Location]
GO
ALTER TABLE [dbo].[Burial]  WITH NOCHECK ADD  CONSTRAINT [FK_Burial_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[Location] ([Location])
GO
ALTER TABLE [dbo].[Burial] CHECK CONSTRAINT [FK_Burial_Location]
GO
ALTER TABLE [dbo].[Burial_FieldbookPage]  WITH NOCHECK ADD  CONSTRAINT [FK_Burial_Fieldbook_Page_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[Burial_FieldbookPage] CHECK CONSTRAINT [FK_Burial_Fieldbook_Page_Burial]
GO
ALTER TABLE [dbo].[Burial_FieldbookPage]  WITH NOCHECK ADD  CONSTRAINT [FK_Burial_Fieldbook_Page_FieldBook] FOREIGN KEY([FieldBookID])
REFERENCES [dbo].[FieldBook] ([FieldBookID])
GO
ALTER TABLE [dbo].[Burial_FieldbookPage] CHECK CONSTRAINT [FK_Burial_Fieldbook_Page_FieldBook]
GO
ALTER TABLE [dbo].[BodyAnalysisSheet]  WITH CHECK ADD  CONSTRAINT [FK_BodyAnalysisSheet_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[BodyAnalysisSheet] CHECK CONSTRAINT [FK_BodyAnalysisSheet_Burial]
GO
ALTER TABLE [dbo].[BurialPhoto]  WITH CHECK ADD  CONSTRAINT [FK_BurialPhoto_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[BurialPhoto] CHECK CONSTRAINT [FK_BurialPhoto_Burial]
GO
ALTER TABLE [dbo].[C14]  WITH NOCHECK ADD  CONSTRAINT [FK_C14_BioSample] FOREIGN KEY([BiologicalSampleID])
REFERENCES [dbo].[BiologicalSample] ([BiologicalSampleID ])
GO
ALTER TABLE [dbo].[C14] CHECK CONSTRAINT [FK_C14_BioSample]
GO
ALTER TABLE [dbo].[Cranium]  WITH NOCHECK ADD  CONSTRAINT [FK_Cranium_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[Cranium] CHECK CONSTRAINT [FK_Cranium_Burial]
GO
ALTER TABLE [dbo].[CraniumPhoto]  WITH CHECK ADD  CONSTRAINT [FK_CraniumPhoto_Cranium] FOREIGN KEY([CraniaID])
REFERENCES [dbo].[Cranium] ([CraniaID])
GO
ALTER TABLE [dbo].[CraniumPhoto] CHECK CONSTRAINT [FK_CraniumPhoto_Cranium]
GO
ALTER TABLE [dbo].[Excavation]  WITH CHECK ADD  CONSTRAINT [FK_Excavation_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[Location] ([Location])
GO
ALTER TABLE [dbo].[Excavation] CHECK CONSTRAINT [FK_Excavation_Location]
GO
ALTER TABLE [dbo].[Material_Artifact]  WITH CHECK ADD  CONSTRAINT [FK_Material_Artifact_Artifact] FOREIGN KEY([ArtifactID])
REFERENCES [dbo].[Artifact] ([ArtifactID])
GO
ALTER TABLE [dbo].[Material_Artifact] CHECK CONSTRAINT [FK_Material_Artifact_Artifact]
GO
ALTER TABLE [dbo].[Material_Artifact]  WITH CHECK ADD  CONSTRAINT [FK_Material_Artifact_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Material] ([Material])
GO
ALTER TABLE [dbo].[Material_Artifact] CHECK CONSTRAINT [FK_Material_Artifact_Material]
GO
ALTER TABLE [dbo].[TextileAnalysisSheet]  WITH CHECK ADD  CONSTRAINT [FK_TextileAnalysisSheet_Textile] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[TextileAnalysisSheet] CHECK CONSTRAINT [FK_TextileAnalysisSheet_Textile]
GO
ALTER TABLE [dbo].[Person_Textile]  WITH NOCHECK ADD  CONSTRAINT [FK_Person_Textile_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Person_Textile] CHECK CONSTRAINT [FK_Person_Textile_Person]
GO
ALTER TABLE [dbo].[Person_Textile]  WITH NOCHECK ADD  CONSTRAINT [FK_Person_Textile_Textile] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[Person_Textile] CHECK CONSTRAINT [FK_Person_Textile_Textile]
GO
ALTER TABLE [dbo].[Textile]  WITH NOCHECK ADD  CONSTRAINT [FK_Textile_Burial] FOREIGN KEY([Location], [ExcavationYear], [BurialNumber])
REFERENCES [dbo].[Burial] ([Location], [ExcavationYear], [BurialNumber])
GO
ALTER TABLE [dbo].[Textile] CHECK CONSTRAINT [FK_Textile_Burial]
GO
ALTER TABLE [dbo].[Textile]  WITH NOCHECK ADD  CONSTRAINT [FK_Textile_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[Location] ([Location])
GO
ALTER TABLE [dbo].[Textile] CHECK CONSTRAINT [FK_Textile_Location]
GO
ALTER TABLE [dbo].[TextilePhoto]  WITH CHECK ADD  CONSTRAINT [FK_TextilePhoto_Textile] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[TextilePhoto] CHECK CONSTRAINT [FK_TextilePhoto_Textile]
GO
ALTER TABLE [dbo].[Textile_TextileColor]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileColor] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[Textile_TextileColor] CHECK CONSTRAINT [FK_Textile_TextileColor]
GO
ALTER TABLE [dbo].[Textile_TextileColor]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileColor_TextileColor] FOREIGN KEY([TextileColor])
REFERENCES [dbo].[TextileColor] ([TextileColor])
GO
ALTER TABLE [dbo].[Textile_TextileColor] CHECK CONSTRAINT [FK_Textile_TextileColor_TextileColor]
GO
ALTER TABLE [dbo].[Textile_TextileDecoration]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileDecoration] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[Textile_TextileDecoration] CHECK CONSTRAINT [FK_Textile_TextileDecoration]
GO
ALTER TABLE [dbo].[Textile_TextileDecoration]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileDecoration_TextileDecoration] FOREIGN KEY([TextileDecoration])
REFERENCES [dbo].[TextileDecoration] ([TextileDecoration])
GO
ALTER TABLE [dbo].[Textile_TextileDecoration] CHECK CONSTRAINT [FK_Textile_TextileDecoration_TextileDecoration]
GO
ALTER TABLE [dbo].[Textile_TextileDimension]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileDimension_Textile] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[Textile_TextileDimension] CHECK CONSTRAINT [FK_Textile_TextileDimension_Textile]
GO
ALTER TABLE [dbo].[Textile_TextileDimension]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileDimension_TextileDimension] FOREIGN KEY([DimensionID])
REFERENCES [dbo].[TextileDimension] ([DimensionID])
GO
ALTER TABLE [dbo].[Textile_TextileDimension] CHECK CONSTRAINT [FK_Textile_TextileDimension_TextileDimension]
GO
ALTER TABLE [dbo].[Textile_TextileFunction]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileFunction] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[Textile_TextileFunction] CHECK CONSTRAINT [FK_Textile_TextileFunction]
GO
ALTER TABLE [dbo].[Textile_TextileFunction]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileFunction_TextileFunction] FOREIGN KEY([TextileFunction])
REFERENCES [dbo].[TextileFunction] ([TextileFunction])
GO
ALTER TABLE [dbo].[Textile_TextileFunction] CHECK CONSTRAINT [FK_Textile_TextileFunction_TextileFunction]
GO
ALTER TABLE [dbo].[Textile_TextileStructure]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileStructure] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[Textile_TextileStructure] CHECK CONSTRAINT [FK_Textile_TextileStructure]
GO
ALTER TABLE [dbo].[Textile_TextileStructure]  WITH CHECK ADD  CONSTRAINT [FK_Textile_TextileStructure_TextileStructure] FOREIGN KEY([TextileStructure])
REFERENCES [dbo].[TextileStructure] ([TextileStructure])
GO
ALTER TABLE [dbo].[Textile_TextileStructure] CHECK CONSTRAINT [FK_Textile_TextileStructure_TextileStructure]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_Textile] FOREIGN KEY([TextileID])
REFERENCES [dbo].[Textile] ([TextileID])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_Textile]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_TextileManipulation] FOREIGN KEY([Manipulation])
REFERENCES [dbo].[TextileManipulation] ([TextileManipulation])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_TextileManipulation]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_TextileMaterial] FOREIGN KEY([Material])
REFERENCES [dbo].[TextileMaterial] ([TextileMaterial])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_TextileMaterial]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_TextilePlyDirection] FOREIGN KEY([PlyDirection])
REFERENCES [dbo].[TextilePlyDirection] ([TextilePlyDirection])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_TextilePlyDirection]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_TextileSpinAngle] FOREIGN KEY([SpinAngle])
REFERENCES [dbo].[TextileSpinAngle] ([TextileSpinAngle])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_TextileSpinAngle]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_TextileThickness] FOREIGN KEY([Thickness])
REFERENCES [dbo].[TextileThickness] ([TextileThickness])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_TextileThickness]
GO
ALTER TABLE [dbo].[YarnManipulation]  WITH CHECK ADD  CONSTRAINT [FK_YarnManipulation_TextileTwistDirection] FOREIGN KEY([TwistDirection])
REFERENCES [dbo].[TextileTwistDirection] ([TextileTwistDirection])
GO
ALTER TABLE [dbo].[YarnManipulation] CHECK CONSTRAINT [FK_YarnManipulation_TextileTwistDirection]
GO
ALTER DATABASE [byu-egypt-db] SET  READ_WRITE 
GO

