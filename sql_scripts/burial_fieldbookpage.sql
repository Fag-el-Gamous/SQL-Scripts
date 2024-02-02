CREATE TABLE [Burial_FieldbookPage] (
  [Location] <type>,
  [ExcavationYear] <type>,
  [BurialNumber] <type>,
  [FieldBookID] <type>,
  [PDFPageNumber] <type>,
  CONSTRAINT [FK_Burial_FieldbookPage.PDFPageNumber]
    FOREIGN KEY ([PDFPageNumber])
      REFERENCES [Burial ]([Location])
);

CREATE INDEX [CPK] ON  [Burial_FieldbookPage] ([Location], [ExcavationYear], [BurialNumber], [FieldBookID], [PDFPageNumber]);