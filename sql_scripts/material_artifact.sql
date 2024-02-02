CREATE TABLE [Material_Artifact] (
  [ArtifactID] varchar(20),
  [Material] varchar(50)
);

CREATE INDEX [CPK] ON  [Material_Artifact] ([ArtifactID], [Material]);