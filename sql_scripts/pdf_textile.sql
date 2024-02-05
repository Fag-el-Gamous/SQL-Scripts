CREATE TABLE [dbo].[PDF_Textile] (
    [TextileID] INT    NOT NULL,
    [BoxID]     BIGINT NOT NULL,
    CONSTRAINT [PK_PDF_Textile] PRIMARY KEY CLUSTERED ([BoxID] ASC, [TextileID] ASC)
);

