CREATE TABLE [dbo].[YarnManipulation] (
    [TextileID]          INT          NOT NULL,
    [YarnManipulationID] INT          NOT NULL,
    [BurialNumber]       SMALLINT     NULL,
    [Component]          VARCHAR (10) NULL,
    [Material]           VARCHAR (7)  NULL,
    [Manipulation]       VARCHAR (20) NULL,
    [PlyDirection]       VARCHAR (1)  NULL,
    [TwistDirection]     VARCHAR (1)  NULL,
    [SpinAngle]          VARCHAR (11) NULL,
    [ThreadCount]        SMALLINT     NULL,
    [Thickness]          VARCHAR (21) NULL,
    CONSTRAINT [PK_YarnManipulation] PRIMARY KEY CLUSTERED ([YarnManipulationID] ASC, [TextileID] ASC)
);

