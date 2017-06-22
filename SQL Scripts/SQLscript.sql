CREATE DATABASE [tinker_test]
GO
USE [tinker_test]
GO
/****** Object:  Table [dbo].[Children_Object]    Script Date: 6/19/2017 4:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Children_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](255) NOT NULL,
	[Last] [varchar](255) NOT NULL,
	[Age] [int] NOT NULL,
	[Grade] [int] NOT NULL,
	[Gender] [varchar](255) NULL,
	[Race] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip] [int] NULL,
	[Phone] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Childrens_Sessions]    Script Date: 6/19/2017 4:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Childrens_Sessions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[children_id] [int] NOT NULL,
	[session_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parent_Object]    Script Date: 6/19/2017 4:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](255) NULL,
	[Last] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[State] [varchar](255) NOT NULL,
	[Zip] [int] NOT NULL,
	[Phone] [varchar](255) NULL,
	[Email] [varchar](255) NOT NULL,
	[Code] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[parents_childrens]    Script Date: 6/19/2017 4:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parents_childrens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NOT NULL,
	[child_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Session_Object]    Script Date: 6/19/2017 4:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[children_id] [int] NULL,
	[session_id] [int] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [First]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Last]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Age]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Grade]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Gender]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Race]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Zip]
GO
ALTER TABLE [dbo].[Children_Object] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [First]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Last]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Zip]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Code]
GO
ALTER TABLE [dbo].[parents_childrens] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[parents_childrens] ADD  DEFAULT (NULL) FOR [child_id]
GO
