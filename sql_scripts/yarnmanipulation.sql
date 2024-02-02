CREATE TABLE [YarnManipulation] (
  [TextileID] int,
  [YarnManipulationID] int,
  [BurialNumber] smallint,
  [Component] <type>,
  [Material] <type>,
  [Manipulation] <type>,
  [PlyDirection] <type>,
  [TwistDirection] <type>,
  [SpinAngle] <type>,
  [ThreadCount] smallint,
  [Thickness] <type>
);

CREATE INDEX [CPK] ON  [YarnManipulation] ([TextileID], [YarnManipulationID]);