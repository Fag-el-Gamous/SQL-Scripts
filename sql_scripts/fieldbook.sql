CREATE TABLE [dbo].[FieldBook] (
    [FieldBookID] INT           NOT NULL,
    [BoxID]       BIGINT        NULL,
    [YearName]    TINYINT       NULL,
    [Notes]       VARCHAR (MAX) NULL,
    CONSTRAINT [PK_FieldBook] PRIMARY KEY CLUSTERED ([FieldBookID] ASC)
);

