CREATE TABLE [dbo].[Burial] (
    [Location]                           VARCHAR (20)    NOT NULL,
    [ExcavationYear]                     SMALLINT        NOT NULL,
    [BurialNumber]                       VARCHAR(50)        NOT NULL,
    [HillDesignation]                    VARCHAR (10)    NULL,
    [TombNumber]                         SMALLINT        NULL,
    [HeadDirection]                      VARCHAR (1)     NULL,
    [WestToHead]                         DECIMAL (3, 2)  NULL,
    [WestToFeet]                         DECIMAL (3, 2)  NULL,
    [SouthToHead]                        DECIMAL (3, 2)  NULL,
    [SouthToFeet]                        DECIMAL (3, 2)  NULL,
    [Depth]                              DECIMAL (4, 2)  NULL,
    [Length]                             DECIMAL (4, 2)  NULL,
    [ExcavationDay]                      TINYINT         NULL,
    [ExcavationMonth]                    TINYINT         NULL,
    [BodyPreservationLevel]              VARCHAR (50)    NULL,
    [WrappingLevel]                      VARCHAR (70)    NULL,
    [AdultSubadult]                      VARCHAR (5)     NULL,
    [AgeGroup]                           VARCHAR (10)    NULL,
    [EstimatedAgeAtDeath]                VARCHAR (100)   NULL,
    [Sex]                                VARCHAR (1)     NULL,
    [HairColor]                          VARCHAR (20)    NULL,
    [HairDescription]                    VARCHAR (100)   NULL,
    [HasSamples]                         BIT             NULL,
    [HasFaceBundle]                      BIT             NULL,
    [HasGraveGoods]                      BIT             NULL,
    [GraveGoodsDescription]              NVARCHAR (2000) NULL,
    [HasPhotos]                          BIT             NULL,
    [BurialNotes]                        NVARCHAR (2000) NULL,
    [BodyExaminationDate]                DATE            NULL,
    [BodyPreservationIndex]              TINYINT         NULL,
    [RobustCrania]                       NVARCHAR (10)   NULL,
    [SupraorbitalRidgesCrania]           NVARCHAR (10)   NULL,
    [OrbitEdgeCrania]                    NVARCHAR (10)   NULL,
    [ParietalBossingCrania]              NVARCHAR (10)   NULL,
    [GonionCrania]                       NVARCHAR (10)   NULL,
    [NuchalCrestCrania]                  NVARCHAR (10)   NULL,
    [ZygomaticCrestCrania]               NVARCHAR (10)   NULL,
    [SphenoOccipitalSynchondrosisCrania] NVARCHAR (10)   NULL,
    [LamboidSutureCrania]                NVARCHAR (10)   NULL,
    [SquamousSutureCrania]               NVARCHAR (10)   NULL,
    [ToothAttrition]                     VARCHAR (10)    NULL,
    [ToothEruptionDescription]           NVARCHAR (200)  NULL,
    [ToothEruptionAgeEstimate]           NVARCHAR (100)  NULL,
    [VentralArcPelvis]                   NVARCHAR (10)   NULL,
    [SubpubicAnglePelvis]                NVARCHAR (10)   NULL,
    [SciaticNotchPelvis]                 NVARCHAR (10)   NULL,
    [PubicBonePelvis]                    NVARCHAR (10)   NULL,
    [PreauricularSulcusPelvis]           BIT             NULL,
    [MedialIPRamusPelvis]                NVARCHAR (10)   NULL,
    [DorsalPittingPelvis]                NVARCHAR (10)   NULL,
    [FemurEpiphysealUnion]               NVARCHAR (10)   NULL,
    [HumerusEpiphysealUnion]             NVARCHAR (10)   NULL,
    [FemurHeadDiameter]                  DECIMAL (3, 1)  NULL,
    [HumerusHeadDiameter]                DECIMAL (3, 1)  NULL,
    [FemurLength]                        DECIMAL (3, 1)  NULL,
    [HumerusLength]                      DECIMAL (3, 1)  NULL,
    [TibiaLength]                        DECIMAL (3, 1)  NULL,
    [EstimateStature]                    DECIMAL (3, 2)  NULL,
    [EstimateSex]                        VARCHAR (5)     NULL,
    [Osteophytosis]                      VARCHAR (300)   NULL,
    [CariesPeriodontalDisease]           VARCHAR (300)   NULL,
    [BodyAnalysisNotes]                  VARCHAR (2000)  NULL,
    CONSTRAINT [PK_Burial] PRIMARY KEY CLUSTERED ([Location] ASC, [ExcavationYear] ASC, [BurialNumber] ASC),
    CONSTRAINT [FK_Burial_Location] FOREIGN KEY ([Location]) REFERENCES [dbo].[Location] ([Location])
);

