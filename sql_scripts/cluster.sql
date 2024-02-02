CREATE TABLE [Cluster] (
  [Location] Type,
  [ClusterID] Type,
  [Field] Type
);

CREATE INDEX [CPK/CPK] ON  [Cluster] ([Location]);

CREATE INDEX [CPK] ON  [Cluster] ([ClusterID]);

CREATE INDEX [Key] ON  [Cluster] ([Field]);