--SQl for creating movies table

USE [TESTRDB]
GO

/****** Object:  Table [dbo].[Movies]    Script Date: 9/5/2021 8:43:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](max) NULL,
	[Year] [nvarchar](50) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--sql for creating movie viewers table
USE [TESTRDB]
GO

/****** Object:  Table [dbo].[MovieRatings]    Script Date: 9/5/2021 8:51:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MovieRatings](
	[MovieId] [int] NOT NULL,
	[MovieName] [varchar](max) NULL,
	[Rating] [int] NULL,
	[ViewerName] [varchar](50) NULL,
	[ViewerDescription] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

--Data inserting movie table sql statements
 insert into dbo.Movies values('The Shawshank Redemption', '1994')
 insert into dbo.Movies values('The Godfather', '1972')
 insert into dbo.Movies values('Schindler''s List', '1993')
 insert into dbo.Movies values('The Lord of the Rings: The Return of the King', '2003')
 insert into dbo.Movies values('Forrest Gump ', '1994')
 insert into dbo.Movies values('Inception', '2010')

 --Data inserting movieratings table sql statements
   insert into dbo.MovieRatings Values('1', 'The Shawshank Redemption', 5, 'Sam','Friend')
   insert into dbo.MovieRatings Values('2', 'The Godfather', 5, 'Jane','Family')
   insert into dbo.MovieRatings Values('3', 'Schindler''s List', 5, 'Jamie','Family')
   insert into dbo.MovieRatings Values('5', 'Forrest Gump', 4, 'Mike','Friend')
   insert into dbo.MovieRatings Values('4', 'The Lord of the Rings: The Return of the King', 3, 'Maria','Classmate')
   insert into dbo.MovieRatings Values('6', 'Inception', 2, 'Jane','Family')

