USE [dztz]
GO

/****** Object:  Table [dbo].[LedgerNodeItem]    Script Date: 7/7/2020 9:35:23 AM ******/
DROP TABLE [dbo].[LedgerNodeItem]
GO

/****** Object:  Table [dbo].[LedgerNodeItem]    Script Date: 7/7/2020 9:35:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LedgerNodeItem](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[LedgerNodeId] [int] NOT NULL,
	[LedgerName] [nvarchar](250) NULL,
	[CreateUser] [nvarchar](250) NULL,
	[CreateTime] [nvarchar](250) NULL,
	[ModifyUser] [nvarchar](250) NULL,
	[ModifyTime] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[TemplateValue] [text] NULL,
 CONSTRAINT [PK_LedgerNodeItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

/****** Object:  Table [dbo].[ledgerNode]    Script Date: 7/7/2020 9:36:26 AM ******/
DROP TABLE [dbo].[ledgerNode]
GO

/****** Object:  Table [dbo].[ledgerNode]    Script Date: 7/7/2020 9:36:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ledgerNode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LedgerName] [nvarchar](250) NULL,
	[Station] [nvarchar](250) NULL,
	[AccessLevel] [int] NOT NULL,
	[CreateUser] [nvarchar](250) NULL,
	[CreateTime] [nvarchar](250) NULL,
	[ModifyUser] [nvarchar](250) NULL,
	[ModifyTime] [nvarchar](250) NULL,
	[Reserved1] [nvarchar](250) NULL,
	[Reserved2] [nvarchar](250) NULL,
	[Reserved3] [nvarchar](250) NULL,
	[TemplateContent] [text] NULL,
 CONSTRAINT [PK_ledgerNode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



