CREATE TABLE [C14] (
  [C14ID] int,
  [Contents] varchar(50),
  [LocationDescription] varchar(200),
  [Rack] smallint,
  [TubeNum] smallint,
  [Sizeml] smallint,
  [NumFoci] smallint,
  [C14SampleNum2017] smallint,
  [C14AgeBP] int,
  [C14CalendarDate] int,
  [CalendarDateMax95%] int,
  [CalendarDateMin95%] int,
  [Calibrated 95% Calendar Date SPAN] <type>,
  [Calibrated 95% Calendar Date AVG] <type>,
  [ResearchQuestions] varchar(500),
  [ResearchQuestionNum] tinyint,
  [Lab] varchar(100),
  [Notes] varchar(1000)
);

CREATE INDEX [Key] ON  [C14] ([C14ID], [Contents]);