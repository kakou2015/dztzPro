USE [dztz]
GO

/****** Object:  Table [dbo].[AccessLevel]    Script Date: 8/12/2020 5:59:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
UserId	bigint	NOT NULL IDENTITY(1,1),
LoginName	nvarchar(255)	NOT NULL,
UserName	nvarchar(255)	NOT NULL,
UserPassword	nvarchar(255)	NOT NULL,
MobilePhone	nvarchar(32),
Email	nvarchar(255),
Department	nvarchar(255)	NOT NULL,
Occupation	nvarchar(255)	NOT NULL,
Superior    bigint  NOT NULL,
AccessRight	bigint	NOT NULL,
Description	nvarchar(10),
CreateTime	datetime	NOT NULL,
LoginTime	datetime,
LastLoginTime	datetime,	
LoginCount	bigint	NOT NULL
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


