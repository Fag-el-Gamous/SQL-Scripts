CREATE TABLE [dbo].[Cranium] (
    [CraniaID]                  INT            NOT NULL,
    [Location]                  NVARCHAR (20)  NULL,
    [ExcavationYear]            SMALLINT       NULL,
    [BurialNumber]              SMALLINT       NULL,
    [MaxCraniaLength]           DECIMAL (5, 2) NULL,
    [MaxCraniaBreadth]          DECIMAL (5, 2) NULL,
    [BasionBregmaHeight]        DECIMAL (5, 2) NULL,
    [BasionNasionLength]        DECIMAL (5, 2) NULL,
    [BasionProsthionLength]     DECIMAL (5, 2) NULL,
    [BizygomaticDiameter]       DECIMAL (5, 2) NULL,
    [NasionProsthionHeight]     DECIMAL (5, 2) NULL,
    [MaxNasalBreadth]           DECIMAL (5, 2) NULL,
    [InterorbitalBreadth]       DECIMAL (5, 2) NULL,
    [Sex]                       VARCHAR (1)    NULL,
    [CalculatedSex]             VARCHAR (1)    NULL,
    [SexMatch]                  BIT            NULL,
    [CalcMaxCraniaLength]       DECIMAL (5, 2) NULL,
    [CalcBasionNasion]          DECIMAL (5, 2) NULL,
    [CalcBasionProsthion]       DECIMAL (5, 2) NULL,
    [CalcBizygomaticDiameter]   DECIMAL (5, 2) NULL,
    [CalcNasionProsthionHeight] DECIMAL (5, 2) NULL,
    [CraniaCalcSum]             DECIMAL (5, 2) NULL,
    PRIMARY KEY CLUSTERED ([CraniaID] ASC)
);
