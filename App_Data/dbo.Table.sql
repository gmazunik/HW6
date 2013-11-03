CREATE TABLE [dbo].[Table]
(
	[songID] INT NOT NULL PRIMARY KEY, 
    [songTitle] NVARCHAR(50) NOT NULL, 
    [songKey] NVARCHAR(3) NULL, 
    [songTempo] INT NULL, 
    [songAuthors] NVARCHAR(200) NULL, 
    [songNotes] NVARCHAR(1000) NULL
)
