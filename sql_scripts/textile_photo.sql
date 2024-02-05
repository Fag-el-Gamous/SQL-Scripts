CREATE TABLE [dbo].[Textile_Photo] (
    [BoxID]        BIGINT NOT NULL,
    [TextileID]    INT    NOT NULL,
    [IsCoverPhoto] BIT    NULL,
    CONSTRAINT [PK_Textile_Photo] PRIMARY KEY CLUSTERED ([BoxID] ASC, [TextileID] ASC)
);

