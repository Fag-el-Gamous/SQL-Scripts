CREATE TABLE [Artifact_Photo] (
  [ArtifactID] varchar(20),
  [BoxID] bigint,
  [IsCoverPhoto] bit
);

CREATE INDEX [CPK] ON  [Artifact_Photo] ([ArtifactID], [BoxID]);