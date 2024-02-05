CREATE TABLE [dbo].[Cranium_Photo] (
    [CraniaID]     INT    NOT NULL,
    [BoxID]        BIGINT NOT NULL,
    [IsCoverPhoto] BIT    NULL,
    CONSTRAINT [PK_Cranium_Photo] PRIMARY KEY CLUSTERED ([CraniaID] ASC, [BoxID] ASC)
);

