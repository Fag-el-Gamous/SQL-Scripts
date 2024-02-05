CREATE TABLE [dbo].[Artifact_Photo] (
    [ArtifactID]   VARCHAR (20) NOT NULL,
    [BoxID]        BIGINT       NOT NULL,
    [IsCoverPhoto] BIT          NULL,
    CONSTRAINT [PK_Artifact_Photo] PRIMARY KEY CLUSTERED ([ArtifactID] ASC, [BoxID] ASC)
);