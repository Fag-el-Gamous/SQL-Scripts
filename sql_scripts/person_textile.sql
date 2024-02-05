CREATE TABLE [dbo].[Person_Textile] (
    [PersonID]  INT NOT NULL,
    [TextileID] INT NOT NULL,
    CONSTRAINT [PK_Person_Textile] PRIMARY KEY CLUSTERED ([PersonID] ASC, [TextileID] ASC),
    CONSTRAINT [FK_Person_Textile_Person] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([PersonID]),
    CONSTRAINT [FK_Person_Textile_Textile] FOREIGN KEY ([TextileID]) REFERENCES [dbo].[Textile] ([TextileID])
);

